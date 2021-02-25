
x <- 1
repeat {
  print(x)
  x <- x + 1
  if (x == 6) {
    break
  }
}
rc <- read.csv("C:\\Users\\Lenovo\\Desktop\\dat1.csv")
typeof(rc)
rc_df <- data.frame(rc)
is.data.frame(rc_df)

KMO(cor(rc))

describe(lc)

pc<-principal(USJudgeRatings[,-1],nfactors=1,score=TRUE)  
head(pc$scores) 
cor(USJudgeRatings$CONT,pc$scores)  

x <- c(1,2,2,3)
 mean(x)
a <- scale(x,center=F)
a*sd(x)

dnorm(x = 0,mean = 0,sd = 1)
dnorm(x = 1,mean = 0,sd = 1)
pnorm(q = 1.65788,0,1)

b <- c(x1=1.2,3.5,x3=pi)
b[c(1,"x3")]

x <- 1:5
x[8] <- 6
x
b <- c(x1=1.2,3.5,x3=pi)
names(b)

names(b)[2] <- "x2"
names(b)[1] <- "x1_0"
b

x <- c(0.5,1,100)
# 删除第1个元素
x <- x[-1]
x

preeettier <- function(a,b) {
  print('H is the prettier one.')
}

a <- 2

prty <- function(a,b){
if (length(a)==1){ 
  print(paste(a,'is preeettier'))
  }
else if (length(a)>1){print('its not illegal')}
else if (length(a)<1){print('empty')}
  
}

prty <- function(a,b){
  p1 <- paste(toupper(a),'is much prettier')
  p2 <- 'illegal'
  p3 <- 'empty'
  pout <- ifelse(length(a)==1,p1,ifelse(length(a)>1,p2,p3))
  return(pout) 
}
prty('yifei liu','mi yang')

who_is_pretty <- function(...){
  print('YR Zhu is better.')
}



x1 <- list(a=1,b="Apple",c=TRUE,d=1:3)
x2 <- list(e=5+3i,f=c(1.5,2.6))

# 列表的元素作为新列表的元素
y1 <- append(x1,x2)
y1


library(leaflet)
m <- leaflet() %>%
  addTiles() %>%  # Add default OpenStreetMap map tiles
  addMarkers(lng= 116.3908, lat=39.91581, popup="The gu palace")
m


jd <- function(a,b,c){
  m <- a+b/60+c/3600
  return(m)
}
longitude<- jd(116,23,26.93)
latitude <- jd(39,54,56.92)
Imperial_Palace <- leaflet() %>%
  addTiles() %>%  # Add default OpenStreetMap map tiles
  addMarkers(lng= longitude, lat=latitude, popup="The gu palace")
Imperial_Palace




v11 <- rnorm(30,1.8,0.6)
v12 <- rnorm(30,2.2,0.9)
t.test(v11,v12)
v1 <- data.frame(v11,v12)


x <- 1:length(y)
love <- data.frame(x,y)


#加载包
library(tidyverse) # 或者使用'ggplot2'包也是可以的
#设定数据集
t = seq(0, 2 * pi, by = 0.1)
x = 16 * sin(t)^3
y = 13 * cos(t) - 5 * cos(2 * t) - 2 * cos(3 * t) - cos(4 * t)
a = (x - min(x))/(max(x) - min(x))
b = (y - min(y))/(max(y) - min(y))

#绘图构造：
##用线图`geom_line`来画出大致轮廓
##用`geom_polygon`来进行填充
ggplot(data=NULL, aes(x=x, y=y)) +
  geom_line(aes(color=I('white'))) + #手动设置心形边框线颜色
  geom_polygon(aes(fill='black'), show.legend = F) + #填充心形并隐藏图例
  #隐藏坐标轴：这里使用标度系统来调整x和y轴
  scale_x_continuous(labels = NULL) +
  scale_y_continuous(labels = NULL) +
  #设定主题：主题主要用来控制图像的整体布局
  theme_bw() + #设定白色主题
  theme(panel.grid.major = element_blank(), #删除网格线
        panel.grid.minor = element_blank(), #删除网格线
        panel.border = element_blank(), #删除边框线
        axis.ticks = element_blank(), #删除刻度线
        axis.title = element_blank()) + #去除x和y的标签名
  #使用label来添加想要说的话
  #` `函数表示换行，#`'`表示将分号作为文本处理
  annotate('text', x=median(a), y=median(b),
           label=' im ur father ',size=2)
