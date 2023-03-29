library("dplyr")
data()
co2
data1= CO2 
data1
colnames(co2)
colnames(data1)


dplyr package provides various important functions that can be used for Data Manipulation. These are: 
     
     
     
filter() Function: For choosing cases and using their values as a base for doing so.

d < - data.frame(name=c("Abhi", "Bhavesh",
                        "Chaman", "Dimri"),
                 age=c(7, 5, 9, 16),
                 ht=c(46, NA, NA, 69),
                 school=c("yes", "yes", "no", "no"))
d

# Finding rows with NA value
d % > % filter(is.na(ht))

# Finding rows with no NA value
d % > % filter(! is.na(ht))

#output:
# A tibble: 4 x 4
name      age    ht school

1 Abhi        7    46 yes   
2 Bhavesh     5    NA yes   
3 Chaman      9    NA no    
4 Dimri      16    69 no

# A tibble: 2 x 4
name      age    ht school

1 Bhavesh     5    NA yes   
2 Chaman      9    NA no

# A tibble: 2 x 4
name    age    ht school

1 Abhi      7    46 yes   
2 Dimri    16    69 no






arrange(): For reordering of the cases.

# Create a data frame with missing data
d <- data.frame( name = c("Abhi", "Bhavesh", "Chaman", "Dimri"),
                 age = c(7, 5, 9, 16),
                 ht = c(46, NA, NA, 69),
                 school = c("yes", "yes", "no", "no") )

# Arranging name according to the age
d.name<- arrange(d, age)
print(d.name)

#output:
# A tibble: 4 x 4
name      age    ht school

1 Bhavesh     5    NA yes   
2 Abhi        7    46 yes   
3 Chaman      9    NA no    
4 Dimri      16    69 no 

select() and rename(): For choosing variables and using their names as a base for doing so.
# Create a data frame with missing data
d < - data.frame(name=c("Abhi", "Bhavesh",
                        "Chaman", "Dimri"),
                 age=c(7, 5, 9, 16),
                 ht=c(46, NA, NA, 69),
                 school=c("yes", "yes", "no", "no"))

# startswith() function to print only ht data
select(d, starts_with("ht"))

# -startswith() function to print
# everything except ht data
select(d, -starts_with("ht"))

# Printing column 1 to 2
select(d, 1: 2)

# Printing data of column
# heading containing 'a'
select(d, contains("a"))

# Printing data of column
# heading which matches 'na'
select(d, matches("na"))



# A tibble: 4 x 1
ht

1    46
2    NA
3    NA
4    69

# A tibble: 4 x 3
name      age school

1 Abhi        7 yes   
2 Bhavesh     5 yes   
3 Chaman      9 no    
4 Dimri      16 no

# A tibble: 4 x 2
name      age

1 Abhi        7
2 Bhavesh     5
3 Chaman      9
4 Dimri      16
# A tibble: 4 x 2
name      age

1 Abhi        7
2 Bhavesh     5
3 Chaman      9
4 Dimri      16

# A tibble: 4 x 1
name   

1 Abhi   
2 Bhavesh
3 Chaman 
4 Dimri


mutate() and transmute(): Addition of new variables which are the functions of prevailing variables.

# Create a data frame with missing data
d <- data.frame( name = c("Abhi", "Bhavesh",
                          "Chaman", "Dimri"),
                 age = c(7, 5, 9, 16),
                 ht = c(46, NA, NA, 69),
                 school = c("yes", "yes", "no", "no") )

# Calculating a variable x3 which is sum of height
# and age printing with ht and age
mutate(d, x3 = ht + age)

# Calculating a variable x3 which is sum of height
# and age printing without ht and age
transmute(d, x3 = ht + age)


# A tibble: 4 x 5
name      age    ht school    x3

1 Abhi        7    46 yes       53
2 Bhavesh     5    NA yes       NA
3 Chaman      9    NA no       


NA
4 Dimri      16    69 no        85

# A tibble: 4 x 1
x3

1    53
2    NA
3    NA
4    85
> 



     summarise(): Condensing various values to one value.
# Create a data frame with missing data
d <- data.frame( name = c("Abhi", "Bhavesh",
                          "Chaman", "Dimri"),
                 age = c(7, 5, 9, 16),
                 ht = c(46, NA, NA, 69),
                 school = c("yes", "yes", "no", "no") )

# Calculating mean of age
summarise(d, mean = mean(age))

# Calculating min of age
summarise(d, med = min(age))

# Calculating max of age
summarise(d, med = max(age))

# Calculating median of age
summarise(d, med = median(age))


# A tibble: 1 x 1
mean

1     9.25

# A tibble: 1 x 1
med

1     5

# A tibble: 1 x 1
med

1    16

# A tibble: 1 x 1
med
1     8

sample_n() and sample_frac(): For taking random specimens.
# Create a data frame with missing data
d <- data.frame( name = c("Abhi", "Bhavesh",
                          "Chaman", "Dimri"),
                 age = c(7, 5, 9, 16),
                 ht = c(46, NA, NA, 69),
                 school = c("yes", "yes", "no", "no") )

# Printing three rows
sample_n(d, 3)

# Printing 50 % of the rows
sample_frac(d, 0.50)





# A tibble: 3 x 4
name      age    ht school

1 Abhi        7    46 yes   
2 Bhavesh     5    NA yes   
3 Chaman      9    NA no 

# A tibble: 2 x 4
name      age    ht school

1 Dimri      16    69 no    
2 Bhavesh     5    NA yes  























