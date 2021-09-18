a<- c(5, 10, 6, 8, 12, 16, 20, 10, 16, 15)

find_mean<- function(x)
{
  sum=0
  for(i in 1:length(x))
  {
    sum=sum+x[i]
  }
  print(sum/length(x))
}

find_median<- function(x)
{
  for(i in 1:(length(x)-1))
  {
    for(j in 1:(length(x)-i))
    {
      if(x[j]>x[j+1])
      {
        temp <-x[j]
        x[j] <-x[j+1]
        x[j+1]<-temp
      }
    }
  }
  x
  if(length(x)%%2==1)
  {
    print(x[(length(x)/2)+1])
  }
  else
  {
    print((x[(length(x)/2)] + x[(length(x)/2)+1])/2)
  }
}

find_mode<- function(x)
{
  counter <- c()
  i <- 1
  for(num1 in x[1: (length(x) - 1)])
  {
    i<- i + 1
    j<- 1
    for(num2 in x[i: length(x)])
    {
      if(num1 == num2) 
        j<- j + 1
    }
    counter<- c(counter, j)
  }
  counter
  
  data<- max(counter) 
  
  mode_vec<- c() 
  
  for(num in 1: length(counter))
  {
    if(data == counter[num])
      mode_vec<- c(mode_vec, x[num])
  }
  return(mode_vec)
}
print(find_mode(a))

Mean_Value<- find_mean(a)
Median_Value<- find_median(a)
