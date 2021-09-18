A<-matrix(c(1,-2,3,-1,3,-1,2,-5,5),nrow=3,byrow=TRUE)
A
B<-matrix(c(9,-6,17))
B
solving_equation<- function(matrix)
{
  if(det(matrix) == 0)
  {
    return("The system cannot give unique solution")
  }
  else{
    C<- solve(A,B)
    return(C)
  }
}
C<- solving_equation(A)
cat('value of x = ',C[1])
cat('value of y = ',C[2])
cat('value of z = ',C[3])
