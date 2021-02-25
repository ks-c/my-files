#for loop
#for循环的结构：for(i in vector){code}
#for中的i会依次变成vector里的值，然后执行code的命令。

counter <- 0
for(myindex in 4:6){
  counter <- counter+1
  cat('the',counter,'number is',myindex,'\n')
}

i <- 0
for(i in a <- c(1:10)){
  i <- i+1
  print(i)
}

counter <- 0
myvector <- 4:6
for (myindex in 1:length(myvector)){
  counter <- counter+1
  cat('第',counter,'个数字是',myvector[myindex],'\n')
  
}

a <- c('我','是','你','爹')
for (i in a) {
  print(i)
  
}

love=c(1:300)
for (i in love) {
  u <- c("the")
  x <- paste(u,i,'time i love u')
  print(x)
}


#-----new year's first code for the world-----
newyear <- 2020 + 1
for(i in newyear){
  rm()
  q()
}


newyear <- 2020 + 1
times <- 1:newyear
for (i in times) {
  x <- c('the')
  y <- c('time for happy new year')
  print(paste(x,i,y))
}

