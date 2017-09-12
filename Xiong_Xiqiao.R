# It is a part of project of R programming.

options(max.print=10000000)
options(scipen = 999)
st <- system.time( {
a<-seq(3,2000001,by=2)
b<-(a^2-1)/2
c<-(a^2+1)/2
res <- array(
  c(a,b,c),
  dim = c(1000000, 3),
  dimnames = list(
    c(seq(1,1000000)),
    c("a", "b", "c")
  )
)
res
}
)

cat("Xiong Xiqiao \n")
cat(dim(res),"\n")
cat(min(res),max(res),"\n")
cat(sum(res[,1]^2 + res[,2]^2 - res[,3]^2), "\n")
print(st)

