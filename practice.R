# Write a R program to print two number also perform arithmetic operations (+, -,*, /) and print it.

num1 <- readline("Enter Number 1 : ")
num1 <- as.numeric(num1)
num2 <- readline("Enter Number 2 : ")
num2 <- as.numeric(num2)


add <- num1 + num2
cat("Addition : ",add)

sub <- num1 - num2
cat("\nSubtraction : ",sub)

mul <- num1 * num2
cat("\nMultiplication : ",mul)

div <- num1 / num2
cat("\nDivision : ",div)

# Write a R program that take integer value from user and check whether that number is odd or even and print the result.

num <- readline("Enter the Number : ")
num <- as.numeric(num)
print(num)

if(num%%2 == 0){
  print("Number is Even")
}else{
  print("Number is Odd")
}

# Write a R program that take two string input from user stri and str2. Check whether the string2 is exist in string1 using built in function.

str1 <- readline("Enter String 1 : ")
print(str1)
str2 <- readline("Enter String 2 : ")
print(str2)
data <- grepl(str1, str1)
data

# Write a menu driven R program that perform addition, subtraction, multiplication and division of two vectors.

print("Enter 1 for Addtition")
print("Enter 2 for Subtraction")
print("Enter 3 for Multiplication")
print("Enter 4 for Division")

n1 <- c(10,20,30)
n2 <- c(40,50,60)
num <- readline("Enter the Number of Your Choice : ")
num <- as.numeric(num)
cat("Entered Number is ",num)

add <- n1 + n2
sub <- n1 - n2
mul <- n1 * n2
div <- n1 / n2

if(num == 1){
  cat("\nAddition : ",add)
}else if(num == 2){
  cat("\nSubtraction : ",sub)
}else if(num == 3){
  cat("\nMultiplication : ",mul)
}else if(num == 4){
  cat("\nDivision : ",div)
}else{
  cat("\nEnter the Valid Number")
}

# Create three vectors:Rollno,Name and course.
#Add four values in each vector.
#Based on vectors create StudentList where we can access rollno, name and course using their name instead of index.
#Add a vector semester in SemesterList first and then concate that list with StudentList.
#Display all new updated list.
#Delete semester from StudentList and display updated list.

rollno = c(1,2,3,4)
name = c("A","B","C","D")
course = c("IMSCIT","BCA","MCA","MSCIT")

StudentList = list("Roll No"=rollno, "Name"=name, "Course"=course)
print(StudentList)

sem <- c("SEM-1","SEM-2","SEM-3","SEM-4")
SemList <- list("Semester"=sem)
print(SemList)

StudentList <- list(StudentList, SemList)
print(StudentList)