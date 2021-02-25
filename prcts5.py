reticulate::repl_python()
#review for last lesson
magicians = ["alice",'david','carolina']
for i in magicians:
  print(f"{i.title()}, are u creay?\n\tsucker???")
  print(f"fuc u, {i.title()}\n\n\n")
  # TODO: write code..

a = range(1,10)
b = ["i love u"]
for i in a:
  print(b)

#-----new lesson-----:
cars = ["audi","bwm","subaru","soyota"]
for car in cars:
  if car == 'bwm':
    print(car.upper())
  else:
    print(car.title())
  # TODO: write code...

#条件测试：true or false：true则执行代码
car=['bmw']
car=='audi'
age=18
age==18
age<21

#检查多个条件
age0 = 22
age1 = 18
(age0>=22)and(age1<=10)
(age0>=21)and(age1<=18)
(age0>=25)or(age1<=10)
(age0>=10)or(age1<=10)

request_shoppings = ['mushrooms','onions','pineaples']
'mushrooms' in request_shoppings
'tomato' in request_shoppings

food = 'tomato'
if food  not in request_shoppings:
  print("tomato is not what you wish")
  
#if语句
age = 19
age = 10
age = -3
if age>=18:
  print("you are old enough to vote")
else:
  print(f"sorry,there will still be {18-age} years for u to vote")
  
if age>=18:
  print("you are old enough to vote")
else:
  if 0<age<18:
    print(f"sorry,there will still be {18-age} years for u to vote")
  else:
    print(f"u will still have {0-age} years for u to born")

#if/elif/else
age = 3
age = 10
age = 20
age = 30
if age <4:
  print('ur free to go!!!')
elif age<18:
  print('ur admission cost is $25.')
elif age<25:
  print('ur admission cost is $30.')
else:
  print('ur way to old to play this, baby.')

if age <4:
  price = 0
elif age<18:
  price = 10
elif age<25:
  price = 20
else:
  price = 30
print(f"ur admission cost is {price}$!")


#字典(类似数据框)每个键都有一个值
aline_0 = {'color':'green','point':5}
print(aline_0['color'])
new_point = aline_0['point']
print(f"u just earned {new_point} pints!")

#新增键值对
aline_0['x_position']=0
aline_0['x_position']=25
print(aline_0)

aline_0 = {}
aline_0['color'] = 0
aline_0['point'] = 10
print(aline_0)
aline_0['color'] = 'green'


aline_0 = {'x_position':0,
'y_position':25,
'speed':'medium'}


if aline_0['speed']=='slow':
  x_increment = 1
elif aline_0['speed']=='medium':
  x_increment = 2
else:
  x_increment = 3

aline_0['x_position'] = aline_0['x_position']+x_increment
print(f"new x_position is: {aline_0['x_position']}")

#删除键值对
aline_0 = {'color':'green','point':5}
del aline_0['color']

fav_languages = {
  'jen':'python',
  'sarah':'c',
  'edward':'ruby',
  'phil':'python'
}
print(f"Sarah's favourite language is {fav_languages['sarah']}")

aline_0 = {'color':'green','point':5,'speed':'slow'}
aline_0.get("point","no point value assigned")
aline_0.get("test","no point value assigned")
user = {
  'username':'efermi',
  'first':'enrico',
  'last':'fermi'
}

for a,b in user.items():
  print(f"KEY:{a}")
  print(f"value:{b}\n")
  
fav_languages = {
  'jen':'python',
  'sarah':'c',
  'edward':'ruby',
  'phil':'python'
}
for name,language in fav_languages.items():
  print(f"{name.title()}'s favourite language is {language.title()}.")
  # TODO: write code...

friends = ['sarah','phil']
for name in fav_languages:
  print(f"hi,{name.title()}")
  # TODO: write code...
  if name in friends:
    language = fav_languages[name].title()
    print(f"\t{name.title()}, i see u love {language.title()}")

###临时排序
sorted(fav_languages.keys())

#遍历所有键与值
for name in sorted(fav_languages.keys()):
  print(f"{name.title()}, thank u for taking the poll")
for language in sorted(fav_languages.values()):
  print(f"{language.title()},that is a good language")

#去除重复
for language in sorted(set(fav_languages.values())):
  print(f"{language.title()},that is a good language")

#字典列表：列表里套一个字典
p1 = {'color':'green','points':5}
p2 = {'color':'red','points':15}
p3 = {'color':'yellow','points':25}
ps = [p1,p2,p3]
ps

ps = []
for i in range(30):
  new_p = {'color':'green','points':5,'speed':'slow'}
  ps.append(new_p)
  
for i in ps[:5]:
  print(i)
print(f"total number of ps is: {len(ps)}")

#41:40

#1/09
aliens = []
for i in range(30):
  new_alien = {'color':'green','points':5,'speed':'solw'}
  aliens.append(new_alien)

print(aliens)

for alien in aliens[:3]:
  if alien['color'] == 'green':
    alien['color'] = 'yellow'
    alien['speed'] = 'medium'
    alien['points'] = 10
    
for ab in aliens[:3]: 
  ab['color'] = 'yellow'
  ab['speed'] = 'medium'
  ab['points'] = 10

print(aliens)

for i in aliens[:5]:
  print(i)
print(f"total nmber of aliens is {len(aliens)}")
  # TODO: write code...

aliens = []
for i in range(30):
  new = {'color':'green','points':5,'speed':'slow'}
  aliens.append(new)

for i in aliens[:3]:
  if i['color']=='green':
    i['color'] = 'yellow'
    i['speed'] = 'medium'
    i['points'] = 10
  elif i['color']=='yellow':
    i['color'] = 'red'
    i['speed'] = 'fast'
    i['points'] = 15
for i in range(5):
  print(aliens[i])
print(f"the total number of aliens is:{len(aliens)}")

pizza = {
  'crust':'thick',
  'toppings':['mushrooms','extra cheese'],
}

print(f"u ordered a {pizza['crust']}-crust pizza with the following toppings:")
for i in pizza['toppings']:
  print("\t"+i)


fav_languages = {
  'jen':['python','ruby'],
  'sarah':'c',
  'edward':['ruby','go'],
  'phil':['python','haskell']

}
for x,y in fav_languages.items():
  if len(y)<2:
    print(f"\n{x.title()}'s favourite language is:")
    for z in y:
      print("\t"+z.title())
  else:
    print(f"\n{x.title()}'s favourite languages are:")
    for z in y:
      print("\t"+z.title())

##在字典中存储字典
users = {
  'aeinstein':{
    'first':'albert',
    'last':'einstein',
    'location':'princeton',
  },
  'mcurie':{
    'first':'marie',
    'last':'curie',
    'location':'paris',
  },
}
for username,user_info in users.items():
  print(f"\nusername:{username}")
  full_name = f"{user_info['first']} {user_info['last']}"
  location = user_info['location']
  print(f"\tfull name:{full_name.title()}")
  print(f"\tlocation:{location.title()}")
