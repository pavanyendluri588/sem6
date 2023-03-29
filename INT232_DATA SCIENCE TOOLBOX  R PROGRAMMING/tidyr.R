# tidyr package
#helps to create tidy data 
# each observation is in a column
#Each observation is a row
#Each values is a cell
install.packages("tidyr")
library("tidyr")
b=separate(teamnames,Home_Town,c("City","State"),sep=",")
unite(teamnames,"Name",c(First_Name,Last_Name),sep=" ")
a=data.frame(Player=c("Mike","Bryce","Jose"),
             X2015=c(41,42,40),
             X2014=c(36,13,45),
             X2013=c(27,20,28))

b=gather(a,year,home_runs,X2015:X2013)# year is a new column
spread(b,year,home_runs)



