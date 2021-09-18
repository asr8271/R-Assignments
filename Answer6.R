fib_num<- function(x)
{
  a=0
  b=1
  n=a+b
  print(0)
  print(1)
  for(c in 3:x)
  {
    print( n)
    a=b
    b=n
    n=a+b
  }
}
fib_num(10)