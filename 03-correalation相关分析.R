library(pheatmap)
library(corrplot)
x <- mtcars
c <- cov(x)
pheatmap::pheatmap(c)

corrplot(c <- cor(x))#默认是圆圈
corrplot(c,method='pie')
corrplot(c,method='pie',col="gray",cl.pos="n")#调整颜色
corrplot(c,method='number')
corrplot(c,method='color',addCoef.col = 'black')#加入数值
#设置颜色
col.color = colorRampPalette(c('navy','white','firebrick3'))
#倒三角
corrplot(c,type='upper')#下三角：lower'全部：full
#下三角加入数值
corrplot(c,col = 'white',type='lower',add=TRUE,addCoef.col = 'green', method='color')
colorRampPalette(c('transparent'))
corrplot(corr='cordata',method="color",
         order="AOE",addCoef.col="grey",color(col.color))
