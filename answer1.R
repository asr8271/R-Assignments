library(MASS)
i<- iris
nrow(i)
ncol(i)
summary(i$Sepal.Length)
summary(i$Sepal.Width)
table(i$Species)
j<- subset(i, Petal.Length > 2)
j
nrow(j)
ncol(j)
