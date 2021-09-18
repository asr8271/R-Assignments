a<- -1
b<- 1
n<- 4
h<- (b-a)/n
h
x<- seq(a,b,h)
x
integrand <- function(x){
  i <- 1/(2 + cos(x))
  return(i)
}
y <- integrand(x)
N <- length(y)
sum2<- 0
for(i in 1:N)
{
  if ((i == 1) | (i == N))
  {
    sum2<- sum2 + y[i]
  }
  else if (i %% 2 == 0)
  {
    sum2<- sum2 + 4 * y[i]
  }
  else
  {
    sum2<- sum2 + 2 * y[i]
  }
}
sum2 <- sum2 * (h / 3);
format(round(sum2,3))

