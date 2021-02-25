setwd('D:/0a文件夹/R')#set where to save this r
getwd()#show where the file is

list.files()#show all other files in the same document
dir()#same as the above one

#'="容易混淆

ls()#当前工作空间有哪些被赋值的字符
ls.str()#被赋值的字符的含义有什么

#删除
rm(x)
rm(a,b,c)
#delete all variables
rm(list=ls())

history()
#tap 'ctrl+l' then clear the screen
save.image()

print('hello')
a <- c(10,30,35,44)
chisq.test(a)
dim(a) <- c(2,2)
a <- matrix(a,nrow = 2,byrow = T)
a <- matrix(a,nrow = 2,byrow = F)

#-----packages------------------------------------
install.packages('name of package')
install.packages(c('',''))
help(package='')
detach('')#移除包
remove.packages()#彻底删除
#--------------------------------------------

#--------R中的数据类型----------
#数值型
#字符串
#逻辑型：true/false
#日期型
#-------------------------------

#------向量------
x <- c('1','2','3')#字符型,green
y <- c(1,2,3)#数值型,red



#-----

#-----矩阵与数组-----
x <- 1:20
x <- matrix(x,4,5,byrow = T)
dim(x)

dim1 <- c('a','b','c','d')
dim2 <- as.character(c(1:5))
dimnames(x) <- list(dim1,dim2)
dimnames(x)

#访问
x[1,2]
x[4,c(2,2,3,4)]
x[c(1,2),c(2:4)]
x[,-1]
x['a',4:5]

colSums(x)
rowSums(x)
colMeans(x)

m <- matrix(3:12,3,3,T)
y <- matrix(1:9,3,3,T)
m*y#内积
m%*%y#外积：前面的行对应x后面的列的和
y%*%m
y
m
#-----
#-----列表-----
#state.center美国每个州的经纬度
a <- 1:20
b <- matrix(1:20,4)
c <- 'this is a word'
lista <- list(a,b,c)
lista[1]
lista <- list(first=a,second=b,third=c)
lista['first']
lista[['first']]
lista$first
#about[] and [[]]:一个中括号相当于取出一节车厢加车头，两个中括号相当于单独拿出一列车厢。
#-----

#-----数据框-----
attach(mtcars)
detach(mtcars)

#-----因子-----
#名义型、有序型、数量型
#名义型与有序型为因子，因子有不同水平，主要用来分类
f <- factor(c('red','red','green'))#定义因子
table(f)
b <- c(T,T,F)
dataframe <- data.frame(f,b)
table(dataframe)

week <- factor(c('mon','tus','wen','fri','sat','sun','sat','sun','sat','sun'),
               ordered=T,
               levels=c('mon','tus','wen','thu','fri','sat','sun'))

plot(week)
num <- 1:100
cut(num,c(seq(0,100,10)))
cut(num,10)
cut(num,c(10,30,60,100))
#-----

#-----NA-----
#NA:not available
#加入na.rm=T即移除缺失值
sum(x,na.rm = T)
is.na(x)
x_na <- na.omit(x)#对于数据集x，会删除带有na 的行
a <- c(NA,NA,1:18)
a <- matrix(a,4)

library('mvmle')#最大似然估计
library(Hmisc)#单个插补
library('Mi')#多重插补
library('Mice')#多重插补
#amelia；mitools
#不可能数值：NaN
#Inf：无穷大/小

#----------------------数据读取--------
read.table('name.txt',header = F/T,sep = ',',nrows= , col.names = )
#读取txt文件，header：是否把首行当作表头，sep：分隔符
#nrows:最大读取行数，col.names:列名（header=T时col.name将其替换）
#incomplete final line found by readTableHeader on 'data-1.txt'
#try to加一行空格when u see such a waring. 
#Error in make.names(col.names, unique = TRUE) : 多字节字符串2有错
#把中文表头改为英文

matrix(data= , nrow= , ncol= , byrow = F)#no need to tap 'nrow'&'ncol'

summary()#总结
str()#the same as above
dim()#查看维度，数据有几行几列
colSums()#列求和




#--------额外的知识--------
dat <- c('1','2','3','4')
dim(dat) <- c(2,2)
apply(dat,2,as.numeric)#文件名。1-行、2-列。as.numberic:转化为数值型

dat1 <- c(1,2,3,4)
dat2 <- c(2,3,4,5)
dim(dat1) <- c(2,2)
dim(dat2) <- c(2,2)
rbind(dat1,dat2)#在data1后边加上data2
cbind(dat1,dat2)#same as above

for (i in 1:n) {
  x <- 1
}
cat()#catenate：连接字符串，可以直接显示连接后的函数


#-----


#----------12/23----------
seq(from=1,to= 10,by=2)
seq(from=0,to= 10,length.out =5)

rep(1,5)
x <- c(1,2,3)
rep(x,each=2)
rep(x,each=2,time,times=2)


#-----

#-----12/28-----
length()#向量长度
x <- c(1,2,3,4,5)
x[-1]#不输出第几个元素
x[c(1,4,2,1)]
x[c(T,F,F,T)]#输出逻辑值为真的数值，多余的逻辑值会输出NA
x[c(T,T,T,F,F,T)]

