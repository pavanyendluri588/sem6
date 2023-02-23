#create a matrix
matrix1=matrix(1:20)  #create a virtical matrix for rows 1 and the columns 1
matrix1

matrix1=matrix(1:20,ncol=3)   #creating the matrix with the 3 columns 
#Warning message:
#In matrix(1:20, ncol = 3) :
#     data length [20] is not a sub-multiple or multiple of the number of rows [7]
matrix1

matrix1=matrix(1:20,nrow=4)   #creating the matrix width 4 rows
#Warning message:
#     In matrix(1:20, nrow = 4) :
#     data length [20] is not a sub-multiple or multiple of the number of columns [7]
matrix1

#matrix1=matrix(1:20,nrow=5,ncol=2)  #if we give thw size of the matrix is less han the no of elements the machine will throw the warning and create a messagw with that size lave leave the remaioning elements 
matrix1


#creating the matrix with the 3 rows qand 5 columns with series of numbers 1:15\
matrix1=matrix(1:15,nrow=3,ncol=5)
matrix1

#creating the aboue martix without the parameters names 
matrix1=matrix(1:15,3,5)
matrix1

#creating the aboue martix without the parameters names anf by specifying byrow=T 
matrix1=matrix(1:15,3,5,T)
matrix1

#length of the matrix 
length(matrix1)   #15
#no of rows in the matrix 
nrow(matrix1)   #3
#no of columns in the matrix 
ncol(matrix1)   #5
#dimensions of the matrix by using the dim() function
dim(matrix1)

#rownames function to see and update the rownames 
rownames(matrix1)   #NULL
#sepcifying the row names
rownames(matrix1)=c('R1','R2','R3')
matrix1
rownames(matrix1)   #"R1" "R2" "R3"

#colnames function to see and update the colnames
colnames(matrix1)   #NULL
#specifying the col names 
colnames(matrix1)=c('C1','C2','C3','C4','C5')
matrix1
#checking the column names of the matrix1
colnames(matrix1)   # "C1" "C2" "C3" "C4" "C5"


#creating the matrix with the dimension names 
matrix1=matrix(data=1:15,nrow=3,ncol=5,byrow=T,dimnames=list(c('R1','R2','R3'),c('C1','C2','C3','C4','C5')))
matrix1

#creating the matrix with the dimension names without parameter names 
matrix1=matrix(1:15,3,5,T,list(c('R1','R2','R3'),c('C1','C2','C3','C4','C5')))
matrix1

#creating the null matrix of the fixed size
matrix1=matrix(data=NA,3,5)
matrix1

#accessing the matrix in the form of trhe diffetent ways 
#accessing the complete matrix1
matrix1
#we can access the complete matrix matrix1[,] same as matrix1
matrix1[,]
(matrix1=matrix(1:15,3,5,T,list(c('R1','R2','R3'),c('C1','C2','C3','C4','C5'))))

#accessing the 1to3 columns in matrix1
matrix1[,1:3]

#accessing the 1to2 rows in matrix1 
matrix1[1:2,]

#accessing the 1 and 3 columns in the matrix1 
matrix1[,c(1,3)]

#accessing the 1 and 3 rows in the matrix1
matrix1[c(1,3),]

#accessing the 1 and 3 rows and 1 and 2 columns in the matrix1
matrix1[c(1,3),c(1,2)]

#accessing the 3rd row and 4th column
matrix1[3,4]



#outmost curved brackets  print the operation inside 
#(a=matrix()) print the a 

#operation of the matrix
#size of the matrix should be same 
(m1=matrix(1:15,nrow=3,ncol=5,byrow=T))
(m2=matrix(21:35,nrow=3,ncol=5,byrow=T))

#addtion of the matrix
add1=m1+m2
add1

#substraction of the matrix
sub1=m1-m2
sub1

#division of the matrix
div1=m1/m2
div1

#multiplication of the matrix 
#in the multiplication the no of columns ion the matrix1 are equal to the no of rows in the matrix2
#t() functionn id used to transpose
m1
m2=t(m1) #transposing the m1 matrix and storing in ther m2 variable
m2

