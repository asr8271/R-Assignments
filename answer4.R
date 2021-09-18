a1<- c(3,-2,1)
a2<- c(-1,4,-2)
A<- rbind(a1,a2)
a3<- c(3,-1)
a4<- c(-2,4)
a5<- c(1,-2)
cbind(a3,a4,a5)
b1<- c(-7,4)
b2<- c(9,5)
b3<- c(2,-1)
B<-rbind(b1,b2,b3)
b4<- c(-7,9,2)
b5<- c(4,5,-1)
cbind(b4,b5)
Matrix_Multiplication<- A%*%B
Matrix_Multiplication
Transpose<- t(Matrix_Multiplication)
Transpose
Inverse<- solve(Matrix_Multiplication)
Inverse
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
Mean_AB_1st_row<- mean(Matrix_Multiplication[1,])
Mean_AB_1st_row
Mean_AB_2nd_row<- mean(Matrix_Multiplication[2,])
Mean_AB_2nd_row
Mean_AB_1st_col<- mean(Matrix_Multiplication[,1])
Mean_AB_1st_col
Mean_AB_2nd_col<- mean(Matrix_Multiplication[,2])
Mean_AB_2nd_col
Std_dev_AB_1st_row<- sd(Matrix_Multiplication[1,])
Std_dev_AB_1st_row
Std_dev_AB_2nd_row<- sd(Matrix_Multiplication[2,])
Std_dev_AB_2nd_row
Std_dev_AB_1st_col<- sd(Matrix_Multiplication[,1])
Std_dev_AB_1st_col
Std_dev_AB_2nd_col<- sd(Matrix_Multiplication[,2])
Std_dev_AB_2nd_col
Mean_AB_1st_row<- mean(Transpose[1,])
Mean_AB_1st_row
Mean_AB_2nd_row<- mean(Transpose[2,])
Mean_AB_2nd_row
Mean_AB_1st_col<- mean(Transpose[,1])
Mean_AB_1st_col
Mean_AB_2nd_col<- mean(Transpose[,2])
Mean_AB_2nd_col
Std_dev_AB_1st_row<- sd(Transpose[1,])
Std_dev_AB_1st_row
Std_dev_AB_2nd_row<- sd(Transpose[2,])
Std_dev_AB_2nd_row
Std_dev_AB_1st_col<- sd(Transpose[,1])
Std_dev_AB_1st_col
Std_dev_AB_2nd_col<- sd(Transpose[,2])
Std_dev_AB_2nd_col
Mean_AB_1st_row<- mean(Inverse[1,])
Mean_AB_1st_row
Mean_AB_2nd_row<- mean(Inverse[2,])
Mean_AB_2nd_row
Mean_AB_1st_col<- mean(Inverse[,1])
Mean_AB_1st_col
Mean_AB_2nd_col<- mean(Inverse[,2])
Mean_AB_2nd_col
Std_dev_AB_1st_row<- sd(Inverse[1,])
Std_dev_AB_1st_row
Std_dev_AB_2nd_row<- sd(Inverse[2,])
Std_dev_AB_2nd_row
Std_dev_AB_1st_col<- sd(Inverse[,1])
Std_dev_AB_1st_col
Std_dev_AB_2nd_col<- sd(Inverse[,2])
Std_dev_AB_2nd_col
