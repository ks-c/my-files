print('hello, day 2')
#review
am = 'ada lovelace'
print(am.upper())
print(am.title())
am_upper = am.upper()
am_upper
print(am_upper.lower())
full = f"{am} & {am_upper}"
print(full)
print('\tfu\nll')
blank = '    blank'
blank.lstrip()
#---new knowledge for today-----
#1、列表【】表示
bicycles = ["trek","cannondale","redline","specialized"]
print(bicycles)
#访问列表元素;索引从0开始
bicycles[0]
bicycles[4]
print(bicycles[1].title())
bicycles[-1]#索引最后一个元素
bicycles[-4]#索引倒数第四个元素
name = 'my first bike is a'
message = f"{name} {bicycles[0].title()}"
print(message)

#修改元素
motorcycles = ["honda","yamaha","suzuki"]
motorcycles[0] = 'ducati'
print(motorcycles)
#添加元素
motorcycles.append("ducati")
motorcycles.insert(0,'insert')
print(motorcycles)
#删除元素
del motorcycles[0]
print(motorcycles)
#弹出元素
poped_motorcycles = motorcycles.pop()
print(motorcycles)
print(poped_motorcycles)
last_owned = motorcycles.pop()
print(f'my last motorcycle was a {last_owned.title()}')

motorcycles = ["honda","yamaha","suzuki"]
poped_motorcycles = motorcycles.pop(0)
poped_motorcycles

motorcycles = ["honda","yamaha","suzuki"]
motorcycles.remove('honda')
print(motorcycles)

#对列表永久排序
cars = ['bmw','audi','toyota','subaru']
cars.sort()
print(cars)

cars.sort(reverse=True)
print(cars)

#临时排序
print(cars)
print(sorted(cars))

#倒着打印
cars = ['bmw','audi','toyota','subaru']
cars.reverse()
print(cars)

#确定列表长度
len(cars)
