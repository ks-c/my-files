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
#1���б�����ʾ
bicycles = ["trek","cannondale","redline","specialized"]
print(bicycles)
#�����б�Ԫ��;������0��ʼ
bicycles[0]
bicycles[4]
print(bicycles[1].title())
bicycles[-1]#�������һ��Ԫ��
bicycles[-4]#�����������ĸ�Ԫ��
name = 'my first bike is a'
message = f"{name} {bicycles[0].title()}"
print(message)

#�޸�Ԫ��
motorcycles = ["honda","yamaha","suzuki"]
motorcycles[0] = 'ducati'
print(motorcycles)
#���Ԫ��
motorcycles.append("ducati")
motorcycles.insert(0,'insert')
print(motorcycles)
#ɾ��Ԫ��
del motorcycles[0]
print(motorcycles)
#����Ԫ��
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

#���б���������
cars = ['bmw','audi','toyota','subaru']
cars.sort()
print(cars)

cars.sort(reverse=True)
print(cars)

#��ʱ����
print(cars)
print(sorted(cars))

#���Ŵ�ӡ
cars = ['bmw','audi','toyota','subaru']
cars.reverse()
print(cars)

#ȷ���б���
len(cars)
