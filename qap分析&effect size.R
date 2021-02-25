#--------effect size:效应量--------
library(pwr)
pwr.t.test(n=30, #或者已知样本容量求effect size <- d的大小
           sig.level=0.05,
           power=.9, 
           type="two.sample", 
           alternative="two.sided")






piepie <- pie(x=a,labels = name1,edges = 800,radius = 1.05)

a <- c(a <- 9,b <- 34,c <- 268 ,d<- 22)



qap
install.packages('cns')



#------qap分析-----
#标签命名
label <- c('a','b','c','d')
#创建矩阵ymat
ymat <- matrix(data=c(NA,1,0,1,
                      1,NA,0,0,
                      0,0,NA,1,
                      1,0,1,NA),byrow=T,ncol=4)
colnames(ymat) <- label
rownames(ymat) <- label
print(ymat)
#创建矩阵xmat
xmat <- matrix(data=c(NA,1,0,0,
                      1,NA,0,0,
                      0,0,NA,0,
                      0,0,0,NA),byrow=T,ncol=4)
colnames(xmat) <- label
rownames(xmat) <- label
print(xmat)
#转化为长向量
ytemp <- c(NA,1,0,1,
           1,NA,0,0,
           0,0,NA,1,
           1,0,1,NA)
xtemp <- c(NA,1,0,0,
           1,NA,0,0,
           0,0,NA,0,
           0,0,0,NA)
cor.test(ytemp,xtemp,method = 'pearson')
#sna包计算相关
library(sna)
gcor(dat=ymat, dat2 = xmat,diag=F ,mode = 'graph')
qaptest(list(ymat,xmat),gcor,reps = 1000,g1=1, g2=2)
#Estimated p-values:
#p(f(perm) >= f(d)): 0.499 ：
#p(f(perm) <= f(d)): 1 ：相关系数gcor小于或等于实际相关系数的概率
#--------

