import tkinter
import socket
import threading
import time
#import pyttsx3
# 在这个py文件中主要包含三个功能：在显示屏上显示用户数据，作为服务器接收客户端链接，播放欢迎语音
# 显示屏部分，主要使用python的tkinter库
# 在提供服务器功能只要是，使用多线程在多线程中实现服务端接收，并在多线程中调用语音播放的接口

class Window(threading.Thread):

	def __init__(self, root):
		threading.Thread.__init__(self)
		root.geometry("%dx%d" %(root.winfo_screenwidth(), root.winfo_screenheight()))
		self.label1 = tkinter.Label(root, text='无业务办理状态', fg='#ff0000', font=('宋体', 60))
		self.label1.place(x=root.winfo_screenwidth()/2-400, y=root.winfo_screenheight()/2-150)
		#self.audio = pyttsx3.init()
		self.number = 1


	def run(self):
		server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
		server.bind(('192.168.43.139', 9000))
		server.listen(5)

		while True:
			conn, addr = server.accept()
			data = conn.recv(1024)
			self.show_message(data)
			conn.sendall("我已接收到数据".encode('utf-8'))
			conn.close()


	def show_message(self,message):
		message = message.decode('utf-8')
		if "come" in message:
			real_list = message.split(",")
			self.number = real_list[0]
			self.label1.config(text="请"+str(self.number)+"号到此窗口办理业务", fg='#ff0000', font=('宋体', 60))
		elif "process" in message:
			self.label1.config(text=str(self.number)+"号正在此窗口办理业务", fg='#ff0000', font=('宋体', 60))
		elif "null" in message:
			self.label1.config(text="the is no custommer right now", fg='#00ff00', font=('宋体', 60))
			



	def play_audio(self, data):
		str = "请"+self.number+"到此窗口办理业务"
		self.audio.say(str)
		self.audio.runAndWait()


tk = tkinter.Tk()
tk.title("税务办理终端界面")
root = Window(tk)
root.start()
tk.mainloop()
