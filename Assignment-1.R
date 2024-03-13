#ASSIGNMENT 1

#Que :- 1 Write a R program to print two number also perform arithmetic operations (+, -,*, /) and print it.
num1 <- readline("Enter the Value of Number 1 : ")
num2 <- readline("Enter the Value of Number 2 : ")
n1 <- as.numeric(num1)
n2 <- as.numeric(num2)

add <- n1 + n2
cat("Addition : ",add)

sub <- n1 - n2
cat("\nSubtraction : ",sub)

div <- n1 / n2
cat("\nDivision : ",div)

mul <- n1 * n2
cat("\nMultiplication : ",mul)

#Que :- 2 Write a R program to take user input and print that value.
a <- readline("Enter Any Number : ")
print(a)

#Que :- 3 Write a R program to take input rollno, name and course from the user and display the values.
rollno <- readline("Enter Roll No : ")
name <- readline("Enter Name : ")
course <- readline("Enter Course : ")
rn <- as.numeric(rollno)

cat("Roll No : ",rn)
cat("\nName : ",name)
cat("\nCourse : ",course)

#Que :- 4 Write a R program that take integer value from user and check whether that number is odd or even and print the result.
num <- readline("Enter Any Number : ")
n <- as.numeric(num)

if(n %% 2 == 0)
{
  print("Even Number")
}else
{
  print("Odd Number")
}

#Que :- 5 Write a R program that take two string input from user str1 and str2. Check whether the string2 is exist in string1 using built in function.
str1 <- readline("Enter String 1 : ")
str2 <- readline("Enter String 2 : ")

if(str1==str2){
  print("String Match")
}else{
  print("String Not Match")
}

data <- grepl(str1, str2)
print(data)

#Que :- 6 Write a R program that take string input from user and print length of the string.
str <- readline("Enter the Stirng : ")
print(length(str))

#Que :- 7 Write a R program that take three number from user and print which is maximum out of it.
num1 <- readline("Enter Number 1 : ")
num2 <- readline("Enter Number 2 : ")
num3 <- readline("Enter Number 3 : ")

n1 <- as.numeric(num1)
n2 <- as.numeric(num2)
n3 <- as.numeric(num3)

if(n1 > n2){
  if(n1 > n3){
    print("Number 1 is Maximum")
  }else{
    print("Number 3 is Maximum")
  }
}else{
  if(n2 > n3){
    print("Number 2 is Maximum")
  }else{
    print("Number 3 is Maximum")
  }
}

#Que :- 7 Write a R program that take three number from user and print which is maximum out of it.
num1 <- readline("Enter Number 1 : ")
num2 <- readline("Enter Number 2 : ")
num3 <- readline("Enter Number 3 : ")

n1 <- as.numeric(num1)
n2 <- as.numeric(num2)
n3 <- as.numeric(num3)

if(n1 > n2 && n1 > n3){
  print("Number 1 is Maximum")
}else if(n2 > n1 && n2 > n3){
  print("Number 2 is Maximum")
}else{
  print("Number 3 is Maximum")
}

#Que :- 8 Make one menu driven program which give demo for basic data types like numeric, integer, complex, character and logical.
print("Enter 1 for Number")
print("Enter 2 for String")

input <- readline("Enter Number of Your Choice : ")

if(input == 1){
  num <- readline("Enter Any Number : ")
  n <- as.numeric(num)
  cat("Entered Number is :",n)
}else{
  str <- readline("Enter Any String : ")
  cat("Entered String is :",str)
}