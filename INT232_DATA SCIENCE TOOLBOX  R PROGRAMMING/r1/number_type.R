x<-10.5
y=15L
10i -> z
x
y
z
class(x)
class(y)
class(z)


#numeric type
x=10
y=10.5
z=10L
a=10i
x
y
paste("x:",x)
paste("y:",y)
paste("z:",z)
paste("a:",a)
paste("class(x):",class(x))
paste("class(y):",class(y))
paste("class(z):",class(z))
paste("class(a):",class(a))
paste("typeof(x):",typeof(x))
paste("typeof(y):",typeof(y))
paste("typeof(z):",typeof(z))
paste("typeof(a):",typeof(a))



#integer_datatype
x=54
y=5L
x    #54
y   #5
class(x)    #number
class(y)    #integer
typeof(x)   #double
typeof(y)   #integer
x=as.integer(x)
x
class(x)    #integer
typeof(x)   #integer

#complex_datatype
x=0
y=5
z=5i
a=5+6i
x    #0
y    #5
z    #0+5i
a    #5+6i
class(x)    #numeric
class(y)    #numeric
class(z)    #complex
class(a)    #complex

typeof(x)   #double
typeof(y)   #double
typeof(z)   #complex
typeof(a)   #complex


#converting the numeric to complex
x=as.complex(x)
y=as.complex(y)

x    #0+0i
y    #5+0i
z    #0+5i
a    #5+6i

class(x)    #complex
class(y)    #complex
class(z)    #complex
class(a)    #complex
typeof(x)   #complex
typeof(y)   #complex
typeof(z)   #complex
typeof(a)   #complex


#type conversion in R
#as.numeric()
#as.integer()
#as.complex()


#checking the variables
#is.numeric()
#is.integer()
#is.complex()