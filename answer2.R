a<- 1.2
b<- 1.6
n<- 4
h<- (b-a)/n
h
x<- seq(a,b,h)
x
integrand <- function(x){
  i <- x+(1/x)
  return(i)
}
y <- integrand(x)
y
N <- length(y)
N
#Trapezoidal_rule

sum1 <- 0;
for(i in 2:(N-1))
{
  sum1 <- sum1 + 2*y[i]
}
j<- (h/2)*(y[1] + y[N] + sum1)
format(round(j,2))

#Simpsons_Rule
y
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
format(round(sum2,2))

