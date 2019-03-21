from tkinter import *
from urllib import parse, request
import socket
import time

class C:

    def __init__(self, tk):
        self.tk = tk
        tk.geometry("%dx%d" % (tk.winfo_screenwidth(), tk.winfo_screenheight()))
        self.label1 = Label(tk, text='当前没有业务', fg='#ff0000', font=('宋体', 24))
        self.label2 = Label(tk, text='', fg='#000000', font=('宋体', 24))
        self.label3 = Label(tk, text='', fg='#000000', font=('宋体', 24))
        self.label1.place(x=tk.winfo_screenwidth() / 2 - 200, y=tk.winfo_screenheight() / 2 - 100)
        self.label2.place(x=tk.winfo_screenwidth() / 2 - 200, y=tk.winfo_screenheight() / 2 + 60 - 100)
        self.label3.place(x=tk.winfo_screenwidth() / 2 - 200, y=tk.winfo_screenheight() / 2 + 120 - 100)
        self.message = ""

    def ff(self):
        header_dict = {'User-Agent': 'Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko'}
        url = 'http://47.94.195.37:8080/BankLeader/getOrders'
        #  {"code":"1","message":"无等待人员"},id=27,mName=存款与账户
        req = request.Request(url=url, headers=header_dict)
        res = request.urlopen(req)
        res = res.read()
        res = res.decode(encoding='utf-8')
        self.message = res
        value_list = res.split(",")
        if "code" in value_list[0]:
            self.label1.config(text="当前暂无可办理业务", fg="#ff0000")
            self.label2.config(text="")
            self.label3.config(text="")
        else:
            real_list = []
            for i in range(1, 3):
                real_list.extend(value_list[i - 1].split("="))
            self.label1.config(text="正在办理业务", fg="#00ff00")
            self.label2.config(text=real_list[1])
            self.label3.config(text=real_list[3])

            client = socket.socket()
            client.connect(("192.168.43.139", 9000))

            client.send((real_list[1]+",come").encode('utf-8'))  # 把编译成utf-8的数据发送出
            data = client.recv(512)  # 接收数据
            print("从服务器接收到的数据为：", data.decode())
            client.close()

    def aa(self):
        if "code" not in self.message:
            client = socket.socket()
            client.connect(("192.168.43.139", 9000))
            client.send("process".encode('utf-8'))  # 把编译成utf-8的数据发送出
            data = client.recv(512)  # 接收数据
            print("从服务器接收到的数据为：", data.decode())
            client.close()
        else:
            self.label1.config(text="这是违规操作")
            self.label2.config(text="")
            self.label3.config(text="")
            time.sleep(2)
            print("233333")
            self.label1.config(text="当前暂无可办理业务")
            self.label2.config(text="")
            self.label3.config(text="")




def f():
    print("2133333")


tk = Tk()
c = C(tk)
b = Button(tk, text='下一位', command=c.ff)
bb = Button(tk, text='完成办理', command=c.aa)
b.pack()
bb.pack()
tk.mainloop()