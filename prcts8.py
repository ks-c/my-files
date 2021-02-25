#定义函数
def greet_user():
  print('hello')
#传递信息
def greet_user(username):
  print(f"hello,{username.title()}!")

#实参和形参
#实参：圆括号内

#位置实参
def dscrb(animal_type,pet_name):
  print(f"i have a {animal_type}.")
  print(f"my {animal_type}'s name is {pet_name.title()}")
dscrb('sucker',pet_name='guohan')

8:00

def like(name):
  if name=='guohan':
    print(f"{name.title()} has a feeling to fat tanks")
  else:
    print(f"i don't know who does {name.title()} like.")

#指定默认值
def dscrb(name,animal_type='dog'):
  print(f"\ni have a{animal_type}.")
  print(f"my {animal_type}'s name is {name.title()}")
  
def get_name(first,last):
  full = f"{first},{last}"

def dscrb(name,animal_type='dog'):
  if name=='guohan':
    print(f"{name.title()} is actually a dog!")
  elif name=='国晗':
    print(f"{name.title()} is actually a dog!")
  else:
    print(f"{name.title()} might be human!")

#返回值
def get_fullname(first,last):
  fullname=f"{first} {last}"
  return fullname.title()
  
#实参变成可选的
def get_fullname(first,middle,last):
  fullname=f"{first} {middle} {last}"
  return fullname
  
def get_fullname(first,last,middle=""):
  if middle:
    fullname=f"{first} {middle} {last}"
  else:
    fullname=f"{first} {last}"
  return fullname.title()

#返回字典
def person(first,last):
  p = {'first':first,'last':last}
  return p
musician = person('jimmy','woo')
print(musician)

def person(first,last,age=None):
  p = {'first':first,'last':last}
  if age:
    p['age'] = age
  return p

26:00

def getname(first,last):
  p = {'first':first,'last':last}
  return p

while True:
  print('\nplease tell me ur name')
  print("enter 'q' to quit anytime")
  first = input("first name: ")
  if first=="q":
    break
  last = input("last name: ")
  if last=="q":
    break
  full_name = getname(first,last)
  print(f"\nhello,{full_name.title()}!")
  

#传递列表
username = ['hanna','ty','margot']
def greet_users(name):
  for name in username:
    msg = f"hello,{name.title()}!"
    print(msg)
greet_users(username)

unprinted_designs = ['phone case','robot pendant','dodecahedron']
completed_models = []

def printmodels(unprinted_designs,completed_models):
  while unprinted_designs:
   current_design = unprinted_designs.pop()
   print(f"printing models: {current_design}")
   completed_models.append(current_design)

def show_conpleted_models(completed_models):
  for completed_model in completed_models:
    print(completed_model)

#【：】表示不变动列表

#传递任意数量的实参
def pizza(*toppings):
  for topping in toppings:
    print(f"- {topping}")

pizza('mushroom','green prppers','cheese')

50:00
