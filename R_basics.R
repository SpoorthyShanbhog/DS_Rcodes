5+1
5-6
5*6
10/5
1:50
50:1

print(1:20)

a = seq(1,10,by=2)
a

b = rep(1,10)
b

c=rep(1:5,5)
c

print("Welcome to R programming session")

print(2.1+3)

#Assignment operations

length <- 5  
width <- 7
Area <- length * width
Area

ctrl L #to clear console

#Logical

a = TRUE
a
class(a)
is.logical(a)


#Numeric

a <- 10
a
class(a)
is.numeric(a)

b <- 2L #L is for integer
b
class(b)

#Character

a<-"Hello"
a
class(a)
is.character(a)
 
#Data Types in R - Vector, List, Matrix, Array, Factor, Data Frame
#Vector - contains elements of same class
#there are 6 types of thes atomic Vectors, also known as 6 classes

#logical vector

a <- c(TRUE, FALSE, TRUE, FALSE)
a
 
#integer vector 
b <- c(1L, 2L, 3L)
b
class(b)

s <- c(1, 2L, 3L) #1 IS NUMERIC OTHERS ARE INTEGER
s
class(s)

#numeric vector

c <- c(0,1,2,5.3,4.3333,66,-2,4,c(7,8,9))
c
class(c)

d <- c(2L, 5L, 7)
d
class(d)

#Integer #whole numbers & not a fraction

h <- c(1L, 4L, 7L, 6.6, 4.55)
h
class(h)

d <- c(2L, 34, 0L, 'Basics')
d
class(d)

#complex

d <- 5+9i
d
class(d)++

#character vector
e <- c("Right now", 'it is', '10:15 am')
e
class(e)

#accessing vector elements by their indices or subscripts
a
a[1:3]
a[c(1,3)]

# a[1:3] != a[c(1,3)]

#viewing vectors in tabular format
View(e) #only helpful in small length vectors

#List - can contain many different types of elements inside it unlike vectors 
#functions and even another list inside it

h <- c(23, 21.3, c(1,2,3), "hello", sin)
h
View(h)
class(h)
h[1]
h[3]
h[[3]][1]
h[1:3]

g <- c(23, 21.3, c(2,5,3), "hello", sin)
g
class(g)
View(g)

h <- c(23, 21.3, c(1,2,3), "hello") #here the function is not present so
h
class(h)

h <- c(23, 21.3, c(1,2,3), "hello", 3+5i, 2L)
h
class(h)
View(h)

h <- c(23, 21.3, c(1,2,3), "hello", 3+5i, 2L, mean)
h
class(h)
View(h)

#Accessing List elements by their index
h[[1]]
h[1]
h[[3]][2]

mylst <- list(23, 'abc', list(1,2,3))
mylst[[3]]
mylst[3]

mylst[[3]][3]

#Matrix - two dimensional (row*columns) rectangular data set
#It can be created using a vector input to the matrix function
# The data elements must be of the same type
#All columns in a matrix must have the same type of mode(numeric, character)
#and the same length

i <- matrix(c(10,20,30), nrow=3, ncol=2, byrow=FALSE, 
            dimnames = list(c('r1', 'r2', 'r3'), c('c1', 'c2')))
i
class(i)
i[3,2]

#Array - while matrices are confined to 2 dimensions, arrays can be of any number of dimensions
j <- array(c("R", "Promming", "Session"), dim = c(2, 5, 3))
j
class(j)
View(j)
#Accessing an array
j[,,3] #4th array

#accessing individual elements from an array
j[2,5,1]  #2nd row, 5th column, 1st array

#Factor - variable which can take certain values(levels) and not any
?factor
k <- c("red", "green", "blue", "red", "red")
x <- factor(k)
class(x)
x

#Data Frame
#unlike a matrix in data frame each column can contain different modes of data
#it is a list of vectors of equal length
?data.frame
m <- data.frame(gender = c("Male", "Male", "Female"), height = c(152, 171.5, 165), 
                weight = c(81, 93, 67), Age = c(42, 38, 64))
m
class(m)
View(m)

