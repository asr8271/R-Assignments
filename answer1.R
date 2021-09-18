a<- 0
b<- 10
n<- 10
h<- (b-a)/10;
x<- seq(a,b,h)
x
integrand <- function(x){
  i <- 2^x;
  return(i)
}
y <- integrand(x)
y
N <- length(y)
sum <- 0;
for(i in 2:(N-1))
  {
     sum <- sum + 2*y[i]
  }
j<- (h/2)*(y[1] + y[N]+sum)
j