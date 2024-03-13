#ASSIGNMENT 5

#EMPLOYEE DATA
#QUE :- 1 Fetch Excel data into Rstudio and display.


#Que :- 2 Write a code to get the structure of a given data frame.
str(employee)

#Que :- 3 Add new column hobby to an existing data frame.
Hobby <- c("Dancing", "Reading", "Writing", "Walking", "Playing", "Coding")
employee <- cbind(employee, Hobby)
print(employee)

#Que :- 4 Count the number of employee belongs to “development” department.
print(nrow(employee[employee$Department=="Development",]))

#Que :- 5 Display employee data where salary is greater than 30000.
print(employee[employee$Salary>30000,])

#Que :- 6 Display Name and Salary column from employee data.
print(employee[,c(2,4)])

#Que :- 7 Add new employee record into data.
emp7 <- c("Emp7", "Alex Paris", "Testing", 31500, "Coding")
employee = rbind(employee, emp7)
print(employee)

#Que :- 8 Remove only 1st and 3rd record from employee data.
employee <- employee[c(-1,-3),]
print(employee)

#Que :- 9 Remove Hobby column from employee data.
employee$Hobby=NULL
print(employee)


#PRODUCT DATA
#Que :- 1 Fetch Excel data into Rstudio and display.


#Que :- 2 Write a code to get the structure of a given data frame.
str(product)

#Que :- 3 Write a code to extract Name and Quantity column from a data frame.
df <- data.frame(product$Name, product$Quantity)
print(df)

#Que :- 4 Write a code to reorder data frame column in order Name, Quantity, price and category.
a <- product[, c("Name", "Quantity", "Price", "Category")]
print(a)

#Que :- 5 Write a code to remove quantity column from data frame and display.
product$Quantity=NULL
print(product)

#Que :- 6 Display all data where price is greater than 10000.
a <- product[product$Price>10000,]
print(a)

#Que :- 7 Write a code to drop 2,4 and 6 row number.
a <- product[-c(2,4,6),]
print(a)

#Que :- 8 Write a code to drop category column from data frame.
product <- subset(product, select=-c(Category))
print(product)