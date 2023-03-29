#installing the package 
#install.packages("sqldf")


#loading to install
#library(sqldf)
#require(sqldf)


#conforming the package is loaded or not 
#search()
?sqldf
library(sqldf)
empid=c(1:5)
empid=1:5
empname=c("pavan","ram","chandar","prudhvi","rama")
job=c("software developer","database architect",NA,"data analyst","data scintest")
dept=c(NA,NA,NA,NA,NA)
salary=c(250000L,3500000L,1200000L,4500000L,6700000L)
emp=data.frame(empid,empname,job,dept,salary)
emp
# empid empname                job dept  salary
#1     1   pavan software developer   NA  250000
#2     2     ram database architect   NA 3500000
#3     3 chandar               <NA>   NA 1200000
#4     4 prudhvi       data analyst   NA 4500000
#5     5    rama      data scintest   NA 6700000


sqldf("select * from emp")
#empid empname                job dept  salary
#1     1   pavan software developer   NA  250000
#2     2     ram database architect   NA 3500000
#3     3 chandar               <NA>   NA 1200000
#4     4 prudhvi       data analyst   NA 4500000
#5     5    rama      data scintest   NA 6700000

#to see the list of the datasets 
data()
