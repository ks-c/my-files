#----------方差相等----------#
#--按要求输入数字--#
na <- 100#------样本量n1
nb <- 100#------样本量n2
sa <- 3.5#-------标准差s1
sb <- 1.4#-------标准差s2
xbar.a <- 10#---均值x1
xbar.b <- 40#---均值x2

#-----------------分割线-----------------#
sp.square <- ((na-1)* (sa^2)+(nb-1)*(sb^2)/(na+nb-2))
sp <- sp.square^(1/2)
n.square <- 1/na + 1/nb
n <- n.square^(1/2)
t <- (xbar.a - xbar.b)/(sp*n)
p <- pt(t,na+nb-2)
###
print(data.frame(t,p))

p <- data.frame(t,p)%>%print()

sp <- ((na-1)* (sa^2)+(nb-1)*(sb^2)/(na+nb-2))%>%sqrt()
sp

