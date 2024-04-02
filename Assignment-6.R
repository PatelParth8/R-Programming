#ASSIGNEMT 6

# Use Built-in dataset: mtcars (Motor Trend Car Road Tests) for following:
mtcars
View(mtcars)

df <- mtcars
df

#1 Display First five records from dataset.
print(head(df))

#2 Display Last seven records from dataset.
print(tail(df))

#3 Print Internal structure of a dataset.
str(df)

#4 Display the count of rows and columns in dataset.
print(nrow(df))
print(ncol(df))
print(dim(df))

#5 Fetch only 1st, 3rd and 5th Columns from dataset.
print(df[,c(1,3,5)])

#6 Display only Number of cylinders, Weight and Gear details from dataset.
print(sapply(df[c(2, 6, 10)], sum))
print(sapply(df[,c('cyl', 'wt', 'gear')], sum))

#7 Calculate sum of all columns and display total of each.
print(sapply(df, sum))

#8  Find maximum value from each type of column and display.
print(sapply(df, max))


# Use given Dataset: Employee
df1 <- employee
df1

#1 Display employee names which begin with ‘P’ character.
print(grep("P", df1$Name, value = TRUE))

#2 Display only first three characters of all employee name.
print(substr(df1$Name, 1,3))

#3 Display only first 4 records from Employee data.
print(head(df1, 4))

#4 . Remove $ symbol from Employee salary column and after update display employee data.
employee$Salary = gsub("\\$", "", employee$Salary)

#5 Change date format to ‘%d-%m-%Y’ and store updated Date format to DOB column and display
#updated data. [Date should be display according to R date format]
employee$DOB = as.Date(employee$DOB, format='%d-%m-%Y')
employee

#6  Display Employee details where salary is grater than 300.
employee[employee$Salary>300,]

#7  Concate Employee name with salary using ‘_’ symbole and display
paste(employee$Name, employee$Salary, sep="_")

#8 Display list of Employee in Upper case letters.
print(lapply(employee, toupper))

#9 Open Employee data in new window and update salary of Parth from 400 to 500.
fix(employee)

#10 Display Highest salary according to Department.
employee$Salary=as.numeric(employee$Salary)
print(aggregate(employee$Salary, list(employee$Department), FUN=max))
