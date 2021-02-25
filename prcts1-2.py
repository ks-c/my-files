#print:
print("hello python world")
message="hello python world"
print(message)
message = "hello python world"

#变量：包含字母数字下划线:
#数字不可以开头,下划线可以;关键词和函数名不可以做变量名
#o、O、l最好不要用，否则会和0与1混淆。最好是小写
_message = 'greeting'
greeting_message = "xxxx"
print(mesage)

#-----变量是标签/盒子-----
#字符串：“this is a string“
#修改大小写
name = "ada lovelace"
print(name.title())#只有开头大写
print(name.upper())#全大写
name = name.upper()
print(name.lower())#全小写
name

#链接字符串
first_name = "ada"
last_name = "lovelace"
full_name = f"{first_name}place anything here{last_name}"
#f可以链接两个字符串，相当于format()，两个{}中间可以添加任意元素，都会被囊括其中

#制表符/换行符
print("hi python")
print("\thi python")
print("hi\npython")
print("\n\n\n\npython")
print("languages:\n\tpython\n\tR\n\tC")

#delete blank
rsrip()#black in right will be deleted
lstrip()
strip()

my1 = 'pytho n'#不会剔除字符串之间的空白
my1.rstrip()
my1.strip()

my2 = 'python  '
my2.rstrip()

my3 = ' python  '
my3.strip()

#避免语法错误：单引号
print("there should be just one ' in the whole sentence")
print('or python will not understand your's meaning'')

#pyhon中的加减乘除
4**2#乘方

#浮点数&整点数：只要有浮点数，就默认为浮点数:
#1_200_300_400:三个数字隔开
print(1_200_300)

x = 0,1,2
x,y,z = 1,2,3

#常量：全大写（我们认为这是不想改变）
print("#")

import this
