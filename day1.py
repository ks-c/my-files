print("hello,world")

#ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Í£ï¿½########
# True or Flase

names=[]#ï¿½Ğ±ï¿½
type(names)
names=["alxe","blackgirl","egon","rain",]
#ï¿½ï¿½ï¿½ï¿½
names[0]
names[1] = "whitegirl"

#ï¿½ï¿½ï¿½ï¿½
names.insert(1,"blackgirl")
names
#×·ï¿½ï¿½
names.append("oldtownmaster")
names
#ï¿½Ã¸ï¿½ï¿½ï¿½È¡ï¿½ï¿½
names[-1]
#ï¿½ï¿½ï¿½ï¿½
"alxe" in names 
#ï¿½ï¿½ï¿½ï¿½ï¿½Â±ê²¢ï¿½ï¿½ï¿½ï¿½
names.index('alxe')
del names[names.index("alxe")]
names
#ï¿½ï¿½ï¿½ï¿½Ç¶ï¿½×£ï¿½ï¿½ï¿½ï¿½ï¿½

#ï¿½ï¿½È¡ï¿½Ã»ï¿½Ö¸ï¿½ï¿½
name=input("tell me ur name: ")
name
name=input("name, please: ")
age=input("age, please: " )
print(name)
print(age)
####rstudioï¿½ï¿½ï¿½Ş·ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½codeï¿½ï¿½Ö»ï¿½ï¿½ï¿½ï¿½inputï¿½ï¿½print


#ï¿½ï¿½Ê½ï¿½ï¿½ï¿½ï¿½Ó¡(print)
name=input("tell me ur name: ")
age=input("tell me ur age: ")
height=input("tell me ur height: ")
###input()ï¿½ï¿½ï¿½Õµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½İ½ï¿½Îªï¿½Ö·ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½×ªï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
age=int(age)
height=int(height)
msg = '''
----------personal information----------
name  : %s
age   : %d
height: %f
--------------end-----------------------
''' % (name, age, height)
# %sï¿½ï¿½string
# %dï¿½ï¿½int
# %fï¿½ï¿½float
print(msg)

#ï¿½ï¿½ï¿½ï¿½ï¿?
##ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
+
-
2*3
2**3#ï¿½Ë·ï¿½
10%4#È¡Ä£ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
10//4#ï¿½Ìµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½

##ï¿½È½ï¿½ï¿½ï¿½ï¿½ï¿½
==
!=
>
<

##ï¿½ï¿½Öµï¿½ï¿½ï¿½ï¿½
=

a = 1
b = 2
a+=b#a+bï¿½ï¿½Öµï¿½ï¿½Öµï¿½ï¿½a
a

*=
/=
%=
**=
//=

##ï¿½ß¼ï¿½ï¿½ï¿½ï¿½ï¿½
and#ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È«ï¿½ï¿½ï¿½ï¿½ï¿½Ï²Å³ï¿½ï¿½ï¿½
or#ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ò»ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Í³ï¿½ï¿½ï¿½
not#È¡ï¿½ï¿½


#ï¿½ï¿½ï¿½Ì¿ï¿½ï¿½ï¿½if ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ else
## ï¿½ï¿½ï¿½ï¿½Ö§

## Ë«ï¿½ï¿½Ö§
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
  
  
 
## ï¿½ï¿½ï¿½Ö?(ï¿½ßµï¿½Ò»ï¿½ï¿½ï¿½ï¿½ï¿½Ïµï¿½ï¿½ï¿½ï¿½ï¿½)
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
  break#Í£Ö¹Ñ­»·
  
continue#Í£Ö¹µµ´ÎÑ­»·
  # 
#Ñ­»·while
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

#Á½¸öÁĞ±í
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
#±äÁ¿µÄÖ¸Ïò¹ØÏµ

#ÀàĞÍÅĞ¶Ï
m="character"
type(m)
type(m) is str
type(m) is int
m is str
m is "character"

None#¿Õ

a=10
b=5
d=a if a>15 else b
d=a if a>5 else b
d

#ÈıÔªÔËËã
# d = value1 if test1 else test2
# Èç¹ûÌõ¼ş1 ³ÉÁ¢ÔòÖ´ĞĞ×ó±ß£¬·ñÔòÖ´ĞĞÓÒ±ß¡£

for i in range(3):
  print("X")
  
#²éÕÒ
m = ["a","b","c","d"]
m.index(0)
m.index("a")
m.count("b")
m.count(1)
m.
p39
