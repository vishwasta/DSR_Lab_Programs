#--------------This File Belongs to Naveen RJ-(1bm16CS055)----------------


fw<-read.csv("~/Downloads/DSR_LAB_PROGRAMS-master/iris.csv")
fw
fw.lm=lm(sepal.length ~ sepal.width,data=fw)
summary(fw.lm)
names(fw.lm)                                    #components of linear regression
fw.lm$coefficients 

#Gives slope and Intercept
newypred<-fitted(fw.lm)                   #predict y values  for each x value
newypred
#Obtaining confidence Intervals
confint(fw.lm)  #obtain the confidence intervals
confint(fw.lm,parm=c('(Intercept)','speed'),level =0.5)
#Fitted Values
fitted(fw.lm)
residuals(fw.lm)
#plotting the x , y values 
plot(fw$speed,fw$count,col="red")
coef(fw.lm)
#plotting the fitted line 
abline(coef(fw.lm),lty=1,col="blue")
#plotting residuals
plot(fw.lm,which=1)  