#保存为png格式（也可以存为jpg或者pdf格式都行）
#保存完后使用`getwd()`函数来查看存储路径就可以找到啦～
#dpi表示图像保存的质量，dpi越大图片质量越好
ggsave('heart.png', plot = last_plot(), dpi = 300)
注：

#ks正态性检验
x <- rnorm(30,12,9)
ks.test(x,pnorm(q = 0, mean = mean(x), sd = sqrt(var(x))))


mmm <- function(meana,sda){
  n1 <- rnorm(30,meana,sda)
  n2 <- rnorm(30,meana+.5,sda+.2)
  spn1 <- shapiro.test(n1)
  spn2 <- shapiro.test(n2)
  n <- list(n1,spn1[['p.value']],n2,spn2[['p.value']])
  return(n)
}
a1 <- mmm(1.8,0.6)
a1

write.csv(a1,'a.csv')

a <- read.csv('a.csv',header=F)
typeof(a)
is.data.frame(a)
m <- apply(a,2,shapiro.test())

options(digits = 0)

m<- (0.69+0.79+0.78)
m^2/(m^2+0.53+0.38+0.39)


rou <- function(x){
  p <- nrow(x)
  var(sum(x)) / (var(sum(x)) + p-sum(va))
  
}

five <- function(x){
  if(is.numeric(x)==F){
    warning('this isnot a number,man! ')
    
    }
  else if(x>5){
    warning('not the right number,man! ')
  }
  else if(x<1){
    warning('not the right number,man! ')
  }
  else{
      re_x <- ifelse(test = x==1, yes = 5,
                     ifelse(test = x==2, 4, 
                            ifelse(test = x==4,2,
                                   ifelse(x==5,1,3))))
      return(re_x)
    }
  }
  
tinytex::install_tinytex()


m[,1] <- c(7,	5,	9,	5,	8,	12,	6,	9,	6	,3,	4,	6,	9,	6,	9,	10,	9,	13,	6	,10,	10,	15,	7	,6	,9	,13,	7,	2,	8,	7)

corr <- function(x1,x2,x3){
  x1_x2 <- cor.test(x1,x2)
  x1_x3 <- cor.test(x1,x3)
  x2_x3 <- cor.test(x2,x3)
  
  options(digits = 2)
  cor1 <- c(x1_x2[["estimate"]][["cor"]],x1_x2[["p.value"]])
  
  cor2 <- c(x1_x3[["estimate"]][["cor"]],x1_x3[["p.value"]])
  
  cor3 <- c(x2_x3[["estimate"]][["cor"]],x2_x3[["p.value"]])
  
  corr <- data.frame(cor1,cor2,cor3)
  corr
}

m <- corr(mtcars[,1],mtcars[,2],mtcars[,3])
names(cor3) <- c('person r','p')


m1 <- cat(m[["estimate"]][["cor"]],
            "p=",m[["p.value"]],
            "\n")
m2 <- cat('person r=',m[["estimate"]][["cor"]],
            "p=",m[["p.value"]],
            "\n")
m3 <- paste('person r=',m[["estimate"]][["cor"]],
            "p=",m[["p.value"]],sep = \n)
mm <- 

mm


aov(dat[,4]~dat[,2],dat)

seven <- function(x){
  re <- c()
  for (i in x) {
  #反向计分
  
    re_i <- ifelse(test = i==1, 7,
                   ifelse(test = i==2, 6, 
                          ifelse(test = i==3,5,
                                 ifelse(test = i==4, 4, 
                                        ifelse(test = i==5, 3, 
                                               ifelse(test = i==6, 2,
                                                      ifelse(test = i==7,1,4)))))))
    
    re <- append(re,re_i)
  
  }
  return(re)
}
seven(m)



#######孙振球<医学统计学>#######
#####2.1#####
setwd("C:/users/lenovo/desktop/")

rbc <- read.table("tst.txt",sep="\t",na.strings = "NA")
rbc <- as.matrix(rbc)
rbc_q <- c()
for (i in 1:nrow(rbc)){
  rbc_q <- c(rbc_q, rbc[i,])
}
typeof(rbc_q)
##[1] "list"
rbc_v <- as.vector(rbc_q)
rbc_v <- na.omit(rbc_v)
rge<-max(rbc_v)-min(rbc_v)
rge

