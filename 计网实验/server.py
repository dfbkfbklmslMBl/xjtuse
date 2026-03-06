#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""
消息和照片传输应用的服务器功能模块
负责处理用户注册、连接请求、消息和照片传输
"""

import socket
import threading
import json
import logging
import sys
import time
from utils import get_local_ip, DEFAULT_TCP_PORT, DEFAULT_BUFFER_SIZE

# 设置日志
logging.basicConfig(level=logging.INFO, 
                    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s')
logger = logging.getLogger("SERVER")

# 全局变量
active_connections = {}  # 存储活动连接: {username: {socket, address, status}}
active_chats = {}  # 存储活动聊天: {user1_user2: True}
photo_chunks = {}  # 存储分块照片数据: {username_target_filename: {total_chunks, received_chunks, data_chunks[]}}

def handle_tcp_client(client_socket, address):
    """处理TCP客户端连接"""
    global active_connections, active_chats, photo_chunks
    logger.info(f"接收到来自 {address} 的TCP连接")
    client_name = None
    
    # 用于存储部分接收的数据
    buffer = b""
    
    try:
        while True:
            # 接收数据
            chunk = client_socket.recv(DEFAULT_BUFFER_SIZE)
            if not chunk:
                break
                
            # 将数据添加到缓冲区
            buffer += chunk
            
            # 尝试解析缓冲区中的所有完整JSON对象
            while buffer:
                # 尝试查找一个完整的JSON对象
                try:
                    # 尝试解析整个缓冲区
                    message = json.loads(buffer.decode('utf-8'))
                    # 如果成功，清空缓冲区并处理消息
                    buffer = b""
                    
                    # 处理消息
                    _process_message(message, client_socket, address, client_name)
                    # 更新client_name（如果需要）
                    if message.get('type') == 'register':
                        client_name = message.get('name')
                    break
                    
                except json.JSONDecodeError as e:
                    # 如果是因为数据不完整，等待更多数据
                    if "Expecting value" in str(e) or "Unterminated string" in str(e):
                        # 等待更多数据
                        logger.debug(f"等待更多数据: {str(e)}")
                        break
                    
                    # 如果有额外数据，尝试找到第一个完整的JSON对象
                    if "Extra data" in str(e):
                        logger.warning(f"收到多个JSON对象: {str(e)}")
                        try:
                            # 尝试找到第一个有效的JSON对象结束位置
                            i = 0
                            depth = 0
                            in_string = False
                            escape = False
                            
                            for i, char in enumerate(buffer.decode('utf-8')):
                                if escape:
                                    escape = False
                                    continue
                                    
                                if char == '\\':
                                    escape = True
                                    continue
                                    
                                if char == '"' and not escape:
                                    in_string = not in_string
                                    continue
                                    
                                if not in_string:
                                    if char == '{':
                                        depth += 1
                                    elif char == '}':
                                        depth -= 1
                                        if depth == 0:
                                            # 找到JSON对象的结束
                                            break
                            
                            if depth == 0 and i > 0:
                                # 提取第一个JSON对象
                                json_str = buffer.decode('utf-8')[:i+1]
                                message = json.loads(json_str)
                                
                                # 更新缓冲区，移除已处理的部分
                                buffer = buffer[i+1:]
                                
                                # 处理消息
                                _process_message(message, client_socket, address, client_name)
                                # 更新client_name（如果需要）
                                if message.get('type') == 'register':
                                    client_name = message.get('name')
                            else:
                                # 找不到有效的JSON对象，丢弃一个字符并重试
                                logger.warning("无法找到有效的JSON对象，丢弃部分数据")
                                buffer = buffer[1:]
                                
                        except Exception as parse_error:
                            logger.error(f"解析部分JSON数据时出错: {parse_error}")
                            # 丢弃一个字符并重试
                            buffer = buffer[1:]
                    else:
                        # 其他JSON解析错误，记录并丢弃数据
                        logger.error(f"JSON解析错误: {e}")
                        # 发送错误响应
                        error_response = {
                            'type': 'error',
                            'message': f'JSON解析错误: {str(e)}'
                        }
                        client_socket.send(json.dumps(error_response).encode('utf-8'))
                        buffer = b""  # 清空缓冲区
                        break
                except Exception as e:
                    logger.error(f"处理缓冲区数据时出错: {e}")
                    buffer = b""  # 清空缓冲区
                    break
            
    except Exception as e:
        logger.error(f"处理TCP客户端时出错: {e}")
    finally:
        # 清理连接
        client_socket.close()
        if client_name and client_name in active_connections:
            del active_connections[client_name]
            logger.info(f"用户 {client_name} 已断开连接")
            
            # 通知所有用户更新用户列表
            broadcast_user_list()

def _process_message(message, client_socket, address, client_name):
    """处理接收到的消息"""
    global active_connections, active_chats, photo_chunks
    
    msg_type = message.get('type')
    
    if msg_type == 'register':
        client_name = message.get('name')
        
        # 检查用户名是否已存在
        if client_name in active_connections:
            response = {'type': 'register_ack', 'status': 'error', 'message': '用户名已存在'}
            client_socket.sendall(json.dumps(response).encode('utf-8'))
            return
            
        active_connections[client_name] = {
            'socket': client_socket,
            'address': address,
            'status': 'online'
        }
        logger.info(f"用户 {client_name} 已注册")
        
        # 发送确认
        response = {'type': 'register_ack', 'status': 'success'}
        client_socket.sendall(json.dumps(response).encode('utf-8'))
        
        # 发送用户列表给所有用户
        broadcast_user_list()
        
    elif msg_type == 'get_user_list':
        # 发送用户列表给请求的客户端
        send_user_list(client_socket)
        
    elif msg_type == 'connect_request':
        target_name = message.get('target')
        sender_name = message.get('sender')
        
        if target_name in active_connections:
            # 转发连接请求
            target_socket = active_connections[target_name]['socket']
            target_socket.sendall(json.dumps(message).encode('utf-8'))
            logger.info(f"已转发 {sender_name} 的连接请求给 {target_name}")
        else:
            # 目标用户不在线
            response = {
                'type': 'connect_response',
                'status': 'offline',
                'target': sender_name,
                'message': f'用户 {target_name} 不在线'
            }
            client_socket.sendall(json.dumps(response).encode('utf-8'))
            
    elif msg_type == 'connect_response':
        target_name = message.get('target')
        status = message.get('status')
        responder = message.get('responder')
        
        if target_name in active_connections:
            # 转发连接响应
            target_socket = active_connections[target_name]['socket']
            target_socket.sendall(json.dumps(message).encode('utf-8'))
            
            # 如果接受了连接，建立聊天会话
            if status == 'accept':
                chat_id = _get_chat_id(target_name, responder)
                active_chats[chat_id] = True
                logger.info(f"已建立聊天会话: {chat_id}")
        
    elif msg_type == 'disconnect':
        target_name = message.get('target')
        sender_name = message.get('sender')
        
        # 移除聊天会话
        chat_id = _get_chat_id(sender_name, target_name)
        if chat_id in active_chats:
            del active_chats[chat_id]
            logger.info(f"已结束聊天会话: {chat_id}")
        
        # 通知目标用户
        if target_name in active_connections:
            target_socket = active_connections[target_name]['socket']
            target_socket.sendall(json.dumps(message).encode('utf-8'))
            
    elif msg_type == 'message':
        target_name = message.get('target')
        sender_name = message.get('sender')
        content = message.get('content')
        
        # 检查是否有活动的聊天会话
        chat_id = _get_chat_id(sender_name, target_name)
        if chat_id not in active_chats:
            response = {
                'type': 'error',
                'message': f'没有与 {target_name} 的活动聊天会话'
            }
            client_socket.sendall(json.dumps(response).encode('utf-8'))
            return
            
        if target_name in active_connections:
            # 转发消息
            target_socket = active_connections[target_name]['socket']
            target_socket.sendall(json.dumps(message).encode('utf-8'))
            logger.info(f"已转发 {sender_name} 的消息给 {target_name}")
        else:
            # 目标用户不在线
            response = {
                'type': 'error',
                'message': f'用户 {target_name} 不在线'
            }
            client_socket.sendall(json.dumps(response).encode('utf-8'))
            
    elif msg_type == 'photo_chunk':
        # 处理照片分块
        sender = message.get('sender')
        target = message.get('target')
        filename = message.get('filename')
        chunk_id = message.get('chunk_id')
        total_chunks = message.get('total_chunks')
        chunk_data = message.get('data')
        
        # 检查是否有活动的聊天会话
        chat_id = _get_chat_id(sender, target)
        if chat_id not in active_chats:
            response = {
                'type': 'error',
                'message': f'没有与 {target} 的活动聊天会话'
            }
            client_socket.sendall(json.dumps(response).encode('utf-8'))
            return
        
        # 生成照片ID
        photo_id = f"{sender}_{target}_{filename}"
        
        # 如果是第一个分块，初始化存储
        if photo_id not in photo_chunks:
            photo_chunks[photo_id] = {
                'total_chunks': total_chunks,
                'received_chunks': 0,
                'data_chunks': [None] * total_chunks
            }
            
        # 存储分块数据
        photo_chunks[photo_id]['data_chunks'][chunk_id] = chunk_data
        photo_chunks[photo_id]['received_chunks'] += 1
        
        # 检查是否接收完所有分块
        if photo_chunks[photo_id]['received_chunks'] == total_chunks:
            # 重组照片数据
            photo_data = ''.join(photo_chunks[photo_id]['data_chunks'])
            
            # 创建完整的照片消息
            photo_message = {
                'type': 'photo',
                'sender': sender,
                'target': target,
                'filename': filename,
                'data': photo_data
            }
            
            # 转发给目标用户
            if target in active_connections:
                target_socket = active_connections[target]['socket']
                target_socket.sendall(json.dumps(photo_message).encode('utf-8'))
                logger.info(f"已转发 {sender} 的照片给 {target}")
                
                # 发送确认给发送者
                confirm_message = {
                    'type': 'photo_sent',
                    'status': 'success',
                    'target': target,
                    'filename': filename
                }
                client_socket.sendall(json.dumps(confirm_message).encode('utf-8'))
            else:
                # 目标用户不在线
                error_message = {
                    'type': 'photo_sent',
                    'status': 'error',
                    'target': target,
                    'filename': filename,
                    'message': f'用户 {target} 不在线'
                }
                client_socket.sendall(json.dumps(error_message).encode('utf-8'))
                
            # 清理照片数据
            del photo_chunks[photo_id]

def _get_chat_id(user1, user2):
    """生成聊天会话ID（按字母顺序排序用户名）"""
    if user1 < user2:
        return f"{user1}_{user2}"
    else:
        return f"{user2}_{user1}"

def send_user_list(client_socket):
    """发送用户列表给客户端"""
    user_list = []
    
    for username, info in active_connections.items():
        user_list.append({
            'name': username,
            'status': info['status']
        })
    
    response = {
        'type': 'user_list',
        'users': user_list
    }
    
    client_socket.sendall(json.dumps(response).encode('utf-8'))

def broadcast_user_list():
    """广播用户列表给所有客户端"""
    user_list = []
    
    for username, info in active_connections.items():
        user_list.append({
            'name': username,
            'status': info['status']
        })
    
    response = {
        'type': 'user_list',
        'users': user_list
    }
    
    # 发送给所有连接的客户端
    for username, info in active_connections.items():
        try:
            info['socket'].sendall(json.dumps(response).encode('utf-8'))
        except Exception as e:
            logger.error(f"向 {username} 发送用户列表时出错: {e}")

def start_server():
    """启动TCP服务器"""
    # 创建TCP套接字
    tcp_server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    tcp_server.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    
    try:
        # 绑定到所有接口
        tcp_server.bind(('0.0.0.0', DEFAULT_TCP_PORT))
        tcp_server.listen(5)
        
        local_ip = get_local_ip()
        logger.info(f"TCP服务器已启动，监听 {local_ip}:{DEFAULT_TCP_PORT}")
        
        while True:
            client_sock, address = tcp_server.accept()
            client_thread = threading.Thread(
                target=handle_tcp_client,
                args=(client_sock, address),
                daemon=True
            )
            client_thread.start()
            
    except Exception as e:
        logger.error(f"启动TCP服务器时出错: {e}")
    finally:
        tcp_server.close()

if __name__ == "__main__":
    start_server() 