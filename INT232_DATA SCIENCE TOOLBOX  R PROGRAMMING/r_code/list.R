#install.packages("sqldf")

x1=list(a=2.5,"b column"=T,"c"=1:5,"d"="Hello",e=54:60) #double column is used to put the space in the creating variable name inside the list 
x1
#$a
#[1] 2.5

#$`b column`
#[1] TRUE

#$c
#[1] 1 2 3 4 5

#$d
#[1] "Hello"

#$e
#[1] 54 55 56 57 58 59 60


class(x1)   #list
typeof(x1)   #list

#[[]] mainindexing
#[] sub indexing 


x1[1]
#$a
#[1] 2.5

class(x1[1])   #list

typeof(x1[1])    #list
x1[2]   #type of list  #accessing the output inthe list form 
x1[[2]]  #typeof logical
x1[3]
x1[4]
x1[3]  #o/p type will in the form of the list 
x1[[3]] #o/p type will be on the form of the vector 


#accessing the with the name 
x1$e #[1] 54 55 56 57 58 59 60

x1$e[4]   #accessing the elements in the e  and 4th index of inside the e 
#57



x1[[5]][2]  #55
class(x1[[5]][2])    #integer
typeof(x1[[5]][2])   #integer

x2=list(2.5,T,1:5,"hello",54:60)  #by default it will get the numbered indexing 
#[[1]]
#[1] 2.5

#[[2]]
#[1] TRUE

#[[3]]
#[1] 1 2 3 4 5

#[[4]]
#[1] "hello"

#[[5]]
#[1] 54 55 56 57 58 59 60

x2

x2[1] #return the index1 and the type of the list  because of using the single brackets
x2[[1]]  #return the index1 and type of  is the 
class(x2[1])   #list
typeof(x2[1])  #list
class(x2[[1]])  #numeric
typeof(x2[[1]])    #double


x2[[5]][3] #accessing the 5th index and getting the 3rd subindex #56 


#updating  the value inside the list
x1$e[3]=500
x1$e[3]
x1$e

#by iusing the $ we should only access the name of the attribute 

x2[[5]][3]=500   #[[5]] is outerindexing [3] is the subindexing 
x1$e[3]
x1$e

#assigning the null vale means it will delete the value 
#deleting the 3rd index in the x1 by using the NULL
x2[3]=NULL
x2


#by using the null the attributes name libe a,b,c,d in x1 will not change 

#replacing the value with NA the 3rd subindex in the 4th outer index 
x2[[4]]  #[1] 54 55 56 57 58 59 60
x2[[4]][3]=NA
x2[[4]]

#x2[[4]][3]=NULL
#Error in x2[[4]][3] = NULL : replacement has length zero

#Note:null will delete the complete data object it will not delete the onle element in the object 
x1$e[5]
x1[[5]][5]   #NA means no value at that position 


#deleting the 4th and 5th index in the e attribute in the x1 list 
x1$e   #[1]  54  55 500  57  58  59  60
x1$e=x1$e[-c(4,5)]
x1$e   #[1]  54  55 500  59  60


#names function  is t=used to get the attribjues of the list 
names(x1)  #[1] "a"        "b column" "c"        "d"        "e" 
names(x2)   #NUll because there is no name indexing the the x2 

#reassigning the name or attributes  of the x1 list 
names(x1)=c("a1","b1","c1","d1","e1")
names(x1)  #[1] "a1" "b1" "c1" "d1" "e1"



#merging the two listes 
list1=list("s no"=1:3,"cost"=c("100/kg","500/kg","1000/kg"),fruits=c("apples","mango","grapes"))
list2=list(20:23)


list3=c(lsit1,list2)  #easy way of merging 
list3





#creating the nested list 
list3=list(list1,list2) #not the correct way of merging   and complex 
list3



#by using the unlist we can convert the list to vector
#because vector iss light storage  and easy work 
v1=unlink(list1)
v1

#after creating the vector we can delete the list because there is no use of the main list1 
rm(list1)
typeof(v1)
