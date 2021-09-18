x <- 1:5
y <- matrix(x, nrow=5, ncol=1)
p <- 4:8
y <- matrix(x, nrow=5, ncol=2)
z <- letters[1:5]
z
df <- data.frame(x, p,y, z)
df
setwd("D:\\R\\")
write.csv(df, file = "D:\\R\\new.csv")