#   %in%   判断字符是否在这个向量中
z <- c("one","two","three")
"one"%in%z

k <- z %in% c("one","two","three","four")
z[k]

#命名
y <- c(1,2,3,4)
names(y) <- c("a","b","c","d")
y["a"]

#添加向量
x[10] <-1 
x

x[c(4,5,6)] <- c(12,23,45)
x

x1 <- append(x = x,values = 99,after = 2)#在第2个元素后边添加
x
x1
#修改向量
x[2] <- 98
x

#删除向量
rm(a)##删除整个向量
y1 <- y[-c(1:3)]
y1

T


#-----

#-----1/2-----
#for the second day of new year
a <- mtcars
name_abbr <- substr(names(a),1,2)#substr(x= , start= , stop=  )
names(a) <- toupper(name_abbr)

a <- 'https://www.bilibili.com/video/BV1WK411H7ec?from=search&seid=9742757146822120287'
#-----



#-----

x <- c(342,61)
chisq.test(x)


#------字符串-----

#匹配单个列出的字符[···]
#排除性字符，匹配单个未列出的字符 [^···]
#匹配任意字母、数字、下划线 \w
#匹配任意空白字符\s
#匹配任意数字\d{2}：前面数字出现连续两次，
#匹配单词的开始或结束 \b
#转义字符 \char
#一些函数
nchar('hello world')#count the number of this character,including the space
length(c('hello','world','fuck u'))#count number of elements
a <- c('hello')
b <- c(1,2,3)
c <- c('world')
m <- paste(a,c)
paste('everybody','will','love','u',sep = '-')
length(m)
nchar(m)
paste(b,'is cool')
b1 <- c('a','b','c')
paste(b1,'is cool')
m.n <- month.name
m.a <- substr(m.n,start=1,stop=3)#提取字符串，从第1个到底3个

toupper(m.a)
tolower(m.a)
sub()
gsub()
grep()
x <- c('b','A+','AC')
grep('A+',x,fixed = T)#return 所要搜索的字符串的下标
grep('A+',x,fixed = F)

match("AC",x)#return 所要搜索的字符串的位置
b %in% x#向量b知否在x中(b <- c(1,2,))，依次匹配b中元素
"b"%in%x#字符b是否在x中

path <- '/users/local/bin/R'
strsplit(path,'/')#所得到的结果是list

face <-c('spandes','clubs','hearts','diamonds')
suit <- (1:13)
outer(suit,face,FUN = paste,sep='/')

#-----日期数据--1/25----
#1.描述已有日期内发生了什么
#2.预测未来将会发生什么
sunspots#太阳黑子数目
presidents#美国总统支持率
class(presidents)#ts代表时间序列
typeof(presidents)
airquality#空气质量
class(airquality)#data.frame
airmiles
class(airmiles)
Sys.Date()#show today
class(Sys.Date())#date

a <- '2021-01-25'
as.Date(a,format = "%Y-%m-%d")#Y is cap，m、d isnot
strftime
day <- seq(as.Date('2017-01-01'),as.Date('2020-01-25'),by=60)

sales <- round(runif(48, min=50, max=100))
ts(sales,start = c(2010,5),end=c(2014,4),frequency =1)#1:year,4:season,12:month



a <- data.frame(
  pa,
  pb 
)

#-----数据转换 2/7------
#从matrix转换到data frame很方便
#从dataframe转化到matrix比较复杂。

x <- 1:3
names(x) <- c('a','b','c')
x
unname(x)#去除名字，但不影响原数据x
x#依旧有名字

#取子集

x <- as.data.frame(x)
subset(x,a>10)#取出的是一个数据框
x[which(x$a>10),]#取出的是向量

sample(x,5,replace = T)#抽样
sample(x$a,10,replace = T)

x$a <- NULL#清空数据

#数据框的合并
state <- data.frame(state.abb,state.division)

state <- cbind(state.name,state)

x <- round(runif(20,1,9),digits = 0)

x <- unique(x)
length(x)


#翻转
rev(x)

#修改dataframe中的值
wo <- transform(women,cm=height*1.54)

#排序
sort(rivers)#从小到大排序
order(rivers)#返回排序后的所在位置

mtcars[order(mtcars$mpg),]

#排秩
rank(x)


WorldPhones#使用固定电话的数量
phone <- as.matrix(WorldPhones)
phone <- cbind(phone,rowSums(phone))

phone

rm(list=ls(all=T))

x <- c(20,19,	25)
chisq.test(x)

x <- rbind(c(24,	21,	19),c(23,	16,	25),c(18,	24,	22))
p <- list()
for (i in 1:ncol(x)) {
  p[i] <- list(chisq.test(x[i,]))
  
}


#方差分析的F检验
ftest <- function(x,y){
  varx <- var(x)
  vary <- var(y)
  f1 <- var(x)/var(y)
  if(varx > vary){
    p1 <- pf(f1, df1=length(x)-1, df2=length(y)-1, lower.tail=FALSE)*2
  }
  else{
    p1 <- pf(1/f1, df1=length(y)-1, df2=length(x)-1, lower.tail=F)*2
    f1 <- 1/f1
  }
  op <- list(p1,f1)
  names(op) <- c("p","F")
  return()
}


