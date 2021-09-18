x<- c(21,22,23,24,21,26,28,28,27,31,32,33,36,38,39,37,42,44,49)
hist(x,ylim=c(0,6),xlim=c(20,50),xlab="Marks in Statistics", ylab="number of student",col="red",main="Number of Students v/s Marks in Statistics",labels= TRUE)

summary(x)

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
print(find_mode(x))