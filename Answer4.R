check_prime<- function(x)
{
  a=0
  for( i in 1:x)
  {
    if(x%%i==0)
    {
      a=a+1
    }
  }
  if(a==2)
  {
    print('Given number is prime')
  }
  else
  {
    if(x==1)
    {
      print('Neither Prime number nor composite number')
    }
    else
    {
      print('Given number is Composite number')
    }
  }
}
check_prime(48)
check_prime(61)
check_prime(7)
check_prime(2)
check_prime(1)
check_prime(1)
check_prime(79)
check_prime(4)
check_prime(11)
check_prime(2)

