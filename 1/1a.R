path="~/Downloads/DSR_LAB_PROGRAMS-master/iris.csv"
setwd(path)
dataval=read.csv("iris.csv")
dataval
plot(dataval$sepal.length,dataval$sepal.width)
