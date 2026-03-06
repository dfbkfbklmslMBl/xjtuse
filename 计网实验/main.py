#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""
消息和照片传输应用主程序入口
"""

import sys
import threading
from gui import MessageApp
from server import start_server

def main():
    """主函数，启动服务器和客户端"""
    # 启动服务器线程
    server_thread = threading.Thread(target=start_server, daemon=True)
    server_thread.start()
    
    # 启动GUI
    app = MessageApp()
    app.run()

if __name__ == "__main__":
    main() 