data <- read.csv("C:\\medals_total.csv")
a<-subset(data, Country == "India")
cat("Gold Medal by India = " ,sum(a$Gold.Medal))
cat("Silver Medal by India = " ,sum(a$Silver.Medal))
cat("Bronze Medal by India = " ,sum(a$Bronze.Medal))
a1<- sum(a$Gold.Medal) + sum(a$Silver.Medal) + sum(a$Bronze.Medal)
a1
b<-subset(data, Country == "United States of America")
cat("Gold Medal by USA = " ,sum(b$Gold.Medal))
cat("Silver Medal by USA = " ,sum(b$Silver.Medal))
cat("Bronze Medal by USA = " ,sum(b$Bronze.Medal))
b1<- sum(b$Gold.Medal) + sum(b$Silver.Medal) + sum(b$Bronze.Medal)
b1

c<-subset(data, Country == "People's Republic of China")
cat("Gold Medal by China = " ,sum(c$Gold.Medal))
cat("Silver Medal by China = " ,sum(c$Silver.Medal))
cat("Bronze Medal by China = " ,sum(c$Bronze.Medal))
c1<- sum(c$Gold.Medal) + sum(c$Silver.Medal) + sum(c$Bronze.Medal)
c1

x<- rep(c$Gold.Medal, times = c$Gold.Medal)
y<- rep(c$Silver.Medal, times = c$Silver.Medal)
z<- rep(c$Bronze.Medal, times = c$Bronze.Medal)
medals_china<- c(x,y,z)
medals_china 
hist(medals_china,ylim=c(0,42),xlab="Bronze   ,                             Silver  ,                     Gold,", ylab="number of medals",col="red",main="Number of  different Medals in China",labels= TRUE)


o <- subset(data, Country == 'Great Britain')
q <- c(o$Gold.Medal,o$Silver.Medal,o$Bronze.Medal)
r<- rep(o$Gold.Medal, times = o$Gold.Medal)
s<- rep(o$Silver.Medal, times = o$Silver.Medal)
t<- rep(o$Bronze.Medal, times = o$Bronze.Medal)
medals_UK<- c(r+1,s,t)
medals_UK 
hist(medals_UK,ylim=c(0,42),xlab="Silver   ,                             Bronze  ,                     Gold,", ylab="number of medals",col="red",main="Number of  different Medals in UK",labels= TRUE)


x<- subset(data, Country == "India" | Country ==  "United States of America" | Country ==  "Japan" | Country ==  "People's Republic of China" | Country ==  "Brazil")
nrow(x)
x1<- subset(x, Country == "India")
x2<- subset(x, Country == "United States of America")
x3<- subset(x, Country == "Japan")
d1<- sum(x3$Gold.Medal) + sum(x3$Silver.Medal) + sum(x3$Bronze.Medal)
d1

x4<- subset(x, Country == "People's Republic of China")
x5<- subset(x, Country == "Brazil")
e1<- sum(x5$Gold.Medal) + sum(x5$Silver.Medal) + sum(x5$Bronze.Medal)
e1

p<- c(a1,b1,d1,c1,e1)
p
labels <- c("India", "USA", "Japan", "China","Brazil")
pie(p,labels,main='Total Medal v/s Country')
