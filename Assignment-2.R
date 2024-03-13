#ASSIGNMENT 2

#Que :- 1 Write a R program to create three vectors numeric data, character data and logical data. Display the content of the vectors and their type.
a <- c(1,2,3,4,5)
b <- c("A", "B", "C", "D", "E")
c <- c(TRUE)

cat("Value of A :",a)
cat("\nValue of B :",b)
cat("\nValue of C :",c)

cat("\n Data Type of A :",class(a))
cat("\n Data Type of B :",class(b))
cat("\n Data Type of C :",class(c))

#Que :- 2 Write a menu driven R program that perform addition, subtraction, multiplication and division of two vectors.
print("Enter 1 for Addition")
print("Enter 2 for Subtraction")
print("Enter 3 for Multiplication")
print("Enter 4 for Division")

n1 <- c(1,2,3)
n2 <- c(4,5,6)
input <- readline("Enter the Number of Your Choice : ")
cat("Entered Number is",input)
as.numeric(input)

add <- n1 + n2
sub <- n1 - n2
mul <- n1 * n2
div <- n1 / n2

if(input == 1){
  cat("\nAddition is",add)
}else if(input == 2){
  cat("\nSubtraction is",sub)
}else if(input == 3){
  cat("\nMultiplication is",mul)
}else if(input == 4){
  cat("\nDivision is",div)
}else{
  print("Enter the Valid Number")
}

#Que :- 3 Write a R program to find Sum, Mean and Product of a Vector.
a <- c(1,2,3,4)
cat("Value of Vector A is",a)

cat("\nSum is",sum(a))
cat("\nMean is",mean(a))
cat("\nProduct is",prod(a))

#Que :- 4 Write a R program to find the minimum and the maximum of a Vector.
a <- c(10,20,30,40)
cat("Value of A is",a)

cat("\nMinimum of Vector A is",min(a))
cat("\nMaximum of Vector A is",max(a))

#Que :- 5 Write a R program to sort a Vector in ascending and descending order.
a <- c(1,4,20,3,15)
cat("Value of Vector A is",a)

cat("\nAscending Order :",sort(a))
cat("\nDescending Order :",sort(a, decreasing = TRUE))

#Que :- 6 Write a R program to test whether a given vector contains a specified element entered by user.
a <- c(1,2,3,4)
cat("Value of Vector A is",a)
input <- readline("Enter the Value to Find : ")
cat("\nEntered Value is",input)

if(input %in% a){
  cat("\nValue Found in Vector A")
}else{
  cat("\nValue Not Found in Vector A")
}

#Que :- 7 Write a R program to find the elements of a given vector that are not in another given vector.
a <- c(1,3,5,7,9)
b <- c(9,8,6,5,3)

cat("Elements of A :",a)
cat("\nElement of B :",b)
cat("\nElements Present in A not in B are",setdiff(a,b))

#Que :- 8 Write a R program to combines two given vectors by columns and by rows.
a <- c(1,2,3)
b <- c(4,5,6)

cat("Elements of A :",a)
cat("\nElements of B :",b)
cat("\nRow Bind Vector is",rbind(a,b))
cat("\nColumn Bind Vector is",cbind(a,b))

#Que :- 9 Write a R program to list the distinct values in a vector from a given vector.
a <- c(1,3,5,3,7,10,25,10,50,25)

cat("Elements of Vector A is",a)
cat("\nUnique Elements Are",unique(a))

#Que :- 10 Write a R program to combine value from two vector in one.
a <- c(1,3,5,7,9)
b <- c(2,3,6,8,0)

cat("Elements of Vector A are",a)
cat("\nElements of Vector B are",b)
cat("\nUnion is",union(a,b))