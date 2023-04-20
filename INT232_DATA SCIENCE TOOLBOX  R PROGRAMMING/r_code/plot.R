
slides=c(10,12,4,16,8)

llabls=c("apple","Orange","Banana","Pine","Jack")

#pie(values,labels,radius,main)
#values we specify the values like numerical data
#lables we specify the categorial labels to the graph 
#note the values and lables should be in same length 
#main is specigy the heading to the graph 
#radius +value to increase  and -value to decrease 

pie(c(10,12,4,16,8),labels=c("apple","Orange","Banana","Pine","Jack"),main="chat of fruits")

pie(c(10,12,4,16,8),labels=c("apple","Orange","Banana","Pine","Jack"), main="chat of fruits",col=c("red","blue","green","black","yellow"))

pie(c(10,12,4,16,8),labels=c("apple","Orange","Banana","Pine","Jack"),radius=+1, main="chat of fruits",col=c("red","blue","green","black","yellow"))

#rainbow color pallot 
pie(c(10,12,4,16,8),labels=c("apple","Orange","Banana","Pine","Jack"), main="chat of fruits",col=rainbow(length(c(10,12,4,16,8))))
legend("topright",c("apple","Orange","Banana","Pine","Jack"),cex=0.8,fill=rainbow(length(c(10,12,4,16,8))))

library(plotrix)
pie3D(c(10,12,4,16,8),labels=c("apple","Orange","Banana","Pine","Jack"),explode=0.05,main="chat of fruits",col=rainbow(length(c(10,12,4,16,8))))
legend("topright",c("apple","Orange","Banana","Pine","Jack"),cex=0.8,fill=rainbow(length(c(10,12,4,16,8))))



