setwd("C:\\Users\\Lenovo\\Desktop")
dir()
wss <- read.csv("wss.csv",header = T,)
head(wss)
#-----preview knowledge of repalce NA in ur data-----
#is.na(wss):查看个案有没有na
#complete.cases(wss):查看个案是否完整（非na）
sum(is.na(wss))
sum(complete.cases(wss))

#将完整个案保存
wss1 <- wss[complete.cases(wss)]

#删除na
wss.omit <- na.omit(wss)

#替换为0（或任意数）
wss[is.na(wss)] <- 0
wss[wss==0] <- 9999
#-----
View(wss)
#-----均值替换法-----
write.csv(wss,'wss1.csv')



wss[is.na(wss)] <- mean(wssna,na.rm = T)
attach(wss)
detach(wss)
View(wss)


a <- read.csv("dat2.csv" ,header=T)
a[is.na(a)] <- 999
write.csv(a,"dat.csv")
head(a)
