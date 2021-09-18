a<- 8
b<- 30
n<- 4
h<- (b-a)/n
h
t<- seq(a,b,h)
f<- function(t)
{
  return (2000*log(140000/(140000-(2100*t)),base=2.718281828459045) - 9.8*t)
}

y <- f(t)
N <- length(y)
N
#Simpsons_Rule
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

#simpson_3/8_rule
a<- 8
b<- 30
n2<- 3
h2<- (b-a)/n2
h2
t<- seq(a,b,h2)
f<- function(t)
{
  return (2000*log(140000/(140000-(2100*t)),base=2.718281828459045) - 9.8*t)
}

z <- f(t)
z
N <- length(z)
N
sum3<- 0
for(i in 1:N)
{
  if ((i == 1) | (i == N))
  {
    sum3<- sum3 + z[i]
  }
  else if ((i %% 3 == 0) |(i%%3==2))
  {
    sum3<- sum3 + 3 * z[i]
  }
  else
  {
    sum3<- sum3 + 2 * z[i]
  }
}
sum3 <- sum3 * ((3*h2) / 8);
sum3


