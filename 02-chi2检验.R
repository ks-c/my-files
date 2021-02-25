#----联表的卡方检验-----
#配合度检验
#we should always know that there have been former reeachers helped me with my problems 
x <- c(8,2,5,5,1,5,2,3,1)
chisq.test(x = x , y = NULL, 
           correct = T , 
           p = ,
           rescale.p = ,
           simulate.p.value = , 
           B = )
#correct：FLASE表示不进行连续修正
chisq.test(x)
#-----the end-----

#-----2x2d cross-table：2x2的联表差异性检验-----
a <- c(60,32,3,11)
a <- matrix(a, nrow = 2, ncol = 2)
rownames(a) <- c('smoke','nosmoke')
colnames(a) <- c('cancer','nocancer')
print(a)

chisq.test(a)

#相关样本的联表检验
#不能用pearson chi2检验，应用McNemar检验
X<-c(49, 21, 25, 107)
dim(X)<-c(2,2)#X的维度有两行两列
X
rownames(X) <- c('甲+','甲-')
colnames(X) <- c('乙+','乙-')

mcnemar.test(X,correct = F)
#-----the truely end-----

#-----用符号分析，检验某数据的中位数在总数据上还是在下-----
X <- c(66,75, 78 ,80 ,81 ,81 ,82, 83, 83, 83, 83,
       84 , 85, 85, 86, 86, 86, 86, 87 ,87, 88, 88,
       88, 88, 88, 89 ,89, 89, 89, 90 ,90 ,91 ,91,
       91 ,91, 92, 93, 93, 96, 96, 96, 97, 99, 100,
       101, 102, 103, 103 ,104, 104, 104 ,105, 106, 109, 109,
       110 ,110, 110, 111, 113, 115, 116, 117 ,118, 155 ,192)
#假设某数据的中位数为99
binom.test(sum(X>99), length(X), al="l")
binom.test(x = sum(X>99), n = length(X) , alternative = 'l')
#alternative:l-lesser; g-greater; two.sides
