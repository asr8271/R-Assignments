fact<- function(x)
{
  if(x==0 || x ==1)
  {
    print(1)
  }
  else
  {
    print(x*fact(x-1))
  }
}
fact(13)
fact(22)