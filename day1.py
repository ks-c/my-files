print("hello,world")

#�������ͣ�########
# True or Flase

names=[]#�б�
type(names)
names=["alxe","blackgirl","egon","rain",]
#����
names[0]
names[1] = "whitegirl"

#����
names.insert(1,"blackgirl")
names
#׷��
names.append("oldtownmaster")
names
#�ø���ȡ��
names[-1]
#����
"alxe" in names 
#�����±겢����
names.index('alxe')
del names[names.index("alxe")]
names
#����Ƕ�ף�����

#��ȡ�û�ָ��
name=input("tell me ur name: ")
name
name=input("name, please: ")
age=input("age, please: " )
print(name)
print(age)
####rstudio���޷�������������code��ֻ����input��print


#��ʽ����ӡ(print)
name=input("tell me ur name: ")
age=input("tell me ur age: ")
height=input("tell me ur height: ")
###input()���յ����������ݽ�Ϊ�ַ�������ת��������
age=int(age)
height=int(height)
msg = '''
----------personal information----------
name  : %s
age   : %d
height: %f
--------------end-----------------------
''' % (name, age, height)
# %s��string
# %d��int
# %f��float
print(msg)

#�����?
##��������
+
-
2*3
2**3#�˷�
10%4#ȡģ��������
10//4#�̵���������

##�Ƚ�����
==
!=
>
<

##��ֵ����
=

a = 1
b = 2
a+=b#a+b��ֵ��ֵ��a
a

*=
/=
%=
**=
//=

##�߼�����
and#������ȫ�����ϲų���
or#��������һ�������ͳ���
not#ȡ��


#���̿���if ������ else
## ����֧

## ˫��֧
if age>50:
  print("a")
else:
  print("B")
  
import random as rd
grades = rd.random()*200+500
if grades>580:
  print(f"{grades} nice")
else:
  print("try again")
  
  
 
## ����?(�ߵ�һ�����ϵ�����)
if grades>600:
  print("u'll get in a nice college")
elif grades>400:
  print("u should try harder")
else:
  print("kidding me?") 
  

def rank(m):
  if 100>grades>=90:
    print("A")
  elif 90>grades>=80:
    print("B")
  elif 80>grades>=60:
    print("C")
  elif 60>grades>=40:
    print("D")
  elif 40>grades>=0:
    print("E")
  else:
    print("don't cheet me man!")

grades =int( input("tell me ur grades: ") )
rank(grades)

import random
random.randint(0,10)
user_guess =int( input("tell me ur guess: ") )
if user_guess>n:
  print("try smaller")
elif user_guess<n:
  print("try bigger")
else:
  print("bingo!")
  break#ֹͣѭ��
  
continue#ֹͣ����ѭ��
  # 
#ѭ��while
counter=0
while counter<100:
  counter=counter+1
  print("still not 100")
  
counter=0
while counter<=100:
  if counter%2==0:
    print(counter)
    counter = counter+1

p28


time=0
while time<10:
  print("hello,world")
  time=time+1
  
counter=0
while counter<13:
  counter += 1
  if counter == 6 or counter == 10:
    continue
    
  print(counter)
  
counter=100
while counter >= -1:
  if counter >= 50:
    print(counter)
  else:
    print(49-counter)
  counter-=1

counter=1
while counter<=100:
  print(counter)
  counter+=2

counter = 1
while counter<=100:
  if counter%2==1:
    print(counter)
  counter+=1

counter = 2
m = 0
while counter<=100:
  if counter%2==0:
    m += counter
  else:
    m -= counter
  counter += 1
  
print(m)

counter = 1
m = 0
while counter<100:
  counter += 1
  if counter%2==0:
    m += counter
  else:
    m -= counter

3.25%
money = 10000
tagrt = money*2
year = 1
while money<tagrt:
  money = (1+0.0325)*money
  year+=1
print(year)

counter = 1
while counter<=9:
  if counter<=5:
    print("*"*counter)
  else:
    print("*"*(10-counter))
  counter += 1

msg = int(input("tell me how much: "))
counter = 1
while counter<=2*msg-1:
  if counter<=msg:
    print("*"*counter)
  else:
    print("*"*(2*msg-counter))
  counter += 1
  
h = 100
counter = 1
while counter<=10:
  h/=2
  counter+=1
print(h)

h = 100
total = h
counter = 1
while counter<=10:
  h/=2
  total+=h*2
  counter+=1
  
total-=2*h
print(total)

#�����б�
red = list()
blue = list()

#red ball
num = int(input())
if num>=1 and num<=32:
  if num in red:
    print("number exist")
  else:
    red.append(num)
else:
  print("warning")

#blue ball
num = int(input())
if num>=1 and num<=16:
  if num in blue:
    print("number exist")
  else:
    blue.append(num)
else:
  print("warning")

print(red,"\n",blue)

print("a,\n,b")

p34
#������ָ���ϵ

#�����ж�
m="character"
type(m)
type(m) is str
type(m) is int
m is str
m is "character"

None#��

a=10
b=5
d=a if a>15 else b
d=a if a>5 else b
d

#��Ԫ����
# d = value1 if test1 else test2
# �������1 ������ִ����ߣ�����ִ���ұߡ�

for i in range(3):
  print("X")
  
#����
m = ["a","b","c","d"]
m.index(0)
m.index("a")
m.count("b")
m.count(1)
m.
p39
