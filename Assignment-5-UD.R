#ASSIGNMENT 5 FUNCTIONS

#Que :- 1 Create a User defined function for addition of two number entered by user.
fun <- function(a,b){
  add <- a + b
  print(add)
}

a <- readline("Enter the Value of A : ")
b <- readline("Enter the Value of B : ")
num1 <- as.numeric(a)
num2 <- as.numeric(b)
fun(num1, num2)


#Que :- 2 Create menu driven program for following:

#Function without argument
fun <- function(){
  print("Hello World")
}

fun()

#Function with argument
fun <- function(name){
  cat(name, "World!")
}

fun("Hello")

#Function with return type
fun <- function(a){
  return (5 * a)
}

print(fun(5))
print(fun(10))
print(fun(15))

#MENU DRIVEN FUNCTION
print("Enter 1 For Function without argument")
print("Enter 2 For Function with argument")
print("Enter 3 For Function with return type")

input <- readline("Enter the Number of Your Choice : ")
cat("Entered Number is",input,"\n")

if(input==1){
  fun <- function(){
    print("Hello World")
  }
  
  fun()
}else if(input==2){
  fun1 <- function(name){
    cat(name, "World!")
  }
  
  fun1("Hello")
}else if(input==3){
  fun2 <- function(a){
    return (5 * a)
  }
  
  print(fun2(5))
  print(fun2(10))
  print(fun2(15))
}else{
  print("Enter the Correct Number")
}

#Que :- 3 Create a user defined function to check whether a user given number falls within a given vector.
fun <- function(input, a){
  if(input %in% a){
    print("Value Found in Vector")
  }else{
    print("Value Not Found in Vector")
  }
}

a <- c(1,2,3,4,5)
cat("Vector Values are",a)
input <- readline("Enter the Value to Find in Vector : ")
cat("Entered Value is",input,"\n")

fun(input, a)

#Que :- 4 Write a R function that takes a vector and returns a new vector with distinct elements from the first list.
fun <- function(a){
  cat("Unique Elements are",unique(a))
}

a <- c(1,3,5,3,7,10,25,10,50,25)
cat("Elements of Vector is",a,"\n")
fun(a)