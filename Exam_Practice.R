#ASSIGNMENT 1

#Q1
a <- c(10)
b <- c(20)

add <- a + b
cat("Addition : ",add)

sub <- a - b
cat("\nSubtraction : ",sub)

mul <- a * b
cat("\nMultiplication : ",mul)

div <- a / b
cat("\nDivison : ",div)

#Q2
input <- readline("Enter Your Name : ")
print(input)

#Q3
rn <- readline("Enter Your Roll No : ")
name <- readline("Enter Your Name : ")
course <- readline("Enter Your Course : ")
rollno <- as.numeric(rn)

cat("Roll No : ",rollno)
cat("\nName : ",name)
cat("\nCourse : ",course)

#Q4
num <- readline("Enter the Number")
n <- as.numeric(num)
print(num)

if(n %% 2 == 0) {
  print("Even Number")
} else {
  print("Odd Number")
}

#Q5
str1 <- readline("Enter the String 1 : ")
print(str1)
str2 <- readline("Enter the String 2 : ")
print(str2)

data <- grepl(str1, str2)
print(data)

#Q6
str <- readline("Enter the String : ")
print(str)

print(length(str))

#Q7
num1 <- readline("Enter Number 1 : ")
num2 <- readline("Enter Number 2 : ")
num3 <- readline("Enter Number 3 : ")

n1 <- as.numeric(num1)
n2 <- as.numeric(num2)
n3 <- as.numeric(num3)

if (n1>n2 && n1>n3) {
  print("Number 1 is Maximum")
} else if (n2>n1 && n2>n3) {
  print("Number 2 is Maximum")
} else if (n3>n1 && n3>n2) {
  print("Number 3 is Maximum")
} else {
  print("All Number are Equal")
}

#Q8
print("Enter 1 for Numeric")
print("Enter 2 for Integer")
print("Enter 3 for Complex")
print("Enter 4 for Logical")

num <- readline("Enter the Choice of Your Number : ")
n <- as.numeric(num)
print(n)

if (n==1) {
  numeric <- readline("Enter the Number : ")
  nu <- as.numeric(numeric)
  print(nu)
  print(class(nu))
} else if (n==2) {
  int <- readline("Enter the Integer : ")
  i <- as.integer(int)
  print(int)
  print(class(i))
} else if (n==3) {
  com <- readline("Enter the Complex : ")
  c <- as.complex(com)
  print(c)
  print(class(c))
} else if (n==4) {
  log <- readline("Enter the Logical Value : ")
  l <- as.logical(log)
  print(l)
  print(class(l))
} else {
  print("Enter the Valid Number")
}


#ASSIGNMENT 2

#Q1
num <- c(10, 0.5)
print(num)
print(class(num))

char <- c("A", "ABC")
print(char)
print(class(char))

log <- c(TRUE, FALSE)
print(log)
print(class(log))

#Q2
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

#Q3
a <- c(10,20,30)
print(a)
cat("Sum :",sum(a))
cat("\nMean :",mean(a))
cat("\nProduct :",prod(a))

#Q4
a <- c(10,20,30)
print(a)
cat("Minimum :",min(a))
cat("\nMaximum :",max(a))

#Q5
a <- c(10,30,50,20,40)
print(a)
cat("Ascending Order :",sort(a))
cat("\nDesending Order :",sort(a, decreasing = TRUE))

#Q6
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

#Q7
a <- c(10,20,30,40,50)
print(a)

b <- c(10,60,30,70,50)
print(b)

cat("Element there in A but Not in B are :",setdiff(a,b))

#Q8
a <- c(10,20,30)
b <- c(40,50,60)
print(a)
print(b)

print(rbind(a,b))
print(cbind(a,b))

#Q9
a <- c(10,2,30,5,2,6,30,9,5)
print(a)

print(unique(a))

#Q10
a <- c(1,2,3)
b <- c(4,5,6)

print(a)
print(b)

print(union(a,b))


#ASSIGNMENT 3

#Q1
a <- c("A", "B", "C")
b <- c(10,0.5,50)
c <- c(TRUE, FALSE)

print(a)
print(b)
print(c)

l <- list("Strings"=a, "Numbers"=b, "Logical"=c)
print(l)

#Q2
a <- c("Hello", "World!")
b <- c("R", "Programming")

list1 <- list("String 1"=a, "String 2"=b)
print("First List : ")
print(list1)

c <- c("A", "B")
d <- c("C", "D")

list2 <- list("String 3"=c, "String 4"=d)
print("Second List : ")
print(list2)

mergelist <- c(list1,list2)
print("Merged List : ")
print(mergelist)

#Q3
a <- c("A", "B", "C")
b <- c(10,0.5,50)
c <- c(TRUE, FALSE)

print(a)
print(b)
print(c)

