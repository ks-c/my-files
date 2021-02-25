#根据n(mean1,sd1,mean2,sd2)中的四个参数生成两组正态分布(默认为0,1的标正。
#返回为列表，列表中一次为t值和p值原始数据。
n <- function(mean1=0,sd1=1,mean2=0,sd2=1){
  v1 <- rnorm(30,mean1,sd1)
  v2 <- rnorm(30,mean2,sd2)
  v <- data.frame(v1,v2)
  vp <- t.test(v1,v2,paired = F)
  v.t <- vp[["statistic"]]
  v.p <- vp[["p.value"]]
  out <- list(v.t,v.p,v)
  names(out) <- c('t','p','data')
  return(out)
}

#如果ttype=0，则生成均值为mean0，标准差为sd0的两组无差异的数据
#如果ttype=1，则生成均值为mean0，mean0+tmean，标准差为sd0的两列有显著差异的数据
m <- function(mean0,sd0,tmean=0,ttype=0){
  #n()函数的定义
  n <- function(mean1=0,sd1=1,mean2=0,sd2=1){
    v1 <- rnorm(30,mean1,sd1)
    v2 <- rnorm(30,mean2,sd2)
    v <- data.frame(v1,v2)
    vp <- t.test(v1,v2,paired = F)
    v.t <- vp[["statistic"]]
    v.p <- vp[["p.value"]]
    out <- list(v.t,v.p,v)
    names(out) <- c('t','p','data')
    return(out)
  }
  
  #如果ttype=1，那么就是生成两列均值为mean0,标准差为sd0的数据
  if(ttype==0){
    p <- n(mean0,sd0,mean0,sd0)
    while(p[[2]]<0.05){
      p <- n(mean0,sd0,mean0,sd0)
    }
    return(p)
    
  }else{
    #否则就生成两组均值相差为tmeand的数据
    p <- n(mean0,sd0,mean0+tmean,sd0)
    while(p[[2]]>0.05){
      p <- n(mean0,sd0,mean0+tmean,sd0)
    }
    return(p)
  }
  
}


qq <- function(a1=0,a2=0,a3=0,a4=0,a5=0,a6=0){
  n <- list()
  p <- list()
  a <- c(a1,a2,a3,a4,a5,a6)
  for (i in a) {
    n1 <- rnorm(30,i,0.8)
    n2 <- rnorm(30,i,0.8)
    n <- list(n1,n2)
    p <- append(p,n )
  }
  
  q <- matrix(NA,ncol = length(p),nrow = 30)
  for (i in 1:length(p)) {
    q[,i] <- p[[i]]
  }
  return(q)
}


#生成length(a)组正态数，每组两列，返回为矩阵
qq <- function(a,asd,geshu){  #a：每组的均值；geshu：每组数据的个数
  n <- list()
  p <- list()
  
  for (i in a) {
    n1 <- rnorm(geshu,i,asd)
    n2 <- rnorm(geshu,i,asd)
    n <- data.frame(n1,n2)
    p <- append(p,n)
  }
  
  q <- matrix(NA,ncol = length(p),nrow = 30)
  for (i in 1:length(p)) {
    q[,i] <- p[[i]]
  }
  return(q)
}





