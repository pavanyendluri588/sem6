#datatypes 
x=15
x
#type of the variable
class(x)
print(x)

# nuumeric vector 
num_vec<-c(45,46,67,4)
num_vec
#accing the valie inside the num_vec at 5 the index 
#in r language the index starts at the 1 

num_vec[5]
class(num_vec)
typeof(num_vec)

#class() gives the generalised type like numeric
#typeof() will give the specific type  like integer or double(there are the subparts of the numbric) 




#character vector 
char_vec <- c("hello","A","Anitha",121)
char_vec
class(char_vec)
typeof(char_vec)




#complex vector 
complex_vec=c(10+5i,10,12,34,6i,8i,0)
complex_vec
class(complex_vec)
typeof(complex_vec)




#boolean or logical vector 
bool_vec=c(T,F,TRUE,FALSE,F,F)
bool_vec
class(bool_vec)
typeof(bool_vec)

#length() will give the length or size of the vector 
length(bool_vec)
bool_vec[2]
bool_vec[2]=TRUE
bool_vec[-4]   # RETURN THE VALUES EXCEPT THE 4 TH index
bool_vec<-bool_vec[-4]   
#deleting the values at the first and second index 
bool_vec<-bool_vec[-c(1,2)]
bool_vec
#general vector 
#general vector means all types of datatypes in one vector 
gen_vector=c()

#test_vector 
test_vector=c(1,2,3,4,5,6,7,8,9,10)
test_vector
#printing the sequence of the indexes form 2 to 7 
test_vector[2:7]

#priority of data types
#character 
#complex
#numeric
#integer
#boolean



#typeof(num_vec)   is double 
#three types of operators 
# <- = left assignment operator
#->  right assignment operator 
#800 -> a





#arrays 
1:15
50:40
class(11:20) #"integer"
11:20.6
class(11:20.6) #"integer"
11.5:20
class(11.5:20) #"numeric"
11.5:20.4
class(11.5:20.4) #"numeric"



11.5:20.6

class(11.5:20.6) #"integer"



(a1=array(1:10))
(a1=array(1:10,dim=c(5,2)))

#if the array values are not  enouch means values repetation takes place 
(a1=array(1:10,dim=c(5,5)))


(a2=array(1:20,dim=c(3,4,5),
          dimnames = list(c('R1','R2','R3'),
                          c('C1','C2','C3','C4'),
                          c('D1','D2','D3','D4','D5'))))
a2[2,2,]  #leaving the dimension empty it will pring the value of the location in every dimension
a2[2,2,2]  #getting the value n the second dimension
