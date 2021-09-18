a<- c(4, 8, 10, 5, 6, 12)

check_value<- function(x,n)
{
  a=0
  for(i in 1:length(x))
  {
    if(x[i]==n)
    {
      cat('Value found in the Vector at position :',i)
      a=a+1
      break
    }
  }
  if(a==0)
  {
    print('***** Value NOT found in the Vector *****')
  }
}
check_value(a,5)
check_value(a,4)
check_value(a,8)
check_value(a,10)
check_value(a,12)
check_value(a,25)
