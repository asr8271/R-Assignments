a<- 0
b<- 0.4
n<-4
h<- (b-a)/n
y<-c(1,0.9975,0.99,0.9776,0.8604)
N <- length(y)
N

########simpsons 3/8 rule ##############
sum3<- 0
for(i in 1:N)
{
  if ((i == 1) | (i == N))
  {
    sum3<- sum3 + y[i]
  }
  else if ((i %% 3 == 0) |(i%%3==2))
  {
    sum3<- sum3 + 3 * y[i]
  }
  else
  {
    sum3<- sum3 + 2 * y[i]
  }
}
sum3 <- sum3 * ((3*h) / 8);
sum3

