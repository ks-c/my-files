#########计算Cohen‘s D value###########
set.seed(45)                        ## be reproducible 
x <- rnorm(10, 10, 1)                
y <- rnorm(10, 5, 5)
#单样本t检验的科恩d值
cohen_d <- function(x,mu){
  return((mean(x)-mu)/sd(x))
}

#独立样本t检验的科恩d值
cohens_d <- function(x, y) {
  lx <- length(x)- 1
  ly <- length(y)- 1
  md  <- mean(x) - mean(y)        ## mean difference (numerator) 均值差异
  csd <- ( lx * var(x) + ly * var(y) ) / (lx + ly)
  csd <- sqrt(csd)                     ## common sd computation 联合方差
  
  cd  <- md/csd                        ## cohen's d
  return(cd)
}
res <- cohens_d(x, y)
res


lsr::cohensD(x,y)

#相关样本t检验的科恩d值
cohens_d <- function(x, y){
  d <- x-y
  m_d <- mean(d)
  sd_d <- sd(d)
  cd <- m_d/sd_d
  return(cd)
}


m <- c(19,20,24,30,31,32,30,27,22,25 ) 

set.seed(100)
norm1 <- rnorm(2000,5,5)
norm2 <- rnorm(2000,20,5)
breaks <- seq(min(norm1),max(norm1),length.out = 30)
breaks2 <- seq(min(norm2),max(norm2),length.out = 30)
hist(norm1,breaks = breaks, freq = FALSE)
hist(norm2,breaks = breaks2, freq = FALSE)
hist(0,xlim = c(min(norm1),max(norm2)),ylim=c(0,0.1),col = "transparent",border = "transparent")
lines(density(rnorm(1000,20,5)))
lines(density(rnorm(1000,5,5)))
lines("x"=15)

