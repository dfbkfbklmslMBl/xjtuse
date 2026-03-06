#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""
消息和照片传输应用的客户端功能模块
负责连接、消息发送和照片传输
"""

import socket
import threading
import json
import logging
import time
import sys
import base64
import os
from utils import get_local_ip, DEFAULT_TCP_PORT, DEFAULT_BUFFER_SIZE

# 设置日志
logging.basicConfig(level=logging.INFO, 
                    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s')
logger = logging.getLogger("CLIENT")

class MessageClient:
    """消息和照片传输客户端类"""
    
    def __init__(self, username):
        """初始化客户端"""
        self.username = username
        self.tcp_socket = None
        self.server_ip = None
        self.connected = False
        self.chat_active = False
        self.current_partner = None
        self.receiver_thread = None
        self.user_list = []
        
        # 回调函数
        self.on_connect_request = None
        self.on_connect_response = None
        self.on_disconnect = None
        self.on_message_received = None
        self.on_photo_received = None
        self.on_user_list_updated = None
        self.on_error = None
        
    def set_callbacks(self, connect_request=None, connect_response=None, 
                     disconnect=None, message_received=None, photo_received=None,
                     user_list_updated=None, error=None):
        """设置各种回调函数"""
        self.on_connect_request = connect_request
        self.on_connect_response = connect_response
        self.on_disconnect = disconnect
        self.on_message_received = message_received
        self.on_photo_received = photo_received
        self.on_user_list_updated = user_list_updated
        self.on_error = error
        
    def connect_server(self, server_ip):
        """连接到服务器"""
        if self.connected:
            logger.warning("已经连接到服务器")
            return False
            
        try:
            self.server_ip = server_ip
            
            # TCP连接
            self.tcp_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            self.tcp_socket.connect((server_ip, DEFAULT_TCP_PORT))
            
            # 注册用户
            register_msg = {
                'type': 'register',
                'name': self.username
            }
            self.tcp_socket.send(json.dumps(register_msg).encode('utf-8'))
            
            # 接收响应
            response = json.loads(self.tcp_socket.recv(DEFAULT_BUFFER_SIZE).decode('utf-8'))
            if response.get('type') == 'register_ack' and response.get('status') == 'success':
                logger.info(f"成功连接到服务器 {server_ip}")
                self.connected = True
                
                # 启动接收线程
                self.receiver_thread = threading.Thread(target=self._receive_messages, daemon=True)
                self.receiver_thread.start()
                
                # 请求用户列表
                self.get_user_list()
                
                return True
            else:
                logger.error(f"注册失败: {response.get('message', '未知错误')}")
                self.tcp_socket.close()
                return False
                
        except Exception as e:
            logger.error(f"连接错误: {e}")
            if self.tcp_socket:
                self.tcp_socket.close()
            return False
            
    def disconnect_server(self):
        """断开与服务器的连接"""
        if not self.connected:
            return
            
        if self.chat_active and self.current_partner:
            self.disconnect_chat()
            
        self.connected = False
        
        if self.tcp_socket:
            self.tcp_socket.close()
            
        logger.info("已断开与服务器的连接")
        
    def get_user_list(self):
        """获取用户列表"""
        if not self.connected:
            logger.error("未连接到服务器")
            return False
            
        try:
            request = {
                'type': 'get_user_list'
            }
            self.tcp_socket.send(json.dumps(request).encode('utf-8'))
            logger.info("已请求用户列表")
            return True
        except Exception as e:
            logger.error(f"请求用户列表错误: {e}")
            return False
            
    def request_connect(self, target_user):
        """请求与目标用户建立连接"""
        if not self.connected:
            logger.error("未连接到服务器")
            return False
            
        if self.chat_active:
            logger.error("已有聊天进行中")
            return False
            
        try:
            connect_request = {
                'type': 'connect_request',
                'sender': self.username,
                'target': target_user
            }
            self.tcp_socket.send(json.dumps(connect_request).encode('utf-8'))
            logger.info(f"已发送连接请求给 {target_user}")
            return True
            
        except Exception as e:
            logger.error(f"发送连接请求错误: {e}")
            return False
            
    def respond_connect(self, sender, accept=True):
        """响应连接请求"""
        if not self.connected:
            logger.error("未连接到服务器")
            return False
            
        try:
            response = {
                'type': 'connect_response',
                'status': 'accept' if accept else 'reject',
                'target': sender,
                'responder': self.username
            }
            self.tcp_socket.send(json.dumps(response).encode('utf-8'))
            
            if accept:
                self.chat_active = True
                self.current_partner = sender
                logger.info(f"已接受 {sender} 的连接请求")
            else:
                logger.info(f"已拒绝 {sender} 的连接请求")
                
            return True
            
        except Exception as e:
            logger.error(f"响应连接请求错误: {e}")
            return False
            
    def disconnect_chat(self):
        """断开当前聊天"""
        if not self.connected:
            logger.error("未连接到服务器")
            return False
            
        if not self.chat_active or not self.current_partner:
            logger.warning("当前没有活动的聊天")
            return False
            
        try:
            disconnect_msg = {
                'type': 'disconnect',
                'sender': self.username,
                'target': self.current_partner
            }
            self.tcp_socket.send(json.dumps(disconnect_msg).encode('utf-8'))
            
            self.chat_active = False
            partner = self.current_partner
            self.current_partner = None
            
            logger.info(f"已断开与 {partner} 的聊天")
            return True
            
        except Exception as e:
            logger.error(f"断开聊天错误: {e}")
            return False
            
    def send_message(self, content):
        """发送消息给当前聊天对象"""
        if not self.connected:
            logger.error("未连接到服务器")
            return False
            
        if not self.chat_active or not self.current_partner:
            logger.error("没有活动的聊天会话")
            return False
            
        try:
            message = {
                'type': 'message',
                'sender': self.username,
                'target': self.current_partner,
                'content': content,
                'timestamp': time.strftime("%Y-%m-%d %H:%M:%S")
            }
            self.tcp_socket.send(json.dumps(message).encode('utf-8'))
            logger.info(f"已发送消息给 {self.current_partner}")
            return True
            
        except Exception as e:
            logger.error(f"发送消息错误: {e}")
            return False
            
    def send_photo(self, photo_path):
        """发送照片给当前聊天对象"""
        if not self.connected:
            logger.error("未连接到服务器")
            return False, "未连接到服务器"
            
        if not self.chat_active or not self.current_partner:
            logger.error("没有活动的聊天会话")
            return False, "没有活动的聊天会话"
            
        if not os.path.exists(photo_path):
            logger.error(f"照片文件不存在: {photo_path}")
            return False, "照片文件不存在"
            
        try:
            # 获取文件名
            filename = os.path.basename(photo_path)
            
            # 读取照片文件
            with open(photo_path, 'rb') as f:
                photo_data = f.read()
                
            # Base64编码
            encoded_data = base64.b64encode(photo_data).decode('utf-8')
            
            # 分块发送（每块最大约64KB）
            chunk_size = 64 * 1024
            total_chunks = (len(encoded_data) + chunk_size - 1) // chunk_size
            
            logger.info(f"开始发送照片: {filename}, 大小: {len(encoded_data)}, 分块数: {total_chunks}")
            
            for i in range(total_chunks):
                start_pos = i * chunk_size
                end_pos = min(start_pos + chunk_size, len(encoded_data))
                chunk_data = encoded_data[start_pos:end_pos]
                
                chunk_message = {
                    'type': 'photo_chunk',
                    'sender': self.username,
                    'target': self.current_partner,
                    'filename': filename,
                    'chunk_id': i,
                    'total_chunks': total_chunks,
                    'data': chunk_data
                }
                
                self.tcp_socket.send(json.dumps(chunk_message).encode('utf-8'))
                logger.info(f"已发送照片块 {i+1}/{total_chunks}")
                
                # 短暂延迟，避免网络拥塞
                time.sleep(0.01)
                
            logger.info(f"照片发送完成: {filename}")
            return True, "照片发送成功"
            
        except Exception as e:
            logger.error(f"发送照片错误: {e}")
            return False, f"发送照片错误: {str(e)}"
            
    def _receive_messages(self):
        """接收消息的线程函数"""
        buffer = b""
        
        while self.connected:
            try:
                # 接收数据
                chunk = self.tcp_socket.recv(DEFAULT_BUFFER_SIZE)
                if not chunk:
                    logger.info("服务器连接已关闭")
                    break
                    
                # 将数据添加到缓冲区
                buffer += chunk
                
                # 尝试解析缓冲区中的所有完整JSON对象
                while buffer:
                    try:
                        # 尝试解析整个缓冲区
                        message = json.loads(buffer.decode('utf-8'))
                        # 如果成功，清空缓冲区并处理消息
                        buffer = b""
                        self._process_message(message)
                        break
                        
                    except json.JSONDecodeError as e:
                        # 如果是因为数据不完整，等待更多数据
                        if "Expecting value" in str(e) or "Unterminated string" in str(e):
                            break
                        
                        # 如果有额外数据，尝试找到第一个完整的JSON对象
                        if "Extra data" in str(e):
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
                                    self._process_message(message)
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
                            buffer = b""
                            break
                    except Exception as e:
                        logger.error(f"处理缓冲区数据时出错: {e}")
                        buffer = b""
                        break
                        
            except ConnectionResetError:
                logger.error("连接被重置")
                break
            except ConnectionAbortedError:
                logger.error("连接被中止")
                break
            except Exception as e:
                logger.error(f"接收消息时出错: {e}")
                # 短暂延迟，避免CPU占用过高
                time.sleep(0.1)
                
        # 连接已断开
        self.connected = False
        logger.info("接收线程已结束")
        
    def _process_message(self, message):
        """处理接收到的消息"""
        msg_type = message.get('type')
        
        if msg_type == 'user_list':
            # 更新用户列表
            self.user_list = message.get('users', [])
            logger.info(f"收到用户列表，共 {len(self.user_list)} 个用户")
            
            if self.on_user_list_updated:
                self.on_user_list_updated(self.user_list)
                
        elif msg_type == 'connect_request':
            # 收到连接请求
            sender = message.get('sender')
            logger.info(f"收到来自 {sender} 的连接请求")
            
            if self.on_connect_request:
                self.on_connect_request(sender)
                
        elif msg_type == 'connect_response':
            # 收到连接响应
            status = message.get('status')
            responder = message.get('responder')
            
            if status == 'accept':
                self.chat_active = True
                self.current_partner = responder
                logger.info(f"{responder} 已接受连接请求")
            else:
                logger.info(f"{responder} 已拒绝连接请求")
                
            if self.on_connect_response:
                self.on_connect_response(responder, status == 'accept')
                
        elif msg_type == 'disconnect':
            # 对方断开连接
            sender = message.get('sender')
            
            if sender == self.current_partner:
                self.chat_active = False
                self.current_partner = None
                logger.info(f"{sender} 已断开连接")
                
                if self.on_disconnect:
                    self.on_disconnect(sender)
                    
        elif msg_type == 'message':
            # 收到消息
            sender = message.get('sender')
            content = message.get('content')
            timestamp = message.get('timestamp', time.strftime("%Y-%m-%d %H:%M:%S"))
            
            logger.info(f"收到来自 {sender} 的消息")
            
            if self.on_message_received:
                self.on_message_received(sender, content, timestamp)
                
        elif msg_type == 'photo':
            # 收到照片
            sender = message.get('sender')
            filename = message.get('filename')
            photo_data = message.get('data')
            
            logger.info(f"收到来自 {sender} 的照片: {filename}")
            
            if self.on_photo_received:
                self.on_photo_received(sender, filename, photo_data)
                
        elif msg_type == 'photo_sent':
            # 照片发送状态
            status = message.get('status')
            target = message.get('target')
            filename = message.get('filename')
            
            if status == 'success':
                logger.info(f"照片 {filename} 已成功发送给 {target}")
            else:
                error_msg = message.get('message', '未知错误')
                logger.error(f"照片 {filename} 发送失败: {error_msg}")
                
                if self.on_error:
                    self.on_error(f"照片发送失败: {error_msg}")
                    
        elif msg_type == 'error':
            # 错误消息
            error_msg = message.get('message', '未知错误')
            logger.error(f"收到错误消息: {error_msg}")
            
            if self.on_error:
                self.on_error(error_msg)
                
    def is_connected(self):
        """检查是否连接到服务器"""
        return self.connected
        
    def is_chat_active(self):
        """检查是否有活动的聊天会话"""
        return self.chat_active
        
    def get_current_partner(self):
        """获取当前聊天对象"""
        return self.current_partner
        
    def get_user_list_data(self):
        """获取用户列表数据"""
        return self.user_list 