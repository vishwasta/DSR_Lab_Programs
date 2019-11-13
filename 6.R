library(cluster)
library(ggplot2)

x<-c(185,170,168,179,182,188)
y<-c(72,56,60,68,72,77)


#below code is for iris dataset read from iris.csv
k <- read.csv("~/Downloads/DSR_LAB_PROGRAMS-master/iris.csv")
k
k1 <- k[,1:2]
k1
wss<-numeric(15)
for(k in 1:15) 
  wss[k]<-sum(kmeans(mat,centers=k,nstart=25)$withinss)
plot(1:15,wss,type="b",main="Plot of k vs WSS metric", xlab="Number of clusters", ylab="Within Sum of Squares Metric")

km=kmeans(k1,3,nstart=10)
km
km$cluster
km$centers
km$withinss
km$betweenss
km$totss

#below code is for iris data read from iris.csv file
plot(k1[km$cluster ==1,],col="red",xlim=c(min(k1[,1]),max(k1[,1])),ylim=c(min(k1[,2]),max(k1[,2])))
points(k1[km$cluster == 2,],col="blue")
points(k1[km$cluster== 3,],col='green')

