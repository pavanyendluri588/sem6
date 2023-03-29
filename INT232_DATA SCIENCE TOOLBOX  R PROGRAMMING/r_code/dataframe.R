(df=data.frame("S NO"=1:5,"Age"=c(20,22,24,26,28),
              "Name"=c("pavan","prudhvi","rama","venkateswararao","sanaka pavan")))
df


#structure of the dataframe 
#str() builtin function return the complete structure of the data frame 
str(df)
#output
#'data.frame':	5 obs. of  3 variables:
#$ S.NO: int  1 2 3 4 5
#$ Age : num  20 22 24 26 28
#$ Nmae: chr  "pavan" "prudhvi" "rama" "venkateswararao" ...


#dimension of the dataframe
dim(df)   #5 3
#length of the dataframe return the no of  columns 
length(df)   #3 

#nrow used to print the no of row in the dataframe
nrow(df)
#ncol used to print the no of columns in the dataframe 
ncol(df)


summary(df)



class(df)

class(df$Nmae)

#aacessing teh elements in the dataframe 
# [  ],[[   ]],$ these are
#[] return the datafeame  and consumes more memory and slower exection
#[[]],$ return the vector and consume the less memeory  and faster execution

df[2]#column 2 retrival in the form of the dataframe
class(df[2])    #data.frame


df[[2]]#column 2 retrival  in the from of the vector 
class(df[[2]])   #vector


#df$column_name
df$Nmae  #retrival of the Nmae column  and output in the  
class(df$Nmae)



#specific position output
#subscripting
df[2,3] #retriving the value of the row 2 and column 3 
class(df[2,3] )  #character because of the specific value accessed in teh dataframe 


#df[[2]]  #column scripting 
#[3]   #row scripting 
df[[2]][3]#2 column and 3rd value 
df$Age[2]   #output age;s column 2nd  value
df[[2,3]]   #df's 2nd row and 3rd column
    
#getting entire  3rd row
df[3,]


#getting entire 2nd column
df[,2]


#getting entire df 
df[,]
str(df)
df1=data("trees")
str(trees)
class(df1)
#tree datafeame 
head(trees) #give the first 6 rows
tail(trees)  #give tthe last 6 rows
trees[5:12,2]   #give the 5 to 12 rows on the 2nd column
trees[c(3,5,7),]


data1=trees[,-3] #deleting the 3rd column from the tree dataframe and store in the data1 variable
dim(data1)   #31 2
dim(trees)   #31 3

#View used to view the data in the seperate window 
View(data1)


summary(data1)


str(data1)
#'data.frame':	31 obs. of  2 variables:
#$ Girth : num  8.3 8.6 8.8 10.5 10.7 10.8 11 11 11.1 11.2 ...
#$ Height: num  70 65 63 72 81 83 66 75 80 75 ...




#inserting the new row in the df dataframe 
#rbind() function  is used to addd new row
df=rbind(df,c(6,23,NA))
df

#inserting the column in the df dataframe 
df=cbind(df,"state"=c("ap","mp","up","telengana","kerala","tamil nadu"))
df



#changing the column names using the colnames
#while changing the column names we nneed to pass all the col names 
names(df)  #name sis used to acccessing the column names 
#"S.NO"  "Age"   "Name"  "state"
colnames(df)=c("SNO","AGE","NAME","STATE")
colnames(df) #accessing teh colnames


#accessing the row names
rownames(df) #"1" "2" "3" "4" "5" "6"

#changing the row names 
rownames(df)=c('r1','r2','r3','r4','r5','r6')
#accessing the row names
rownames(df)   #"r1" "r2" "r3" "r4" "r5" "r6"



#by using ten attribute function we retrive the  colum nnames and class and row names 
attributes(df)
#$names
#[1] "SNO"   "AGE"   "NAME"  "STATE"

#$class
#[1] "data.frame"

#$row.names
#[1] "r1" "r2" "r3" "r4" "r5" "r6"



#deleting the state column 
df1=df
df1$STATE=NULL
df1
dim(df1)


df$NAME[4]="Nancy"
df[4,3]="Nancy"
df

