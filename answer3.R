x1<- c(2,4,6,10,4,7,12,20,5)
x2<- c(10,5,5,20,4,70,40,12)
x3<- c(2,4,2.5,34,1.6,9.5,6,2)
summary(x1)
summary(x2)
summary(x3)
OutVals1 = boxplot(x1)$out
OutVals1
x1<- x1[ !(x1 %in%OutVals1) ]

OutVals2 = boxplot(x2)$out
OutVals2
x2<- x2[ !(x2 %in%OutVals2) ]

OutVals3 = boxplot(x3)$out
OutVals3
x3<- x3[ !(x3 %in%OutVals3) ]

OutVals = boxplot(x1,x2,x3)$out

OutVals2 = boxplot(x2)$out
OutVals2
x2<- x2[ !(x2 %in%OutVals2) ]
OutVals = boxplot(x1,x2,x3)$out

m_l<- max(c(length(x1),length(x2),length(x3)))
df<- data.frame(col1 = c(x1,rep(NA,m_l-length(x1))),
                col2 = c(x2,rep(NA,m_l-length(x2))),
                col3 = c(x3,rep(NA,m_l-length(x3))))
df