l <- list("Strings"=a, "Numbers"=b, "Logical"=c)
print(l)

n <- unlist(l)
n

#Q4
a <- c(10,20,30)
c <- c(40,50,60)

b <- list("A"=a, "C"=c)
b

print(length(b))


#Q5
rollno <- c(1,2,3,4)
name <- c("A", "B", "C", "D")
course <- c("IMSCIT", "BCA", "MCA", "BSCIT")

StudentList <- list("Roll No"=rollno, "Name"=name, "Course"=course)
print(StudentList)

sem <- c(1,2,3,4)
semlist <- list("Semester"=sem)
print(semlist)

StudentList <- list(StudentList, semlist)
print(StudentList)

print(StudentList[-4])


#ASSIGNMENT 4
#EXAM-DATA
name <- c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas')
score <- c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19)
attempts <- c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1)
qualify <- c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')

#Q1
df <- data.frame(name, score, attempts, qualify)
df

#Q2
print(df$name)

#Q3
print(df[c(1,2),])

#Q4
print(df[c(3,5), c(1,3)])

#Q5
country <- c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J")
df <- cbind(df, country)
df

#STUDENT-DATA

#Q1
id <- c(1,2,3,4,5)
name <- c("A", "B", "C", "D", "E")
course <- c("IMSCIT", "BSCIT", "BCA", "MCA", "B-Tech")

#Q2
df <- data.frame(id, name, course)
df

#Q3
hobby <- c("A", "B", "C", "D", "E")
print(hobby)

df <- cbind(df, hobby)
df

#Q4
salary <- c("10000", "20000", "30000", "40000", "50000")
print(salary)

df <- cbind(df, salary)
df

#Q5
print(df[c(2,4), c(2,4)])


#ASSIGNMENT 5
#Q1
EMPLOYEE_DATA

#Q2
str(employee)

#Q3
hobby <- c("Reading", "Writting", "Listening", "Writting", "Reading", "Listening")
print(hobby)

employee <- cbind(employee, hobby)
employee

#Q4
print(nrow(employee[employee$Department == "Development",]))

#Q5
print(employee[employee$Salary > 30000,])

#Q6
print(employee[c(2,4),])

#Q7
emp <- c("Emp 7", "Rohan Patel", "Development", 32000, "Coding")
print(emp)

employee <- rbind(employee, emp)
employee

#Q8
print(employee[-c(1,3),])

#Q9
employee$hobby = NULL
employee


#Q1
PRODUCT_DATA

#Q2
str(product)

#Q3
print(product[,c(1,4)])

#Q4
product <- product[,c("Name", "Quantity", "Price", "Category")]
product

#Q5
product$Quantity = NULL
product

#Q6
print(product[product$Price < 10000,])

#Q7
print(product[-c(2,4,6),])

#Q8
product$Category = NULL
product

#USER-DEFINED FUNCTION

#Q1
fun <- function(a,b) {
  add <- a + b
  print(add)
}

num1 <- readline("Enter Number 1 : ")
num2 <- readline("Enter Number 2 : ")
a <- as.numeric(num1)
b <- as.numeric(num2)
fun(a, b)

#Q2
print("Enter 1 for Function Without Argument")
print("Enter 2 for Function With Argument")
print("Enter 3 for Function With Return Type")

input <- readline("Enter the Number of Your Choice : ")
input <- as.numeric(input)
print(input)

if(input==1){
  fun <- function(){
    print("Hello World!")
  }
  
  fun()
} else if(input==2){
  fun <- function(name){
    cat(name, "World!")
  }
  
  fun("Hello")
} else if(input==3){
  fun <- function(a){
    return(5 * a)
  }
  
  print(fun(2))
}

#Q3

fun <- function(input, v){
  if(input %in% v){
    print("Element Found")
  } else{
    print("Element Not Found")
  }
}

v <- c(10,20,30,40,50)
print(v)

input <- readline("Enter the Number : ")
input <- as.numeric(input)
print(input)

fun(input, v)

#Q4
fun <- function(a){
  cat("Unique Elements are : ",unique(a))
}

a <- c(10,4,64,4,75,23,10,64)
print(a)
fun(a)

#ASSIGNMENT 6
View(mtcars)

#Q1
print(head(mtcars))

#Q2
print(tail(mtcars, 7))

#Q3
str(mtcars)

#Q4
print(nrow(mtcars))
print(ncol(mtcars))
print(dim(mtcars))

#Q5
print(mtcars[,c(1,3,5)])

#Q6
print(sapply(mtcars[,c(2,6,10),], sum))

#Q7
df <- mtcars

print(sapply(df, sum))

#Q8
print(sapply(df, max))


#EMPLOYEE-DATA

#Q1
print(grep("^P", emp$Name, ignore.case = TRUE, value = TRUE))

