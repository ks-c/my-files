
#--------随机生成100个数列的pca------
random.eig<-matrix (0, nrow=100, ncol=25)#100=随机矩阵数目，25是被试量

for (i in 1:100){random.data<-
  matrix (rnorm (255*25) , nrow=255, ncol=25)
random.eig[i, ]<-
  eigen (cor (random.data) ) $values}

average.eig<-apply (random.eig, 2, mean)
average.eig

random.eig<-matrix (0, nrow=100, ncol=33)#100=随机矩阵数目，255是被试量,25是观测变量数目

for (i in 1:100){random.data<-
  matrix (rnorm (333*33) , nrow=333, ncol=33)
random.eig[i, ]<-
  eigen (cor (random.data) ) $values}

average.eig<-apply (random.eig, 2, mean)
average.eig
pca1 <- average.eig
pca <- princomp(pca1,cor=F) 
#-------

#-----------词云-------
library(jiebaR)
wk<-worker()
a <- wk['中介不要跑路就好
正规合理
真实性
真实点
暂无
有保障，更安全
性价比高一些
希望者权益能够得到更好的保障
希望按实际情况
希望真实可靠度要高，先查清楚房源底细，
希望透明化
希望能够有监督机制
希望价格优惠，信誉第一
希望房屋中介能多把关 提升质量
希望法律能规范下市场的押金和房租！拒绝乱涨价
希望安全
无哦
我觉得把中介完全可以把更多资金放在技术开发上，这样人力资源就可以发更低的工资 然后人就不值钱啦
完善市场管理政策
挺好的
事实求是，不夸大其词
进一步推动基础设施建设
交了押金得不到相应的售后保障服务
降低租金
价格透明、卫生条件要好，基础设施完善
价格便宜
加油
加以严格要求，明确法律监督，保障住房安全
加强政策支持
加强市场监管 规定收费制度 抑制乱收费情况 并且随时检测房内设备
加强监管
基本无意义
很好
公正，合理
房价下调，质量提高
房价低点吧
法律干预，减少房东意思自治的比重。
法律法规保障更完善
多给点优惠
对于翻新房源，甲醛能得到很好的控制，不危害健康
诚实守信
不要夸大其词，
便宜些
保障租客权益
奥利给
安全真实
安全系数
']
b <- freq(a)
wordcloud2(b,shape='square')
c <- head(b)
c

#-----