#Accessing columns/features of a data frame
m[1]
#accessing elements of a data frame
m$height
m$gender
m$gender[3]
m[2]
m[[2]]
m[[2]][2]

m
m[c(1,2), c(2,3)]
m[3,]
# end of data types

#variables or objects in R

#valid &invalid variable types
#valid

var_name2. <- 1 #has letters, numbers, dot and underscore
.var_name <- 2 #can start with a dot(.) but the dot(.) should not be followed by a number
#dot variable is a hidden variable. not shown in the global environment
var.name <- 3

#Invalid 
var_name% <- 4 #only dot(.) and underscore allowed
2var_name <- 5 #cannot start with a number
.2var_name <- 6 #dot followed by a number makes it invalid
_var_name <- 7 #cannot start with _

#variable assignment
#the variables can be assigned values using leftward, rightward and equal to operator

#assignment using leftward operator

var.1 <- c("R", "Programming")
var.1

#assignment using rightward operator 

c(TRUE,1) -> var.2
var.2

#assignment using equal operator

var.3 = c(0,1,2,3)
var.3

#finding variables in environment
?ls
ls() #returns all the variables that we have created
a <- 3
ls(pattern = "a") #displays variables with var text in it
ls(all.name=TRUE) #also displays hidden(starting with.) variables

# deleting variables
rm(var.1) # will remove all variables with var text in it
var.1
# end of variables

# operators in R
# 5 = Arithmetic, Relational, Logical, Assignment, Miscellaneous

#Arithmetic Operators
n <- c(1,2.4,5)
o <- c(3,4.7,7)
p <- c(1.9,2,7)
# 1. + addition
n+o+p

# 2. -subtraction
n-o
n-o-p

# 3. *multiplication
n*o*p

#4. /division
n/o

# %% give the remainder of the first value with the second

13%%4

# %/% the result of division of the first value with second

13%/%4 

# ^ the first value raised to the exponent of the second value

2^3

#relational operators - returns boolean values
q <- c(1,3,4,3,2)
r <- c(2,4,4,5,2)

#1. > greater than
q[1] > r[2]

#2. < lesser than
q < r

#3. == equal to
q==r

#4. >= greater than or equal to
q >= r

#5. <= lesserr than or equal to
q <= r

#6. != not equal to
q != r

# relational operators
# condition: all numbers greater than 1 are considered as logical value TRUE
s <- c(3, 1, TRUE, 2+3i)
t <- c(4, 1, FALSE, 2+3i)
#1. & element-wise Logical AND
s&t
#2. | element-wise logical OR 
s|t
#3. ! logical not - can be applied on a single vector
!(s&t)
!(s|t)

#logical operators (&& || considers only 1st element of the vectors)
# single element as output)
#4. && logical AND

u <- c(3, 0, TRUE, 2+2i)
v <- c(1, 3, TRUE, 2+3i)
u&&v

#5. || logical OR
x <- c(0, 0, TRUE, 2+3i)
y <- c(0, 3, TRUE, 2+3i)
x||y

# assignment operators
 
#1. left assignment <- or == or <<-

v1 <- c(3, 1, TRUE, 2+3i)
v2 <<- c(3, 1, TRUE, 2+3i)
v3 = c(3, 1, TRUE, 2+3i)
v1
v2
v3

#2. Right assignment -> or ->>

c(3, 1, TRUE, 2+3i) -> v4
c(3, 1, TRUE, 2+3i) ->> v5
v4
v5

# Miscellaneous Operators
#1. : colon operator - It creates the series of number in sequence
v6 <- 1.3:10.3
v6
class(v6)

#2. %in% - an element belongs to a vector 
v7 <- c(8, 9, 10)
v8 <- c(12, 13, 14)
t <- 1:10

#whether element present in v7 is present in t. if so for every element 
# v7 it will return true or false
v7 %in% t 
v8 %in% t

#3. %*% - multiply a matrix with another matrix
v9 <- matrix(c(2,6,5,1,10,4), nrow=2, ncol=3, byrow=TRUE)
v9
 
# t is transpose of matrix
t(v9)

# %*% is matrix multiplication
v9t <- v9 %*% t(v9)
v9t

#end of operators