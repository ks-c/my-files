#input:输入文本，把文本返回给用户
message = input("tell me something, and i will repet it back to u: ")
name = input("please enter ur name:")
print(f"\nhello, {name.title()}")
#分段的字符
prompt = "if u tell us who u are, we can personlize the message u c."
prompt+= "\n what is ur first name?"
prompt

age = input("how old r u?: ")
age>18
age = int(age)#转换成数值

age = input("how tall r u? in inches: ")
age = int(age)
if age>48:
  print("congratulations! u'r tall enough to ride")
else:
  print("go back untill u'r tall enough")

number = input("tell me a number: ")
number = int(number)
#求余%
if number%2==0:
  print("\nnumber {number} is even!")
else:
  print("\nnumber {number} is odd!")

current_number = 1
while current_number<=5:
  print(current_number)
  current_number += 1 #a += 1 the same as a = a+1

prompt = "\ntell me snf i will repeat it back to u: "
prompt+="\nenter 'quit' to end the program."
message = ""
while message != 'quit':
  message = input(prompt)
  print(message)

message = ""
while message!='quit':
  message = input(prompt)
  if message!='quit':
    print(message)
    
#标志：判断整个程序是否处于活动状态
message = ""
active = True
while active:
  message = input(prompt)
  if message =='quit':
    active = False
  else:
    print(message)
    
#break:quit a loop
while True:
  city = input(prompt)
  if city=='quit':
    break
  else:
    print(f"i'd lovee to go to {city.title()}")

#continue:不执行与下代码，返回循环开头
number = 0
while number<10:
  number+=1
  if number%2==0:
    continue
  print(number)

#避免无限循环：Ctrl+c

x = 1
while x:
  print(x)

unconfirmedusers = ['alice','brain','candace']
confirmedusers = []
while unconfirmedusers:
  user = unconfirmedusers.pop()
  print(f"verifying user:{user.title()}")
  confirmedusers.append(user)
for i in confirmedusers:
  print(f"{i.title()} has been confirmed")

#移除
pets = ['dog','cat','dog','goldfish','cat','rabbit','cat']
while 'cat' in pets:
  pets.remove('cat')
print(pets)

responses = {}
polling_active = True

while polling_active:
  name = input("\nwhat's ur name?: ")
  mountain_name = input("which mountain do u like to climb someday?: ")
  responses[name] = mountain_name
  repeat = input("do u like to let another person respond?(yes/no):  ")
  if repeat == 'no':
    polling_active = False
    
print(f"\n---poll results---")
for name,mountain_name in responses.items():
  print(f"{name.title()} wloud like to climb {mountain_name.title()}")

