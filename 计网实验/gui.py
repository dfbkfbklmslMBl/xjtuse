#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""
消息和照片传输应用的图形用户界面模块
"""

import tkinter as tk
from tkinter import ttk, messagebox, scrolledtext, filedialog
import threading
import time
import logging
from PIL import Image, ImageTk, ImageDraw
import io
import sys
import os
import base64

from client import MessageClient
from utils import get_local_ip, validate_ip_address, get_timestamp

# 设置日志
logging.basicConfig(level=logging.INFO, 
                    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s')
logger = logging.getLogger("GUI")

class MessageApp:
    """消息和照片传输应用主界面类"""
    
    def __init__(self):
        """初始化应用程序"""
        self.window = tk.Tk()
        self.window.title("消息和照片传输应用")
        self.window.geometry("800x600")
        self.window.minsize(800, 600)
        
        # 设置图标
        self.window.iconphoto(False, self._create_default_icon())
        
        # 样式配置
        self.style = ttk.Style()
        self.style.configure("TButton", padding=6, relief="flat", background="#4CAF50")
        self.style.configure("TLabel", padding=6, font=('Helvetica', 10))
        self.style.configure("TEntry", padding=6)
        self.style.configure("Header.TLabel", font=('Helvetica', 14, 'bold'))
        
        # 创建主框架
        self.main_frame = ttk.Frame(self.window, padding="10")
        self.main_frame.pack(fill=tk.BOTH, expand=True)
        
        # 初始化客户端
        self.username = None
        self.client = None
        
        # 创建登录界面
        self._create_login_ui()
        
        # 状态变量
        self.chat_active = False
        self.current_partner = None
        
        # 消息和照片历史记录
        self.messages = {}  # 格式: {user: [(timestamp, sender, content), ...]}
        self.photos = {}    # 格式: {user: [(timestamp, sender, filename, data), ...]}
        
        # 照片显示相关
        self.current_photo = None
        self.photo_label = None
        
    def run(self):
        """运行应用程序"""
        self.window.mainloop()
        
    def _create_default_icon(self):
        """创建默认图标"""
        # 创建一个简单的消息图标
        img = Image.new('RGBA', (48, 48), color=(0, 0, 0, 0))
        d = ImageDraw.Draw(img)
        
        # 绘制消息图标
        d.rounded_rectangle([(4, 4), (44, 44)], radius=8, fill="#4CAF50")
        d.rounded_rectangle([(10, 14), (38, 34)], radius=4, fill="white")
        d.polygon([(10, 34), (18, 26), (18, 34)], fill="white")
        
        img_bytes = io.BytesIO()
        img.save(img_bytes, format='PNG')
        img_bytes.seek(0)
        return tk.PhotoImage(data=img_bytes.read())
        
    def _create_login_ui(self):
        """创建登录界面"""
        self._clear_frame()
        
        header_label = ttk.Label(self.main_frame, text="欢迎使用消息和照片传输应用", style="Header.TLabel")
        header_label.pack(pady=20)
        
        # 显示本地IP
        local_ip = get_local_ip()
        ip_frame = ttk.Frame(self.main_frame)
        ip_frame.pack(fill=tk.X, pady=10)
        
        ip_label = ttk.Label(ip_frame, text="您的IP地址:")
        ip_label.pack(side=tk.LEFT, padx=5)
        
        ip_value = ttk.Label(ip_frame, text=local_ip)
        ip_value.pack(side=tk.LEFT, padx=5)
        
        # 用户名输入
        name_frame = ttk.Frame(self.main_frame)
        name_frame.pack(fill=tk.X, pady=10)
        
        name_label = ttk.Label(name_frame, text="请输入您的用户名:")
        name_label.pack(side=tk.LEFT, padx=5)
        
        self.name_entry = ttk.Entry(name_frame, width=30)
        self.name_entry.pack(side=tk.LEFT, padx=5)
        self.name_entry.focus()
        
        # 服务器IP输入
        server_frame = ttk.Frame(self.main_frame)
        server_frame.pack(fill=tk.X, pady=10)
        
        server_label = ttk.Label(server_frame, text="服务器IP地址:")
        server_label.pack(side=tk.LEFT, padx=5)
        
        self.server_ip_entry = ttk.Entry(server_frame, width=30)
        self.server_ip_entry.pack(side=tk.LEFT, padx=5)
        self.server_ip_entry.insert(0, "127.0.0.1")
        
        # 登录按钮
        login_button = ttk.Button(self.main_frame, text="登录", command=self._on_login)
        login_button.pack(pady=20)
        
    def _on_login(self):
        """处理登录事件"""
        username = self.name_entry.get().strip()
        server_ip = self.server_ip_entry.get().strip()
        
        if not username:
            messagebox.showerror("错误", "请输入用户名")
            return
            
        if not server_ip:
            messagebox.showerror("错误", "请输入服务器IP地址")
            return
            
        if not validate_ip_address(server_ip):
            messagebox.showerror("错误", "请输入有效的IP地址")
            return
            
        self.username = username
        
        # 初始化客户端
        self.client = MessageClient(self.username)
        self.client.set_callbacks(
            connect_request=self._on_connect_request,
            connect_response=self._on_connect_response,
            disconnect=self._on_disconnect,
            message_received=self._on_message_received,
            photo_received=self._on_photo_received,
            user_list_updated=self._on_user_list_updated,
            error=self._on_error
        )
        
        # 连接到服务器
        def connect_thread():
            success = self.client.connect_server(server_ip)
            self.window.after(0, lambda: self._on_connect_result(success))
            
        threading.Thread(target=connect_thread, daemon=True).start()
        
        # 显示连接中提示
        self._clear_frame()
        connecting_label = ttk.Label(self.main_frame, text="正在连接到服务器...", style="Header.TLabel")
        connecting_label.pack(pady=50)
        
    def _on_connect_result(self, success):
        """处理连接结果"""
        if success:
            self._create_user_list_ui()
        else:
            messagebox.showerror("连接错误", "无法连接到服务器，请检查服务器IP地址和网络连接")
            self._create_login_ui()
            
    def _create_user_list_ui(self):
        """创建用户列表界面"""
        self._clear_frame()
        
        # 顶部状态栏
        status_frame = ttk.Frame(self.main_frame)
        status_frame.pack(fill=tk.X, pady=5)
        
        status_label = ttk.Label(status_frame, text=f"已登录为: {self.username}")
        status_label.pack(side=tk.LEFT, padx=5)
        
        refresh_button = ttk.Button(status_frame, text="刷新用户列表", command=self._refresh_user_list)
        refresh_button.pack(side=tk.RIGHT, padx=5)
        
        logout_button = ttk.Button(status_frame, text="退出登录", command=self._on_logout)
        logout_button.pack(side=tk.RIGHT, padx=5)
        
        # 用户列表框架
        list_frame = ttk.LabelFrame(self.main_frame, text="在线用户")
        list_frame.pack(fill=tk.BOTH, expand=True, padx=10, pady=10)
        
        # 创建用户列表
        self.user_listbox = tk.Listbox(list_frame, font=('Helvetica', 12))
        self.user_listbox.pack(fill=tk.BOTH, expand=True, padx=10, pady=10)
        
        # 连接按钮
        connect_button = ttk.Button(self.main_frame, text="连接选中用户", command=self._on_connect_user)
        connect_button.pack(pady=10)
        
        # 初始加载用户列表
        self._refresh_user_list()
        
    def _refresh_user_list(self):
        """刷新用户列表"""
        if self.client:
            self.client.get_user_list()
            
    def _on_user_list_updated(self, user_list):
        """处理用户列表更新"""
        if hasattr(self, 'user_listbox'):
            self.user_listbox.delete(0, tk.END)
            
            for user in user_list:
                if user['name'] != self.username:  # 不显示自己
                    self.user_listbox.insert(tk.END, user['name'])
                    
    def _on_connect_user(self):
        """连接选中的用户"""
        if not hasattr(self, 'user_listbox'):
            return
            
        selection = self.user_listbox.curselection()
        if not selection:
            messagebox.showinfo("提示", "请先选择一个用户")
            return
            
        target_user = self.user_listbox.get(selection[0])
        
        if self.client.request_connect(target_user):
            # 显示等待连接界面
            self._clear_frame()
            waiting_label = ttk.Label(self.main_frame, text=f"正在等待 {target_user} 接受连接请求...", style="Header.TLabel")
            waiting_label.pack(pady=50)
            
            cancel_button = ttk.Button(self.main_frame, text="取消", command=self._on_cancel_connect)
            cancel_button.pack(pady=20)
            
    def _on_cancel_connect(self):
        """取消连接请求"""
        self._create_user_list_ui()
        
    def _on_connect_request(self, sender):
        """处理连接请求"""
        response = messagebox.askyesno("连接请求", f"用户 {sender} 请求与您建立连接，是否接受？")
        
        if response:
            self.client.respond_connect(sender, True)
            self._create_chat_ui()
        else:
            self.client.respond_connect(sender, False)
            
    def _on_connect_response(self, responder, accepted):
        """处理连接响应"""
        if accepted:
            messagebox.showinfo("连接成功", f"用户 {responder} 已接受您的连接请求")
            self._create_chat_ui()
        else:
            messagebox.showinfo("连接拒绝", f"用户 {responder} 拒绝了您的连接请求")
            self._create_user_list_ui()
            
    def _create_chat_ui(self):
        """创建聊天界面"""
        self._clear_frame()
        
        # 顶部状态栏
        status_frame = ttk.Frame(self.main_frame)
        status_frame.pack(fill=tk.X, pady=5)
        
        self.chat_partner_label = ttk.Label(status_frame, text=f"正在与 {self.client.get_current_partner()} 聊天")
        self.chat_partner_label.pack(side=tk.LEFT, padx=5)
        
        disconnect_button = ttk.Button(status_frame, text="断开连接", command=self._on_disconnect_chat)
        disconnect_button.pack(side=tk.RIGHT, padx=5)
        
        # 创建选项卡
        tab_control = ttk.Notebook(self.main_frame)
        
        # 消息选项卡
        message_tab = ttk.Frame(tab_control)
        tab_control.add(message_tab, text='消息')
        self._create_message_tab(message_tab)
        
        # 照片选项卡
        photo_tab = ttk.Frame(tab_control)
        tab_control.add(photo_tab, text='照片')
        self._create_photo_tab(photo_tab)
        
        tab_control.pack(expand=1, fill=tk.BOTH)
        
    def _create_message_tab(self, parent):
        """创建消息选项卡"""
        # 消息历史记录
        history_frame = ttk.LabelFrame(parent, text="消息历史")
        history_frame.pack(fill=tk.BOTH, expand=True, padx=10, pady=10)
        
        self.message_history = scrolledtext.ScrolledText(history_frame, wrap=tk.WORD, width=40, height=15)
        self.message_history.pack(fill=tk.BOTH, expand=True, padx=5, pady=5)
        self.message_history.config(state=tk.DISABLED)
        
        # 发送消息框架
        send_frame = ttk.Frame(parent)
        send_frame.pack(fill=tk.X, padx=10, pady=10)
        
        self.message_entry = ttk.Entry(send_frame, width=50)
        self.message_entry.pack(side=tk.LEFT, fill=tk.X, expand=True, padx=5)
        self.message_entry.bind("<Return>", lambda e: self._on_send_message())
        
        send_button = ttk.Button(send_frame, text="发送", command=self._on_send_message)
        send_button.pack(side=tk.LEFT, padx=5)
        
        # 更新消息显示
        self._update_message_display()
        
    def _create_photo_tab(self, parent):
        """创建照片选项卡"""
        # 照片选择框架
        select_frame = ttk.Frame(parent)
        select_frame.pack(fill=tk.X, padx=10, pady=10)
        
        self.photo_path_var = tk.StringVar()
        photo_path_entry = ttk.Entry(select_frame, textvariable=self.photo_path_var, width=40)
        photo_path_entry.pack(side=tk.LEFT, padx=5, fill=tk.X, expand=True)
        
        browse_button = ttk.Button(select_frame, text="浏览...", command=self._browse_photo)
        browse_button.pack(side=tk.LEFT, padx=5)
        
        send_button = ttk.Button(select_frame, text="发送照片", command=self._send_photo)
        send_button.pack(side=tk.LEFT, padx=5)
        
        # 进度框架
        progress_frame = ttk.Frame(parent)
        progress_frame.pack(fill=tk.X, padx=10, pady=5)
        
        self.progress_var = tk.StringVar(value="就绪")
        progress_label = ttk.Label(progress_frame, textvariable=self.progress_var)
        progress_label.pack(side=tk.LEFT, padx=5)
        
        self.progress_bar = ttk.Progressbar(progress_frame, orient="horizontal", length=300, mode="determinate")
        self.progress_bar.pack(side=tk.LEFT, padx=5, fill=tk.X, expand=True)
        
        # 照片预览框架
        preview_frame = ttk.LabelFrame(parent, text="照片预览")
        preview_frame.pack(fill=tk.BOTH, expand=True, padx=10, pady=10)
        
        # 照片预览标签
        self.photo_preview = ttk.Label(preview_frame, text="选择照片后在此处预览")
        self.photo_preview.pack(padx=10, pady=10, fill=tk.BOTH, expand=True)
        
        # 历史照片框架
        history_frame = ttk.LabelFrame(parent, text="照片历史")
        history_frame.pack(fill=tk.X, padx=10, pady=10)
        
        self.photo_history = ttk.Combobox(history_frame, width=40)
        self.photo_history.pack(side=tk.LEFT, padx=5, pady=5, fill=tk.X, expand=True)
        
        view_button = ttk.Button(history_frame, text="查看", command=self._view_selected_photo)
        view_button.pack(side=tk.LEFT, padx=5, pady=5)
        
        # 更新照片历史
        partner = self.client.get_current_partner()
        if partner:
            self._update_photo_history(partner)
            
    def _on_logout(self):
        """退出登录"""
        if self.client:
            self.client.disconnect_server()
            self.client = None
            
        self._create_login_ui()
        
    def _on_disconnect_chat(self):
        """断开聊天连接"""
        if self.client and self.client.is_chat_active():
            self.client.disconnect_chat()
            
        self._create_user_list_ui()
        
    def _on_disconnect(self, partner):
        """处理对方断开连接"""
        messagebox.showinfo("连接断开", f"用户 {partner} 已断开连接")
        self._create_user_list_ui()
        
    def _on_send_message(self):
        """发送消息"""
        if not self.client or not self.client.is_chat_active():
            return
            
        message = self.message_entry.get().strip()
        if not message:
            return
            
        if self.client.send_message(message):
            # 清空输入框
            self.message_entry.delete(0, tk.END)
            
            # 添加到历史记录
            partner = self.client.get_current_partner()
            self._add_message(partner, self.username, message)
            
            # 更新显示
            self._update_message_display()
            
    def _on_message_received(self, sender, content, timestamp):
        """处理接收到的消息"""
        self._add_message(sender, sender, content)
        self._update_message_display()
        
    def _add_message(self, partner, sender, content):
        """添加消息到历史记录"""
        if partner not in self.messages:
            self.messages[partner] = []
            
        timestamp = get_timestamp()
        self.messages[partner].append((timestamp, sender, content))
        
    def _update_message_display(self):
        """更新消息显示"""
        if not hasattr(self, 'message_history'):
            return
            
        partner = self.client.get_current_partner()
        if not partner or partner not in self.messages:
            return
            
        self.message_history.config(state=tk.NORMAL)
        self.message_history.delete(1.0, tk.END)
        
        for timestamp, sender, content in self.messages[partner]:
            sender_name = "我" if sender == self.username else sender
            self.message_history.insert(tk.END, f"[{timestamp}] {sender_name}: {content}\n\n")
            
        self.message_history.config(state=tk.DISABLED)
        self.message_history.see(tk.END)
        
    def _browse_photo(self):
        """浏览选择照片"""
        file_path = filedialog.askopenfilename(
            title="选择照片",
            filetypes=[("图片文件", "*.jpg *.jpeg *.png *.gif *.bmp")]
        )
        
        if file_path:
            self.photo_path_var.set(file_path)
            self._update_photo_preview(file_path)
            
    def _update_photo_preview(self, photo_path):
        """更新照片预览"""
        try:
            # 加载图片
            img = Image.open(photo_path)
            
            # 调整大小以适应预览区域
            max_size = (300, 300)
            img.thumbnail(max_size, Image.LANCZOS)
            
            # 转换为Tkinter可用的格式
            photo = ImageTk.PhotoImage(img)
            
            # 更新预览
            self.photo_preview.config(image=photo, text="")
            self.photo_preview.image = photo  # 保持引用以防止垃圾回收
            
        except Exception as e:
            logger.error(f"预览照片出错: {e}")
            self.photo_preview.config(text="无法加载照片预览")
            self.photo_preview.image = None
            
    def _send_photo(self):
        """发送照片"""
        if not self.client or not self.client.is_chat_active():
            messagebox.showerror("错误", "未连接到聊天")
            return
            
        photo_path = self.photo_path_var.get().strip()
        if not photo_path:
            messagebox.showinfo("提示", "请先选择照片")
            return
            
        if not os.path.exists(photo_path):
            messagebox.showerror("错误", "照片文件不存在")
            return
            
        # 发送照片
        self.progress_var.set("正在发送照片...")
        self.progress_bar["value"] = 0
        
        def send_photo_thread():
            success, message = self.client.send_photo(photo_path)
            self.window.after(0, lambda: self._on_photo_send_result(success, message))
            
        threading.Thread(target=send_photo_thread, daemon=True).start()
        
    def _on_photo_send_result(self, success, message):
        """处理照片发送结果"""
        if success:
            self.progress_var.set("照片发送成功")
            self.progress_bar["value"] = 100
        else:
            self.progress_var.set(f"发送失败: {message}")
            self.progress_bar["value"] = 0
            
    def _on_photo_received(self, sender, filename, photo_data):
        """处理接收到的照片"""
        try:
            # 保存照片数据
            if sender not in self.photos:
                self.photos[sender] = []
                
            timestamp = get_timestamp()
            self.photos[sender].append((timestamp, sender, filename, photo_data))
            
            # 更新照片历史
            if self.client.get_current_partner() == sender:
                self._update_photo_history(sender)
                
            # 显示通知
            messagebox.showinfo("新照片", f"收到来自 {sender} 的照片: {filename}")
            
        except Exception as e:
            logger.error(f"处理接收照片时出错: {e}")
            
    def _update_photo_history(self, user):
        """更新照片历史下拉框"""
        if not hasattr(self, 'photo_history'):
            return
            
        self.photo_history['values'] = []
        
        if user in self.photos:
            photo_items = []
            for timestamp, sender, filename, _ in self.photos[user]:
                sender_name = "我" if sender == self.username else sender
                photo_items.append(f"[{timestamp}] {sender_name}: {filename}")
                
            self.photo_history['values'] = photo_items
            if photo_items:
                self.photo_history.current(len(photo_items) - 1)
                
    def _view_selected_photo(self):
        """查看选中的历史照片"""
        if not hasattr(self, 'photo_history'):
            return
            
        selected_index = self.photo_history.current()
        if selected_index < 0:
            return
            
        partner = self.client.get_current_partner()
        if not partner or partner not in self.photos:
            return
            
        try:
            _, _, _, photo_data = self.photos[partner][selected_index]
            self._display_photo(photo_data)
        except Exception as e:
            logger.error(f"查看历史照片时出错: {e}")
            
    def _display_photo(self, photo_data):
        """显示照片"""
        try:
            # 解码Base64数据
            binary_data = base64.b64decode(photo_data)
            
            # 创建照片查看窗口
            photo_window = tk.Toplevel(self.window)
            photo_window.title("照片查看")
            photo_window.geometry("800x600")
            
            try:
                # 尝试加载图片
                img = Image.open(io.BytesIO(binary_data))
                
                # 调整大小以适应窗口
                window_width = 780
                window_height = 580
                
                img.thumbnail((window_width, window_height), Image.LANCZOS)
                
                # 转换为Tkinter可用的格式
                photo = ImageTk.PhotoImage(img)
                
                # 显示图片
                photo_label = ttk.Label(photo_window, image=photo)
                photo_label.image = photo  # 保持引用以防止垃圾回收
                photo_label.pack(fill=tk.BOTH, expand=True, padx=10, pady=10)
                
            except Exception as e:
                logger.error(f"显示照片时出错: {e}")
                error_label = ttk.Label(photo_window, text=f"无法显示照片: {str(e)}")
                error_label.pack(pady=50)
                
            # 关闭按钮
            close_button = ttk.Button(photo_window, text="关闭", command=photo_window.destroy)
            close_button.pack(pady=10)
            
        except Exception as e:
            logger.error(f"解码照片数据时出错: {e}")
            messagebox.showerror("错误", f"无法显示照片: {str(e)}")
            
    def _on_error(self, error_message):
        """处理错误消息"""
        messagebox.showerror("错误", error_message)
        
    def _clear_frame(self):
        """清空主框架"""
        for widget in self.main_frame.winfo_children():
            widget.destroy()

# 如果直接运行此文件
if __name__ == "__main__":
    app = MessageApp()
    app.run() 