# Decision making statements in R
#If statement
# syntax:
if (test_expression) {
  statement
}

x <- -4

if(x > 0){
  print("Positive number")
  print(x)
}

# if else statement
# syntax:
if (test_expression){
  statement1
} else{
  statement2
}

x <- 5
if(x>0){
  print("non negetive number ")
} else {
  print("negetive number")
}

#Nested if else statement
if (test_expression1){
  statement1
} else if (test_expression2) {
  statement2
} else if (test_expression3) {
  statement3
} else statement4

x <- -5
if(x==0){
  print("zero")
} else if(x>0) {
  print("positive number")
} else print("negetive number")


# there is an easier way to use if...else statement specifically for
#syntax: ifelse (test_expression,x,y)

a <- c(5,7,2,9)

ifelse(a%%2 == 0, "even", "odd") #%% gives remainder

a/2
a%%2

# accessing help
help()
?ifelse

#for more than 2 conditions
#ifelse(condition1, result1, ifelse(condition2, result2, result3))

client <- c("private", "public", "other", "private")
ifelse(client=='private', 1.12, ifelse(client == 'other', 1.06, 1))

# loops in R
#while loop
#syntax

while (test_expression) {
  statement
}

i <- 1
while(i < 6){
  print(i)
  i = i+1
}

# repeat loop
#syntax
repeat {
  commands
  if(condition){
    break
  }
}

v <- c("Hello")
cnt <- 5

repeat {
  print(v)
  cnt <- cnt+1
  
  if(cnt >5){
    break
  }
}

#for loop
#syntax

for (value in vector) {
  statements
}

v <- LETTERS[1:4]
v
for(a in v){
  print(a)
}

for (i in 1:length(v)){
  print(v[i])
}

# next statement - useful when we want to skip the current statement
# loop without terminating it
# continue(next) - skipping

v <- LETTERS[1:6]
for (i in v){
  if(i == "E"){
    next
  }
  print(i)
}

#function

function_name <- function(arg_1, arg_2, ....) {
  Function body
  }

#user-defined function

new_function <- function(a){
  for(i in 1:a){
    b <- i^2
    print(b)
  }
}

#calling a function

new_function(10)

#calling a function without an argument

new_function <- function(){
  for(i in 1:5){
    print(i^2)
  }
}
new_function()

# calling a function with default argument
# create a function with arguments
new_function <- function(a=3, b=6){
  result <- a*b
  print(result)
}
#call the function without giving any argument.
new_function()
#call the function with giving new values of the argument
new_function(5, 7)

#lazy evaluation of function
#create a function with arguments
new_function <- function(a, b){
  print(a^2)
  print(a)
  print(b)
}
#evaluate the function without supplying one of the argument
new_function(10, 12)

#Mode in R

mySamples <- c(29, 4, 5, 7, 29, 19, 13, 25, 19)
mean(mySamples)
median(mySamples)
mode(mySamples)

library(modeest)
mlv(mySamples, method = "mfv")

# Importing dataset
#######################################################################################
data = read.csv(file.choose())
View(data)
summary(data)




















