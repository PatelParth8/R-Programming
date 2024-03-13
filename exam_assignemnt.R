# Q1

print("Enter 1 for Product of two vector")
print("Enter 2 for Edit element of vector")
print("Enter 3 for Mean of a vector")
print("Enter 4 for List the distinct values from a vector")

input <- readline("Enter Number of Your Choice : ")
input <- as.numeric(input)
print(input)

v1 <- c(1,2,3,2)
v2 <- c(2,5,4,2)

if(input==1){
  print(prod(v1,v2))
}else if(input==2){
  v1[3] <- 5
  print(v1)
}else if(input==3){
  print(mean(v1))
  print(mean(v2))
}else if(input==4){
  print(unique(v1))
  print(unique(v2))
}else{
  print("Enter Valid Number")
}

# Q2

weight <- c(12,24,16,38,21,13,55,17,39,10,60,120,40,70,90)
print(weight)

hist(weight, xlab = "Weight", ylab = "Frequency", col = rainbow(length(weight)), main = "Histogram", xlim = c(0,120), ylim = c(0,5))


----------------------------------------------------------------------------


# Q1
  
print("Enter 1 to Create employee dataframe from above vectors.")
print("Enter 2 to Display only that employee where salary is greater than 30000")
print("Enter 3 to Remove $ symbol from dataframe and display updated dataframe")

input <- readline("Enter Number of Your Choice : ")
input <- as.numeric(input)
print(input)

Emp_Id <- c(1,2,3,4,5)
Name <- c("A", "B", "C", "D", "E")
Salary <- c("$25000", "$35000", "$30000", "$40000", "$45000")

if(input==1){
  employee <- data.frame(Emp_Id, Name, Salary)
  print(employee)
}else if(input==2){
  print(employee[employee$Salary > 30000,])
}else if(input==3){
  employee$Salary <- gsub("\\$", "", employee$Salary)
  print(employee)
}else{
  print("Enter Valid Number")
}



# Q2

View(cars)

stem(cars$dist, scale = 4)


View(faithful)

stem(faithful$eruptions, scale = 2)


------------------------------------------------------------------
  
# Q1
  
print("Enter 1 to find the minimum from a vector")
print("Enter 2 to find descending order of a vector")
print("Enter 3 to Search specified element from a vector")
print("Enter 4 to find the elements of a given vector that are not in another given vector")

input <- readline("Enter Number of Your Choice : ")
input <- as.numeric(input)
print(input)

v1 <- c(1,2,3,2)
v2 <- c(2,5,4,2)

if(input==1){
  print(min(v1))
  print(min(v2))
}else if(input==2){
  print(sort(v1, decreasing = TRUE))
}else if(input==3){
  if(2 %in% v1){
    print("Element Found in Vector")
  }else{
    print("Element Not Found in Vector")
  }
}else if(input==4){
  print(setdiff(v1,v2))
}else{
  print("Enter Valid Number")
}


# Q2

ErrorFrequency <- c(80, 27, 66, 94, 33)
ErrorCause <- c("price code", "schedule date", "supplier code", "contact number", "part number")

df <- data.frame(ErrorFrequency, ErrorCause)
print(df)

pareto.chart(df$ErrorFrequency, main = "Pareto Chart", xlab = "ErrorCause", ylab = "Frequency", ylab2 = "Cumulative Frequency", col = heat.colors(length(df$ErrorFrequency)), names = df$ErrorCause, cumperc = seq(0, 100, by=10))


---------------------------------------------------------------------
  
# Q1
  
print("Enter 1 to Create dataframe for Student with Rollno, Name, Hobby")
print("Enter 2 to Add one column with grade into student dataframe")
print("Enter 3 to Display only that records where grade is ‘A’")
print("Enter 4 to Add one new record to Student dataframe and display")

input <- readline("Enter Number of Your Choice : ")
input <- as.numeric(input)
print(input)

RollNo <- c(1,2,3,4,5)
Name <- c("A", "B", "C", "D", "E")
Hobby <- c("Reading", "Writing", "Reading", "Writing", "Reading")

if(input==1){
  Student <- data.frame(RollNo, Name, Hobby)
  print(Student)
}else if(input==2){
  Grade <- c("A", "B", "A", "C", "A")
  Student <- cbind(Student, Grade)
  print(Student)
}else if(input==3){
  print(Student[Student$Grade == "A",])
}else if(input==4){
  a <- c(6, "F", "Writing", "B")
  Student <- rbind(Student, a)
  print(Student)
}else{
  print("Enter Valid Number")
}


# Q2

a <- c(2,2,4,5,6,7,7,8,9,9,11,12)
b <- c(77,78,85,86,86,87,87,88,94,99,103,111)

plot(a,b, main = "Scatter Plot", xlab = "x-axis", ylab = "y-axis")
lines(a,b, col = "blue")

-----------------------------------------------------------------
  
# Q1

print("Enter 1 to Create vector for rollno, name and hobby then convert it to list")
print("Enter 2 to Count number of element in a given list")
print("Enter 3 to Delete hobby from list and display updated list")
print("Enter 4 to Update particular name of student and display updated list")

input <- readline("Enter Number of Your Choice : ")
input <- as.numeric(input)
print(input)

RollNo <- c(1,2,3,4,5)
Name <- c("A", "B", "C", "D", "E")
Hobby <- c("Reading", "Writing", "Reading", "Writing", "Reading")

if(input==1){
  StudentList <- list("RollNo"=RollNo, "Name"=Name, "Hobby"=Hobby)
  print(StudentList)
}else if(input==2){
  print(length(StudentList))
}else if(input==3){
  a <- StudentList[-3]
  print(a)
}else if(input==4){
  StudentList$Name[5] <- "A"
  print(StudentList)
}else{
  print("Enter Valid Number")
}


# Q2

View(airquality)

boxplot(Temp~Month, data = airquality, main = "Box Plot", xlab = "No of Month", ylab = "Temperature", col = c("blue", "red", "yellow"))