iq <- quantile(rbc_v,0.75)-quantile(rbc_v,0.25)

h <- ceiling(3.49*min(sd(rbc_v),iq/1.349)*(length(rbc_v)^(1/3)))

#分组
breaks <- seq(min(rbc_v), max(rbc_v), length.out = h)
rbc_v.cut <-  cut(rbc_v, breaks, right=T,include.lowest=T)
rbc_v.freq <-  table(rbc_v.cut)


frec <- function(x){
  #全距
  rnge <- max(x)-min(x)
  cat("range = ",rnge,"\n")
  #组数h
  iq <- quantile(x,0.75)-quantile(x,0.25)
  h <- ceiling(3.49*min(sd(x),iq/1.349) * (length(x)^(1/3)))
  #组距interval
  i <- rnge/h
  cat("interval = ",i,"\n","groups = ",h,"\n")
 
  
  ## 生成每组区间左右两侧的值
  breaks <- seq(min(x),max(x),length.out = h)
  ##分割，把数据放在所属区间
  x.cut <- cut(x,breaks,right = T,include.lowest = T)
  ##频次统计
  x.frec <- table(x.cut)
  x.frec

}


breaks <- function(x){
  iq <- quantile(x,0.75)-quantile(x,0.25)
  h <- ceiling(3.49*min(sd(x),iq/1.349) * (length(x)^(1/3)))
  breaks <- seq(min(x),max(x),length.out = h)
  x.cut <- cut(x,breaks,right = T,include.lowest = T)
  x.frec <- table(x.cut)
  lst <- list(breaks,x.frec)
  names(lst) <- c('breaks','table')
  return(lst)
}

#画直方图
hist(x,right=F,breaks = breaks,
     lables=T,frec=T,col="#A8D6FF",
     boder="white", ylim = c(0,1))


m <- c(1,2,2,3,4,4,5,1,1,2,)
typeof(table(m))         
is.list(table(m))
is.data.frame(table(m))
is.array(table(m))
is.matrix(table(m))
is.vector(table(m))

#设置分组区间左右两侧的值
breaks = seq(min(rbc_v), max(rbc_v), length.out = 8)
#按照breaks将rbc切开，计算每个区间内的频次
rbc_v.cut = cut(rbc_v, breaks, right=T,include.lowest=T)

#频次统计
rbc_v.freq = table(rbc_v.cut)


#直方图
## y值为从0到1的频率直方图
hist(rbc_v, right=FALSE, probability = F,
     breaks = breaks, labels =TRUE, 
     freq = FALSE, col = "#A8D6FF", 
     border = "white", ylim=c(0,1))
lines(density(rbc_v),col="red",lwd=2)


x <- seq(-10, 10, by = .0001)
#创建一个均值是2.5，标准差是0.5正态分布 y
y <- dnorm(x, mean = 2.5, sd = 0.5)
#将 y 中的落在x数据集上的数据画出来
plot(x,y,col="red",pch=19)

library(fBasics)
fBasics::normalTest()#进行Kolmogorov-Smirnov正态性检验。
fBasics::ksnormTest(x)  #进行Kolmogorov-Smirnov正态性检验。
fBasics::shapiroTest(x)  #进行Shapiro-Wilk's正态检验。
fBasics::jarqueberaTest(x)  #进行jarque-Bera正态性检验。
fBasics::dagoTest(x = x)  #进行D'Agostino正态性检验。

library(carData)
library(car)
set.seed(42)
dat_hist <- data.frame( value = rnorm(12, mean = 165, sd = 5))
qqPlot(dat_hist$value)


####中介效应的尝试#####
setwd("C:/users/lenovo/desktop/")
dir()
dat <- read.csv("a.CSV")
x <- dat[,1]
y <- dat[,2]
m <- dat[,3]
fit1 <- lm(y~x)
fit2 <- lm(x~m)
fit3 <- lm(y~m+x)
fit4 <- lm(y~m+x)

plot(x,m)

?line()
plot(m,y)
plot(m,x)
plot(x,y,m)

