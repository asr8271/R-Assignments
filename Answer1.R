A<- matrix(nrow=2,ncol=3, data=c(-4,12,5,-17,7,8))
A
B<- matrix(nrow=3,ncol=2, data=c(41,-27,5,15,-24,91))
B
mul_func<- function(A,B)
{
  X<- A
  Y<- B
  for(r in 1:nrow(X))
  {
    for(c in 1:ncol(Y))
    {
      p<- matrix(nrow=r,ncol=c,data =0)
    }
  }
  for(r in 1:nrow(X))
  {
    for(c in 1:nrow(X))
    {
      for(k in 1:nrow(Y))
      {
        p[r,c]<- p[r,c]+ (X[r,k] * Y[k,c])
      }
    }
  }
  print(p)
}
mul_func(A,B)
AB<- mul_func(A,B)
AB_Transpose<- t(AB)
AB_Transpose
AB_Inverse<- solve(AB)
AB_Inverse

Mean_A_1st_row<- mean(A[1,])
Mean_A_1st_row
Mean_A_2nd_row<- mean(A[2,])
Mean_A_2nd_row
Mean_A_1st_col<- mean(A[,1])
Mean_A_1st_col
Mean_A_2nd_col<- mean(A[,2])
Mean_A_2nd_col
Mean_A_3rd_col<- mean(A[,3])
Mean_A_3rd_col
Mean_B_1st_row<- mean(B[1,])
Mean_B_1st_row
Mean_B_2nd_row<- mean(B[2,])
Mean_B_2nd_row
Mean_B_3rd_row<- mean(B[3,])
Mean_B_3rd_row
Mean_B_1st_col<- mean(B[,1])
Mean_B_1st_col
Mean_B_2nd_col<- mean(B[,2])
Mean_B_2nd_col
Std_dev_A_1st_row<- sd(A[1,])
Std_dev_A_1st_row
Std_dev_A_2nd_row<- sd(A[2,])
Std_dev_A_2nd_row
Std_dev_A_1st_col<- sd(A[,1])
Std_dev_A_1st_col
Std_dev_A_2nd_col<- sd(A[,2])
Std_dev_A_2nd_col
Std_dev_A_3rd_col<- sd(A[,3])
Std_dev_A_3rd_col
Std_dev_B_1st_row<- sd(B[1,])
Std_dev_B_1st_row
Std_dev_B_2nd_row<- sd(B[2,])
Std_dev_B_2nd_row
Std_dev_B_3rd_row<- sd(B[3,])
Std_dev_B_3rd_row
Std_dev_B_1st_col<- sd(B[,1])
Std_dev_B_1st_col
Std_dev_B_2nd_col<- sd(B[,2])
Std_dev_B_2nd_col
Mean_AB_1st_row<- mean(AB[1,])
Mean_AB_1st_row
Mean_AB_2nd_row<- mean(AB[2,])
Mean_AB_2nd_row
Mean_AB_1st_col<- mean(AB[,1])
Mean_AB_1st_col
Mean_AB_2nd_col<- mean(AB[,2])
Mean_AB_2nd_col
Std_dev_AB_1st_row<- sd(AB[1,])
Std_dev_AB_1st_row
Std_dev_AB_2nd_row<- sd(AB[2,])
Std_dev_AB_2nd_row
Std_dev_AB_1st_col<- sd(AB[,1])
Std_dev_AB_1st_col
Std_dev_AB_2nd_col<- sd(AB[,2])
Std_dev_AB_2nd_col
Mean_AB_1st_row<- mean(AB_Transpose[1,])
Mean_AB_1st_row
Mean_AB_2nd_row<- mean(AB_Transpose[2,])
Mean_AB_2nd_row
Mean_AB_1st_col<- mean(AB_Transpose[,1])
Mean_AB_1st_col
Mean_AB_2nd_col<- mean(AB_Transpose[,2])
Mean_AB_2nd_col
Std_dev_AB_1st_row<- sd(AB_Transpose[1,])
Std_dev_AB_1st_row
Std_dev_AB_2nd_row<- sd(AB_Transpose[2,])
Std_dev_AB_2nd_row
Std_dev_AB_1st_col<- sd(AB_Transpose[,1])
Std_dev_AB_1st_col
Std_dev_AB_2nd_col<- sd(AB_Transpose[,2])
Std_dev_AB_2nd_col
Mean_AB_1st_row<- mean(AB_Inverse[1,])
Mean_AB_1st_row
Mean_AB_2nd_row<- mean(AB_Inverse[2,])
Mean_AB_2nd_row
Mean_AB_1st_col<- mean(AB_Inverse[,1])
Mean_AB_1st_col
Mean_AB_2nd_col<- mean(AB_Inverse[,2])
Mean_AB_2nd_col
Std_dev_AB_1st_row<- sd(AB_Inverse[1,])
Std_dev_AB_1st_row
Std_dev_AB_2nd_row<- sd(AB_Inverse[2,])
Std_dev_AB_2nd_row
Std_dev_AB_1st_col<- sd(AB_Inverse[,1])
Std_dev_AB_1st_col
Std_dev_AB_2nd_col<- sd(AB_Inverse[,2])
Std_dev_AB_2nd_col

Row1_sum_A<- A[1,1]+A[1,2]+A[1,3]
Row1_sum_A
Row2_sum_A<- A[2,1]+A[2,2]+A[2,3]
Row2_sum_A
Col1_sum_A<- A[1,1]+A[2,1]
Col1_sum_A
Col2_sum_A<- A[1,2]+A[2,2]
Col2_sum_A
Col3_sum_A<- A[1,3]+A[2,3]
Col3_sum_A

Row1_sum_B<- B[1,1]+B[1,2]
Row1_sum_B
Row2_sum_B<- B[2,1]+B[2,2]
Row2_sum_B
Row3_sum_B<- B[3,1]+B[3,2]
Row3_sum_B
Col1_sum_B<- B[1,1]+B[2,1]+B[3,1]
Col1_sum_B
Col2_sum_B<- B[1,2]+B[2,2]+B[3,2]
Col2_sum_B