#Q2
print(substr(emp$Name, 1,3))

#Q3
print(head(emp, 4))

#Q4
emp$Salary <- gsub("\\$", "", emp$Salary)
emp

#Q5
emp$DOB <- as.Date(emp$DOB, format = "%d-%m-%Y")
emp

#Q6
print(emp[emp$Salary > 300,])

#Q7
print(paste(emp$Name, emp$Salary, sep = "_"))

#Q8
print(lapply(emp, toupper))

#Q9
fix(emp)

#Q10
print(aggregate(emp$Salary, list(emp$Department), FUN = max))


#ASSIGNMENT 7

#Q1
E_id <- c(1,2,3,4,5,6,7,8,9,10)
Age <- c(30,25,22,20,35,40,45,43,55,39)

df <- data.frame(E_id, Age)
df

#(i)
print(summary(df))

#(ii)
print(sapply(df, max))
print(sapply(df, min))
print(sapply(df, sort))

#Q2
Student_Name = c("Krishna", "Madhav", "Gopi", "Kruti", "Mohan", "Shyam", "Priya", "Radhika")
Marks = c(75, 70, 65, 50, 90, 80, 55, 85)

df <- data.frame(Student_Name, Marks)
df

#(i)
chart <- pie(df$Marks, radius = 0.9, labels = df$Student_Name, main = "Pie Chart", col = rainbow(length(df$Marks)), border = "red", clockwise = TRUE)
legend("topright", df$Student_Name, fill = rainbow(length(df$Marks)))
chart

#Q3
Profit = c(20, 30, 35, 45, 50, 75, 90, 95)
Month = c("January", "February", "March", "April", "May", "June", "July", "August")

df <- data.frame(Profit, Month)
df

#(i)
chart <- barplot(df$Profit, main = "Bar Chart", names.arg = df$Month, xlab = "Month", ylab = "Profit", col = rainbow(length(df$Profit)), border = "Yellow")
chart

#Q4
print(mtcars)

chart = plot(mtcars$wt, mtcars$mpg, main = "Weight VS Mileage", xlab = "Weight", ylab = "Mileage", type = "o", col = c("Blue"))
chart

#Q5
print(StudentData)

#(i)
avg <- (StudentData$Flutter + StudentData$R + StudentData$ML)/3
avg

#(ii)
chart = pie(avg, labels = StudentData$Name, main = "Pie Chart", radius = 0.5, col = rainbow(length(avg)), clockwise = TRUE)
chart

#(iv)
mat <- matrix(c(StudentData$Flutter, StudentData$R, StudentData$ML), nrow = 3, ncol = 5, byrow = TRUE)
mat

chart <- barplot(mat, main = "Bar Chart", names.arg = StudentData$Name, xlab = "Name", ylab = "Marks", col = c("orange", "white", "green"), beside = TRUE)
chart

#Q6
print(mtcars)

#(i)
chart <- boxplot(mpg~cyl, data = mtcars, main = "Box Plot", xlab = "Cylinder", ylab = "Mileage", col = c("blue"))
chart

#ASSIGNMENT 8

#Q1
print(airquality)

#(i)
chart <- boxplot(Temp~Month, data = airquality, main = "Box Plot", xlab = "Month", ylab = "Temperature", notch = TRUE, col = c("orange", "blue"))
chart

#Q2
print(airquality)

#(i)
a <- head(airquality$Temp, 10)

#(ii)
chart <- hist(a, main = "Histogram", labels = airquality$Month, xlab = "Temperature", col = c("blue", "yellow", "orange"), border = "blue", xlim = c(50,80), ylim = c(1,5))
chart

#Q3
srno = c(1,2,3,4,5,6)
product = c("A", "B", "C", "D", "E", "F")
count = c(40,57,50,82,17,16)

df <- data.frame(srno, product, count)
df

#(i)
chart <- pareto.chart(df$count, main = "Pareto Chart", col = heat.colors(length(df$count)), xlab = "Product", ylab = "Frequency Count", ylab2 = "Cumulative Frequency of Count")
chart

#Q4
v1 <- c(25,30,40,22,27,33,26,35,19,28,37,42,35,36,54,24,46,33,25,34,12,39,52,5) 
v2 <- c(54, 43, 67, 76, 45, 59, 66, 78, 80, 92)

stem(v1, scale=2)
stem(v2)

#Q5
print(mtcars)

#(i)
w <- head(mtcars$wt, 6)
w

m <- head(mtcars$mpg, 6)
m

chart <- plot(w, m, xlab = "Weight", ylab = "Mileage", xlim = c(1.5,4), ylim = c(10,25), main = "Weight VS Mileage", cex = 2)
lines(w, m, col = "blue")
abline(lm(w~m))
chart