##### curve of t distribution & normal distribution
curve(dnorm(x),xlim=c(-5,5),ylim=c(0,0.45),ylab="Student's t Density",col="red",lty=1,lwd=10)
abline(v=0,lwd=1,col="black")
curve(dt(x,1),col="green",lty=2,lwd=3,add=TRUE)
curve(dt(x,2),col="brown",lty=3,add=TRUE)
curve(dt(x,5),col="blue",lty=4,lwd=3,add=TRUE)
curve(dt(x,20),col="dark green",lty=5,add=TRUE)
curve(dt(x,30),col="blue",lty=6,add=TRUE)
legend(2,0.38,c("normal","df=1","df=2","df=5","df=20"),
       col=c("red","green","brown","blue","dark green"),lty=1:5)

#####单样本t检验
install.packages("memisc")
library("memisc")

setwd("C:/users/lenovo/desktop")
m <- read.table("1.txt",header=F)
home_df <- as.data.frame(m)
t.test(m$V1,mu=140)


t.value<--2.136668
df=35
x <- seq(-5,5,by=0.01)
y <- dt(x,df=df)
#右侧p值0.95对应的t值
right <- qt(0.95,df=df)
#左p值0.05对应的t值
left <- qt(0.05,df=df,lower.tail=T)
#绘制密度曲线
plot(x,y,type="l",xaxt="n",ylab="Probabilityy",
     xlab=expression(paste('Assumed Distribution of ',bar(x))),
     axes=FALSE,ylim=c(0,max(y)*1.1),xlim=c(min(x),max(x)),
     frame.plot=FALSE)
#添加坐标轴
axis(1,at=c(-5,left,right,0,5),
     pos = c(0,0),
     labels=c(expression(' '),expression(bar(x)[cil]),
              expression(bar(x)[cir]),expression(mu[0]),expression('')))
axis(2,pos = c(-5,0))
#标记左侧和右侧的拒绝域
xRiReject <- seq(right,5,by=0.01)
yRiReject <- dt(xRiReject,df=df,)
xLeReject <- seq(left,-5,by=-0.01)
yLeReject <- dt(xLeReject,df=df)

#用poltgon()绘制拒绝域
#使用scales包中alpha函数改变颜色透明度
library("scales")
polygon(c(xRiReject,xRiReject[length(xRiReject)],xRiReject[1]),
        c(yRiReject,0, 0), col=alpha("red",0.4),border=NA)
polygon(c(xLeReject,xLeReject[length(xLeReject)],xLeReject[1]),
        c(yLeReject,0, 0), col=alpha("red",0.4),border=NA)
#在坐标轴上添加t值标记
axis(1,at=c(t.value,-1*(t.value)),
     pos = c(0,0),lwd.ticks=1,
     labels=c( round(t.value,2),round(-1*(t.value),2)))
arrows(-1*(t.value),0, -1*(t.value), 0.4, length = 0,lty =2,col="blue")
arrows(t.value,0, t.value, 0.4, length = 0,lty =2,col="blue")


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


x <- seq(-1,1,by=0.1)
y=sqrt(1-x^2)+(x^2)^-3
plot(x,y)
f <- function(x,y){return(x^2+(y-(x^2)^-3)^2-1)}
root <- uniroot(f,c(-1,1),tol=0.1)


x <- c(NA, 1:3, -1:1/0); x
range(x)
range(x, na.rm = TRUE)
range(x, finite = TRUE)

#原数据
iq <- as.numeric(quantile(dat,0.75)-quantile(dat,0.25))
h = 3.49*min(sd(dat),iq/1.349) * (length(dat)^(1/3))
h
#中心化
dat1 <- dat-mean(dat)
iq <- as.numeric(quantile(dat1,0.75)-quantile(dat1,0.25))
h = 3.49*min(sd(dat1),iq/1.349) * (length(dat1)^(1/3))
h
#标准化
dat2 <- dat1/sd(dat)
iq <- as.numeric(quantile(dat2,0.75)-quantile(dat2,0.25))
h = 3.49*min(sd(dat2),iq/1.349) * (length(dat2)^(1/3))
h

h<-ceiling(h)

breaks = seq(min(dat), max(dat), length.out = 8)

dat.cut = cut(dat, breaks, right=T,include.lowest=T)
table(dat.cut)

hist(dat2, right=FALSE, 
     breaks = seq(min(dat2), max(dat2), length.out = 8), labels =TRUE, 
     freq = FALSE, col = "#A8D6FF", 
     border = "white", )

hist(dat2, right=FALSE, 
     breaks = seq(min(dat2), max(dat2), length.out = 8), 
     labels =TRUE, 
     freq = FALSE, 
     col = "000000", 
     border = "#A8D6FF", )
