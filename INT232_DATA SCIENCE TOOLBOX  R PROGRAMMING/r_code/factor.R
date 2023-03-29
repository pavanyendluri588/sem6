fac1=factor(c(1,2,3,4,5,6,7,8,9),c('string1',"string1"))
fac1
#factor is mainly used to represent the categorial data 
#in factors there are two types 
#orderd 
#unorderd
#factor is the important for statstical analysis  and used for ploting 



#factors only contain predefined set of values which atre called as levels 
#by default R sorts levels based on the alphabetical order.



#creating the factor with 2 levels 
fac2 = factor(c('male','female','male','female'))
fac2

#to see the levels of the fac2 we use levels function
levels(fac2)  #[1] "female" "male"

#to see the number of levels in my factor 
nlevels(fac2)    #[1] 2

#seeing the structure of the factor 
str(fac2)   #Factor w/ 2 levels "female","male": 2 1 2 1



#some time order of the factor is not meaning full for that we will specify the custom order 
#factors without order 
fac3=factor(c('low','high','high','low','medium'))
fac3 
#[1] low    high   high   low    medium
#Levels: high low medium

#checking the levels in fac3
levels(fac3)    #[1] "high"   "low"    "mediam"

#checking the number of levels in the fac3
nlevels(fac3)   #3

#specifying the order which is meaning full ness
fac4=factor(c('low','high','high','low','medium'),levels=c('low','medium','high'))
fac4
#[1] low    high   high   low    medium
#Levels: low medium high


levels(fac4)     #[1] "low"    "medium" "high"  

nlevels(fac4)    #3

#checking the structure of the fac4 
str(fac4)   # Factor w/ 3 levels "low","medium",..: 1 3 3 1 2

#mainly this type of specifying order of levels allows us to compare levels.
fac5=factor(c('1','2','7','3','4','5','6'))
fac5
#[1] 1 2 7 3 4 5 6
#Levels: 1 2 3 4 5 6 7

#
fac=factor(c("low","low", "medium", "low", "low", "medium", "high","medium", "high","high", "medium", "high"))
fac


fac=factor(c("low","low", "medium", "low", "low", "medium", "high","medium", "high","high", "medium", "high"))
fac


labels(fac)
#[1] "1"  "2"  "3"  "4"  "5"  "6"  "7"  "8"  "9"  "10" "11" "12"
length(fac)

fac[4]="medium"
#adding the new hello level to the fac level
levels(fac)=factor(c(levels(fac),"hello"))

fac

fac
