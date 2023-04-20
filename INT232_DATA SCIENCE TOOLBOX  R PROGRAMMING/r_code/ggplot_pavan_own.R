library(ggplot2)
#there are two type of data visiluations 
#1.exploratory data visualization --> used for used for understanding the data  
#2.explainatory data visualization  -->used to share the information what we understanded 
#r is used for data analysis  and data visualization 
#
#plot() --> used for general function for ploting the r objects 
#barplot()--> used to plot the data using the retuangular bar 
#hist()  --> used to create the histogram 
#boxplot()  -->
#ggplot--it is a plackage used to create the sophisticated visualizations 
#plotly()  --> used to create a interactive web based graphs open source javascript graphics library plotly.js 
#
#
#installing the data sets from the datasets library 
#install.packages("datasets",dependencies=T)
library(datasets)
(data = ChickWeight)
plot(data)
x= data$weight
y= data$Diet
length(x)
length(y)
summary(data)
str(data)
y1<-(1:200)
y1
plot(x,y)
title("plow between data$Weight and data$Diet")

library(grid)
library(ggplot2)

#barchat used to show the comaprisions acoross the discreat categories
#x-axis the represents categories to compare 
#y-axis represents the measure values 
#height of the bars propotional to the measure values 

#ggplot uses the geoms or geometric objects to from or create different types of graphs 
#geom_bar -->bar chat 
#geom_line -->line chat 
#geom_points  --> scatter plot 
#geom_boxplot --> box plot
#geom_quantile --> continuous x 
#geome_violin -->rich diplay of distribution 
#geome_jitter --> for small data 
#geom_hist -->histogram 
# 
# 
#ggplot(data=data1) here data1 is represunts the dataset to bbe used in this graph 
ggplot(data = data)

#aes() --> this will represent the aesthetic mapping(describe the how the data is mapped to virtual properties(aesthentic) of geoms)
# parameters of the aes() function in the ggplot graph 
# x=reprenebt the x axis data 
# y=represent the y axis data 
# color = represent the outline color  of the shape
# fill = represent the inside color of the shape 
# shape
# size 
# 
# 
#ggplot2 will come with the pre installed datasets to view those 
#use data()
(data2=chickwts)
(ggplot(chickwts,aes(x=feed,y=weight))+
     geom_bar(stat="identity",aes(fill="green")))



data12 =iris
data12
colnames(data12)
ggplot(data12,aes(x=Sepal.Length,y=Sepal.Width))+geom_point()
#separeting the by Species by using the colors 
ggplot(data12,aes(x=Sepal.Length,y=Sepal.Width,col=Species))+geom_point() 
#seperating by the Species by using the shapes
ggplot(data12,aes(x=Sepal.Length,y=Sepal.Width,col=Species,shape=Species))+geom_point()

#point and smoothed by the lines can be plot together for same x and y variable 
ggplot(data12,aes(x=Sepal.Length,y=Sepal.Width,col=Species,shape=Species))+geom_smooth()

#combining the point and the smooth into the single graph 
ggplot(data12,aes(x=Sepal.Length,y=Sepal.Width,col=Species,shape=Species))+geom_point()+geom_smooth()

#creating the each graph with the different color 
#this will create a graph but create a single smppth line bease there is no differencate 
ggplot(data12,aes(x=Sepal.Length,y=Sepal.Width,col=Species,shape=Species))+geom_point(col="blue")+geom_smooth(col="red")
#here it will create the three different graphe because the plints are getting dofferentiate because of the the shapes 
ggplot(data12,aes(x=Sepal.Length,y=Sepal.Width,col=Species,shape=Species))+geom_point(col="blue")+geom_smooth(col="red")

#to remove the shaded part on the geom_smooth() graph we use parameter se=False
ggplot(data12,aes(x=Sepal.Length,y=Sepal.Width,col=Species,shape=Species))+geom_point(col="blue")+geom_smooth(col="red",se=F)
#
#
#to get the glimse of the dataset we use glimse() function  for this we need to load tidyverse package
library(tidyverse)
glimpse(data12)

#bar graph
(data13=mtcars )
summary(data13)
colnames(data13)
ggplot(data13,aes(x=gear))+geom_bar()
ggplot(data13,aes(y=gear))+geom_bar() #this graph is flipped to y axis 
#flipping the graph 
ggplot(data13,aes(x=gear))+geom_bar()+coord_flip() #same like y=gear


#we can use the stastical transformations with the ggplot
#for that we use the stat_summery()

ggplot(data13,aes(hp,mpg))+geom_point(col="blue")
ggplot(data13,aes(hp,mpg))+geom_point(col="blue")+geom_line()
#adding the line = dashed and the geom=line
ggplot(data13,aes(hp,mpg))+geom_point(col="blue")+stat_summary(geom="line",linetype="dashed")
ggplot(data13,aes(hp,mpg))+geom_point(col="blue")+stat_summary(fun.y="median",geom="line",linetype="dashed")
ggplot(data13,aes(hp,mpg))+geom_point(col="blue")+geom_rug()+ stat_summary(fun.y="median",geom="line",linetype="dashed")
#
#histogram
#difference between the histogram and the bar chat 
#in barchat we use the discreate data 
#in histogram we use the continuous data
ggplot(data12,aes(x=Sepal.Length,col=Species))+geom_histogram()

ggplot(data12,aes(x=Sepal.Length,col=Species,fill=Species))+geom_histogram()

ggplot(data13,aes(x=mpg))+geom_histogram()

ggplot(data13,aes(x=mpg))+geom_histogram(bins=10)

ggplot(data13,aes(x=mpg))+geom_histogram()+stat_bin(binwidth=10)

data13
as.factor(data13$cyl)

ggplot(data13,aes(x=cyl,y=mpg))+geom_boxplot()
#in the box plot we use the x value as the factor 
ggplot(data13,aes(x=as.factor(cyl),y=mpg,col=cyl,fill=cyl))+geom_boxplot()

#to defile the different color values 
ggplot(data13,aes(x=as.factor(cyl),y=mpg,color=cyl))+geom_boxplot()
scale_color_manual(values =c("#3a0ca3", "#c9184a", "#3a5a40"))
