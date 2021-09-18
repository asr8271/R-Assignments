p<-0
q<-1
n<-20
h<-(q-p)/n
h
x<- seq(p,q,h)
x
f<-function(x)
{
  a<- 2
  b<- 1
  s = a*b*x^(a-1*(1-x)^(b-1))
  return(s)
}
y <- f(x)
y[length(y)]=0
y
N <- length(y)
N

#Trapezoidal_rule

sum1 <- 0;
for(i in 2:N-1)
{
  sum1 <- sum1 + 2*y[i]
}
j<- (h/2)*(y[1] + y[N]+sum)
s1<- j
s1
f<-function(x)
{
  a<- 2
  b<- 1
  s = a*b*x^(a-1*(1-x)^(b-1))
}
s2<-integrate(f,          # Apply integrate in R
          lower = 0,
          upper = 1)
s2
s2<-1


################################################################
x<- seq(p,q,h)
x
o <- f(x)
o[length(o)]=0

N <- length(o)
N 
#Simpsons_Rule
sum2<- 0
for(i in 1:N)
{
  if ((i == 1) | (i == N))
  {
    sum2<- sum2 + o[i]
  }
  else if (i %% 2 == 0)
  {
    sum2<- sum2 + 4 * o[i]
  }
  else
  {
    sum2<- sum2 + 2 * o[i]
  }
}
sum2 <- sum2 * (h / 3);
t<- sum2
s1
t
s1-t
(abs(s1-t)/s1)*100

##############
#relative error by using trapezoidal rule for n=20
(abs(s1-s2)/s2)*100

#relative error by using simpsons 1/3 rule for n=20
(abs(t-s2)/s2)*100
##################################################################
