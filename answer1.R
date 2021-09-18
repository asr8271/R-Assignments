x<- c(4,-5,2)
y<- c(6,1,-3)
length(x)
length(y)
a<- (x+y)
a
b<- (x-y)
b
c<- sum(x)
c
d<- sum(y)
d
cov(x,y)
x_mean<- mean(x)
x_mean
y_mean<- mean(y)
y_mean
covariance<- ((4-(x_mean))*(6-(y_mean)) + (-5-(x_mean))*(1-(y_mean)) + (2-(x_mean))*(-3-(y_mean)))/2
covariance

