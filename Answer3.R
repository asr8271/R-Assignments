a<- c('-4', '44.7', '-2', '40', '54', '1', '-3', '4')
find_max<- function(x)
{
  maximum=x[1]
  for(i in 1:length(x))
  {
    if(x[i]>maximum)
    {
      maximum = x[i]
    }
  }
  print(maximum)
}
find_max(a)
