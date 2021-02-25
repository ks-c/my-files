#绘图

plot(pressure$temperature,pressure$pressure,type="l")#line plot
points(pressure$temperature,pressure$pressure)

myfunc <- function(xxx){
  1/(1 + exp(-xxx + 10))
}
curve(myfunc,from = 0, to = 20,)#函数图像

library(ggplot2)
dat=diamonds[sample(nrow(diamonds),200),]
qplot(log(carat),log(price),data=diamonds,colour=color)
qplot(carat,price,data=dat,alpha=I(1/2))#透明度
qplot(carat,price,data=dat,shape=cut)#不同形状
qplot(carat,price,data=dat,geom="smooth")
#geom="histogram"
#geom="freqploy"
#geom="density"
#geom="bar"
#boxplot

library(splines)#liner regression package
qplot(carat,price,data=dat,
      method="lm",formula=y~ns(x,5),
      geom="smooth")

qplot(color,price,data=dat,
      geom="boxplot")+geom_boxplot(fill="blue",
                                   size = 1,
                                   outlier.colour = "green",
                                   outlier.size = 3,
                                   outlier.alpha = I(1/2))
library(ggplot2)
qplot(unemploy/pop,uempmed,data=economics,geom="path")
economics <- ggplot2::economics$uempmed

library(esquisse)
esquisse::esquisser()

B <- matrix(rbind(c(1,3,6),c(2,4,8),c(1,2,5)),nr=3);B
z <- c(4,6,7);z
solve(B,z)
