library(MASS)
a<- AirPassengers
s <- 0
for (i in 1:length(a)) {
  s <- s+a[i]
}
cat("Number of Passengers Travelled from 1949 to 1960 = ", s)
Y <- c()
S<-start(a)
S
for (i in 1:12) {
  Y[i] <- S
  S <- S+1
}

s<-0
x <- 1
X <- c()
for (i in 1:12) {
  
  for (j in 1:12) {
    s <- s+a[x]
    x <- x+1
  }
  X[i] <- s
  s <- 0
}
length(a)
plot(Y,X,col="red",xlab="Years", ylab="Number of passengers",main="Number of passengers per YEAR")
new_ds <- c()
for (i in 1:length(a)/12) {
  new_ds[i] <- a[i]
}
boxplot(new_ds,main="boxplot for the given dataset",col='yellow3')