#for matrix multiplication we use a special operator %*%
m3=m1%*%m2
m3


#if we use normal * multiplication operator 
#m3=m1*m2  #Error in m1 * m2 : non-conformable arrays

#replacing in the matrix 
matrix1=matrix(1:25,5,5,T,list(c('r1','r2','r3','r4','r5'),c('c1','c2','c3','c4','c5')))
matrix1
#replacing the row 3 and 4 and columns 1 and 5
matrix1[c(3,4),c(1,5)]=400
matrix1


#replacing the complete row 1 with NULL or NA values
matrix1=matrix(1:25,5,5,T,list(c('r1','r2','r3','r4','r5'),c('c1','c2','c3','c4','c5')))
matrix1[1,]=NA
matrix1

#replacing the complete column 5 with NULL or NA values
matrix1=matrix(1:25,5,5,T,list(c('r1','r2','r3','r4','r5'),c('c1','c2','c3','c4','c5')))
matrix1[,5]=NA
matrix1

#replacing the 1 to 3rd rows with 500
matrix1=matrix(1:25,5,5,T,list(c('r1','r2','r3','r4','r5'),c('c1','c2','c3','c4','c5')))
matrix1[1:3,]=500
matrix1

#replacing the 1 to 2nd columns with 5000
matrix1=matrix(1:25,5,5,T,list(c('r1','r2','r3','r4','r5'),c('c1','c2','c3','c4','c5')))
matrix1[,1:2]=5000
matrix1


#deleting in the matrix

#deleting the column 1 from the matrix1
matrix1=matrix(1:25,5,5,T,list(c('r1','r2','r3','r4','r5'),c('c1','c2','c3','c4','c5')))
matrix1=matrix1[,-1]
matrix1
#adter deleting the martix1 column 1 checking the dimensions
dim(matrix1)   #5 4

#deleting the row 1 from the matrix1
matrix1=matrix(1:25,5,5,T,list(c('r1','r2','r3','r4','r5'),c('c1','c2','c3','c4','c5')))
matrix1=matrix1[-1,]
matrix1
#adter deleting the martix1 row 1 checking the dimensions
dim(matrix1)   #4 5

#deleting the row 1 to3 in the matrix1
matrix1=matrix(1:25,5,5,T,list(c('r1','r2','r3','r4','r5'),c('c1','c2','c3','c4','c5')))
matrix1=matrix1[-1:-3,]
matrix1

#deleting the column 3 to 5 in the matrix1
matrix1=matrix(1:25,5,5,T,list(c('r1','r2','r3','r4','r5'),c('c1','c2','c3','c4','c5')))
matrix1=matrix1[,-3:-5]
matrix1
#after deleting the columns 3 to 5 in the matrix1 checking the dimensions
dim(matrix1)   #5 2

#deleting the column 1 and 3 and 5 in the matrix1
matrix1=matrix(1:25,5,5,T,list(c('r1','r2','r3','r4','r5'),c('c1','c2','c3','c4','c5')))
matrix1=matrix1[,-c(1,3,5)]
matrix1
#after deleting the columns 1 and 3 and 5 in the matrix1 checking the dimensions
dim(matrix1) #5 2

#deleting the row 1 and 3 and 5 in the matrix1
matrix1=matrix(1:25,5,5,T,list(c('r1','r2','r3','r4','r5'),c('c1','c2','c3','c4','c5')))
matrix1=matrix1[-c(1,3,5),]
matrix1
#after deleting the row 1 and 3 and 5 in the matrix1 checking the dimensions
dim(matrix1)   #2 5

#deleting the 1,3 rows and 2,5 columns in the matrix1
matrix1=matrix(1:25,5,5,T,list(c('r1','r2','r3','r4','r5'),c('c1','c2','c3','c4','c5')))
matrix1=matrix1[-c(1,3),-c(2,5)]
matrix1
#after deleting the 1,3 rows and 2,5 columns in the matrix1 checking the dimensions
dim(matrix1)   #3 3
