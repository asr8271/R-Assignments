func <- function(x){
  fu1 <- exp(x) -1 -x - (x^2)/2 -((x^3)*exp(0.3*x))/6;
  return(fu1);
} 

curve(func, col = 'blue', lwd = 2, from = 0, n = 100, xlim=c(0, 5), ylab='f(x)')
abline(a=0, b=0, lty = 5)

newton.raphson <- function(f, a, b, tol = 1e-5, n = 1000) {
  require(numDeriv) 
  
  x0 <- a 
  k <- n 
  
  fa <- f(a)
  if (fa == 0.0) {
    return(a)
  }
  
  fb <- f(b)
  if (fb == 0.0) {
    return(b)
  }
  
  for (i in 1:n) {
    dx <- genD(func = f, x = x0)$D[1]
    x1 <- x0 - (f(x0) / dx) 
    k[i] <- x1 
    if (abs(x1 - x0) < tol) {
      root.approx <- tail(k, n=1)
      res <- list('root approximation' = root.approx, 'iterations' = k)
      return(res)
    }
    x0 <- x1
  }
  print('Too many iterations in method')
}
newton.raphson(func, 1, 3)

