#ASSIGNMENT 2

# Que : 1
# Write a R program to create three vectors numeric data, character data and logical data. Display the content of the vectors and their type.

num <- c(10, 0.5)
print(num)
print(class(num))

char <- c("A", "ABC")
print(char)
print(class(char))

log <- c(TRUE, FALSE)
print(log)
print(class(log))

# Que : 2
# Write a menu dirven R program that perform addition, subtraction, multiplication and division of two vectors.
print("Enter 1 for Addition")
print("Enter 2 for Subtraction")
print("Enter 3 for Multiplication")
print("Enter 4 for Division")

input <- readline("Enter the Number of Your Choice : ")
n <- as.numeric(input)
print("Entered Number is : ",n)

n1 <- 10
print(n1)
n2 <- 20
print(n2)

add <- n1 + n2
sub <- n1 - n2
mul <- n1 * n2
div <- n1 / n2

if(n==1) {
  cat("Addition : ",add)
} else if(n==2) {
  cat("\nSubtraction : ",sub)
} else if(n==3) {
  cat("\nMultiplication : ",mul)
} else if(n==4) {
  cat("\nDivision : ",div)
} else {
  cat("\nEnter the Valid Number")
}

# Que : 3
# Write a R program to find Sum, Mean and Product of a Vector.

a <- c(10,20,30)
print(a)
cat("Sum :",sum(a))
cat("\nMean :",mean(a))
cat("\nProduct :",prod(a))

# Que : 4
# Write a R program to find the minimum and the maximum of a Vector.

a <- c(10,20,30)
print(a)
cat("Minimum :",min(a))
cat("\nMaximum :",max(a))

# Que : 5
# Write a R program to sort a Vector in ascending and descending order.
a <- c(10,30,50,20,40)
print(a)
cat("Ascending Order :",sort(a))
cat("\nDesending Order :",sort(a, decreasing = TRUE))

# Que : 6
# Write a R program to test whether a given vector contains a specified element entered by user.
a <- c(10,20,30)
print(a)
input <- readline("Enter the Number : ")
n <- as.numeric(input)
print(n)

if(n %in% a) {
  print("Element Found")
} else {
  print("Element Not Found")
}

# Que : 7
# Write a R program to find the elements of a given vector that are not in another given vector.
a <- c(10,20,30,40,50)
print(a)

b <- c(10,60,30,70,50)
print(b)

cat("Element there in A but Not in B are :",setdiff(a,b))

# Que : 8
# Write a R program to combines two given vectors by columns and by rows.
a <- c(10,20,30)
b <- c(40,50,60)
print(a)
print(b)

print(rbind(a,b))
print(cbind(a,b))

# Que : 9
# Write a R program to list the distinct values in a vector from a given vector.
a <- c(10,2,30,5,2,6,30,9,5)
print(a)

print(unique(a))

# Que : 10
# Write a R program to combine value from two vector in one.
a <- c(1,2,3)
b <- c(4,5,6)

print(a)
print(b)

print(union(a,b))
