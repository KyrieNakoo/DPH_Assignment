# DPH_Assignment
install.packages("ggplot2")
library(ggplot2)
install.packages('colorspace', depend=TRUE)
#??Something wrong when I library(ggplot2), it display:
#错误: package or namespace load failed for ‘ggplot2’ in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]):
 不存在叫‘colorspace’这个名字的程辑包(not exist package named 'colorspace')??#

#Q1
pit<-c(rep(0,5),rep(1,15), rep(2,23), rep(3,21), rep(4, 17),rep(5,11),
       rep(6,5), rep(7,2), rep(8,1))
pit
#1. the varibale is discrete, as the number of pit can not have decimal amount
#2. mean=3.0  s^2=2.94
mean(pit)
var(pit)
#3. median=3.0   range=8.0
#4.
summary(pit)

#Q2
weight<-c(1210, 1610, 1820, 1470, 1750,
          1920, 1350, 1540, 1770, 1300,
          1380, 1450, 1270, 2110, 2010)
#1. mean=1597.3  s^2=284.8  median=1540  range=900
mean(weight)
sd(weight)
summary(weight)
#2.
par(bty="n")
boxplot(weight,
        width = 1.5,
        yaxt = "n")
mtext("Fish Micropterus dolomieu", side=1, line=1)
mtext("The fish weight [gram]", side=2, line=1)
axis(side=2, at=seq(1200, 2100, 100), las=2, cex.axis=0.8, line=-3)
#??the upper margin disappear as I try to extand the upper limit of Yaxis range??#
title("Box plot of the fish weight in Lawrence River", line=2)

#Q3
x<-c(25.0, 38.8, 39.9, 40.1, 46.7, 49.1, 49.6, 51.1, 51.6,
     53.5, 54.7, 55.5, 55.9, 58.8, 60.3, 63.6, 65.4, 66.1,
     69.3, 70.9, 71.4, 71.4, 71.8, 72.9, 74.4, 76.2, 77.8,
     78.1, 78.4, 79.0, 79.3, 79.7, 80.7, 82.4, 82.4, 83.0,
     83.6, 83.6, 84.8, 85.5, 87.4, 88.7, 89.6, 89.8, 89.9,
     90.9, 97.0, 98.3, 101.4,102.4,103.9,104.5,105.2,110.0,
     110.5,110.5,113.7,114.7,115.6,120.5,120.7,124.7,126.4)
h1<-hist(x,
         breaks = 6, 
         xlim = c(20, 140),
         ylim = c(0, 20),
         main = "Snowfall for 50 years in Buffalo, New York",
         xlab = "snowfall [inch/year]",
         ylab = "Frequency",
         xaxt="n",
         yaxt="n")
axis(side=1, at=seq(20,140,20), cex=0.8) #side1 is X axis
axis(side=2, at=seq(0,18,2),cex=0.8) #side2 is Y axis

h2<-hist(x,
         breaks = 12, 
         xlim = c(20, 140),
         ylim = c(0, 15),
         las =2,
         cex.axis=1,
         main = "Snowfall for 50 years in Buffalo, New York",
         xlab = "snowfall [inch/year]",
         ylab = "Frequency",
         xaxt="n",
         yaxt="n")
#??have no idea how to add legend when there is only one variabe??#
axis(side=1, at=seq(20,140,10)) #side1 is X axis
axis(side=2, at=seq(0,14,2)) #side2 is Y axis

#the historgram with 10 inches as classes reveal more informations,
#the second hist shows that snowfall betwee 60-70 and 90-100 is releatively less frequent.
