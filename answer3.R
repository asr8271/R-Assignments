library(spuRs)
library(nleqslv);
library(pracma);
library(NLRoot);
library(MASS)
func <- function(x){
  fu1 <- ((x^3) + 4*(x^2) -10);
  return(fu1);
} 
xstart <- (-2);
fixedpoint(func, xstart, tol=1e-03, max.iter=100)

l<- func(1.365)
l
curve(func, xlim=c(-3,3), col='blue', lwd=1.5, lty=2)
abline(h=0)
abline(v=0)

nearest_root_value<- -2


#define a g(x) function
funcg2<- function(x)
{
  return((10 / (x + 4))^(1/2))
}


finding_root<- function(x)
{
  n = 1000
  tol = 1e-3
  x2<- x
  
  for(i in 1:n)
  {
    x_root<- funcg2(x2)
    if(abs(x2 - x_root) == tol )
      return(x_root)
    if(abs(x2 - x_root) < tol)
      return(x_root)
    x2<- x_root
    
  }
}


root<- finding_root(2)
root
