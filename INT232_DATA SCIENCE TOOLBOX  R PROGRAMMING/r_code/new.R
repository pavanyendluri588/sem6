getwd()
setwd("C:\Users\shiva\OneDrive\Desktop\Data science\R code")
setwd("C:/Users/shiva/OneDrive/Desktop/Data science/R code")


x = 50
class (x)
y = "50"
x
y


12 + 12    # adding
15 %% 2      # remainder
15 %/% 2      # integer quotient
15 / 2         # quotient in decimal or in integer
12 ^ 3         # exoponential



c
d
a+b
a = 7
b = 14



objects() # to see the objects 

rm(list =ls())

# datatypes
vec = c('H', 'I') # to store the values ina same variable
vec
vec = c('S','K',"Hello",12)   # it will print like s is as index 1,k is as index2  like this
vec
(skr = c('V','C',"hello world",12, 'good morning', 'details')) # ()bracet is used for dont call the argument again like skr
skr
(ashok = c('cat','rat',"bat" ,"good evening"))
class (ashok)# ashok contains only contains characters so if i call class (ashok) it shows characters

#integer vector
int_vec = c(15L,45L,75L,85L)
int_vec
class (int_vec)
#numeric vector
num_vec =c(10,20,30,40,50.5)
num_vec
class (num_vec)

True =15
#logical vector
(log_vec = c(TRUE,FALSE,T,F,T,T,TRUE))
class (log_vec)

#complex vector
com_vec = c(13+5i , 14+2i ,15)  # here i have 15 but other are diff and it changed into 0+5i
com_vec
class (com_vec)

#general vector

GEN_VEC = C(15,80,45+6i,"hello",5L,)
gen_vec = c(15,80,45+6i,FALSE,8L)  # COMPLEX HAVE MORE PRECEDENCE
gen_vec                            #AFTER THAT NUMERIC HAVE MORE PRECEDENCE
class (gen_vec)

gen_vec = c(15,80,FALSE,8L)
gen_vec
class (gen_vec)




# class 2
x = 15
x
# numeric vector
# assignment vector
z <- 5   #  <- left and -> right
z

num_vect =c(12,123,345,566,677)
num_vect
class(num_vect)           # numeric contains integer and double 
typeof(num_vect)            # it is a integer and it shows double the difference is  number after put (L)  



num_vect =c(12L,123L,345L,566L,677L)
num_vect
class(num_vect)           # numeric contains integer and double 
typeof(num_vect)            # it is a integer and it shows integer 

carac_vec = c("hello", "world",121) # automatically integer convert into charcter becoz of precedence
carac_vec

# boolean vector 
bol_vec = c(TRUE,FALSE,T, F ,TRUE)  # T and F  are automatically turn into TRUE AND FALSE
bol_vec


# general vector
general_vector=c(12,12L,TRUE,"fALSE",4+5i)  # all can be convert into string
general_vector
general_vector=c(12,12L,TRUE,4+5i)  # all can be convert into complex
general_vector
general_vector=c(12,12L,TRUE)  # all can be convert into numeric
general_vector
general_vector=c(TRUE)  # all can be convert into boolean
general_vector
general_vector=c(12,12L,TRUE)  # all can be convert into integer
general_vector


length(general_vector)



hello = c("hello","b","c","g","h","f")
#general_vector = general_vector[c(5,2)]
hello = hello[-c(5,3)] # removing the elements in a hello
hello[3]
hello[2] = 7070      # it replace the element in hello
hello
hello = hello[1:3]
hello
hello[4] = "shiva"
hello
hello1 = c(hello,hello1[1:2])
hello1
1:15  # it will increment by 1 becoz my left number is small than right number
50:40   # it will increment by 1 becoz my right number is greater than left number
11:20.7   # it will increment by 1 and when it comes to 20.7 it stops printing the numbers
12.3:20 # it will increment and changed tointeger to numeric becoz 12.3+1=13.3 so thats why



# array
(a1 = array(1:16 ,dim= c(4, 4)))
(a1 = array(1:16 ,dim= c(3, 3,2)))
(a1 = array(c(65,"SS",56,75) ,dim= c(2, 4)))
(s= array(3:17 , dim=c(3,3,2)))
s [2,2,2]
s[2,2,]# if you are not passing dim it will take default one
(s1= array(3:17 , dim=c(3,3)))
s1 [2,2]

(arr = array(1:50, dim=c(3,3,4), dimnames = list(c("R1", "R2","R3"),
                                                 c("C1","C2","C3"),
                                                 c("M1","M2","M3","M4"))))

# class 3 
#mat1 = matrix(1:16 , nrow=4)
#mat1
mat = matrix(1:16 , byrow =TRUE,nrow=4)
mat
dim(mat) #it is used to show the size of matrix in rows and columns
length(mat)   # it is used to show the length of matrix like how many numbers are present in matrix
nrow(mat)     #it is used to show the number of rows
ncol(mat)       #it is used to show the number of columns
rownames(mat) = c("w1","w2","w3","w4")
mat                     # it is used to change the rownames of matrix name mat
colnames(mat)  = c("col1", "col2", "col3","col4")
mat                     # it is used to change the colnames of matrix name mat



# Accessing the elements of matrix
mat
mat[,]
mat[,1:3]
mat[3,3]
mat[, c(2,4)]
mat[c(1,3) ,]
mat[c(2,4), 2]
mat[3,4]



m1 = matrix(c(10,12,-13,3,5,9), nrow=2 , byrow=T)
m1
m2 = matrix(10:15,nrow=2)
m2
#size of the matrix should be same
mul = m1 * m2
mul
add = m1 + m2
add
sub = m1 - m2
sub
div = m1/m2
div 
