#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""
IP消息和照片传输应用的工具函数模块
"""

import socket
import time
import os
import platform
import logging

# 常量定义
DEFAULT_TCP_PORT = 5000    # 默认TCP端口 (用于连接、消息和照片传输)
DEFAULT_BUFFER_SIZE = 8192  # 默认缓冲区大小

# 设置日志
logging.basicConfig(level=logging.INFO, 
                    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s')
logger = logging.getLogger("UTILS")

def get_local_ip():
    """获取本机IP地址"""
    try:
        # 创建一个临时套接字连接到外部地址，以获取本地IP
        s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        s.connect(("8.8.8.8", 80))
        ip = s.getsockname()[0]
        s.close()
        return ip
    except Exception as e:
        logger.error(f"获取本地IP地址时出错: {e}")
        # 回退到本地回环地址
        return "127.0.0.1"

def get_timestamp():
    """返回当前时间戳"""
    return time.strftime("%Y-%m-%d %H:%M:%S")

def format_time(seconds):
    """将秒数格式化为时分秒"""
    minutes, seconds = divmod(int(seconds), 60)
    hours, minutes = divmod(minutes, 60)
    return f"{hours:02d}:{minutes:02d}:{seconds:02d}"

def get_system_info():
    """获取系统信息"""
    system_info = {
        "system": platform.system(),
        "release": platform.release(),
        "version": platform.version(),
        "machine": platform.machine(),
        "processor": platform.processor()
    }
    return system_info

def validate_ip_address(ip):
    """验证IP地址格式是否正确"""
    try:
        socket.inet_aton(ip)
        # 检查是否为有效的IPv4地址
        parts = ip.split('.')
        if len(parts) != 4:
            return False
        for part in parts:
            if not 0 <= int(part) <= 255:
                return False
        return True
    except:
        return False

def create_if_not_exists(directory):
    """如果目录不存在则创建"""
    if not os.path.exists(directory):
        os.makedirs(directory)
        logger.info(f"已创建目录: {directory}")

class RateLimiter:
    """速率限制器，用于限制操作频率"""
    
    def __init__(self, max_calls, period):
        """初始化速率限制器
        
        Args:
            max_calls: 在时间段内允许的最大调用次数
            period: 时间段，单位为秒
        """
        self.max_calls = max_calls
        self.period = period
        self.calls = []
        
    def can_proceed(self):
        """检查是否可以继续操作"""
        now = time.time()
        
        # 移除过期的调用记录
        self.calls = [call_time for call_time in self.calls if now - call_time <= self.period]
        
        if len(self.calls) < self.max_calls:
            self.calls.append(now)
            return True
        return False 