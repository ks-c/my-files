
#-----爬虫-----
#rvest包
install.packages('rvest')
read_html()#读取网址
html_nodes()#选择指定元素、节点
html_text()#提取标签内的文本
html_attrs()#提取属性名称及内容

#html简介：描述网页的语言，超文本标记语言
#

library(rvest)
url <- 'https://www.thepaper.cn/'
web <- read_html(url)
web
#读取节点为h2，a的元素
news <- html_nodes(x = web,'h2 a')
news <- web %>% html_nodes( 'h2 a')#the same as 【news <- html_nodes(x = web,'h2 a')】
#仅读取文字
title <- news%>%html_text()
#提取所有属性名称(网址)
link <- news%>% html_attrs()

link1 <- c(1:length(link))

#将link1中的数字换成网络地址
for(i in 1:length(link)){
  link1[i] <- link[[i]][1]
}
link2 <- paste('http://www.thepaper.cn/',link1,sep = "")

#获取标题
news_content <- c(1:length(link2))
for (i in 1:length(link2)) {
  news_content[i] <- read_html(link2[i])  %>%  html_nodes('div.news_txt')  %>%  html_text()
}
#合并
news1 <- data.frame(url=link2,news_content)

save(news1,file='D:\\0a文件夹\\thepaper.Rdata')
write.csv(news1,file = 'D:/0a文件夹/thepaper.csv' )
#-----pipeline-----
a <- mtcars
b <- a%>%cor()
b
c <- cor(a)
c
f1 <- function(x){return(x+1)}
f2 <- function(x){return(x^2)}
f3 <- function(x){return(sin(x))}
a <- 1
b <- a%>%f1%>%f2%>%f3
b

