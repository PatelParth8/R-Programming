#ASSIGNMENT 4

#EXAM DATA
#Que :- 1 Create Data frame for exam on given vector.
name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas')
score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19)
attempts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1)
qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')

exam <- data.frame(name, score, attempts, qualify)
print(exam)

#Que :- 2 Extract name column from a data frame.
name <- data.frame(name)
print(name)

#Que :- 3 Extract first two rows from a given data frame.
row <- exam[c(1,2),]
print(row)

#Que :- 4 Extract 3rd and 5th rows with 1st and 3rd columns from a given data frame.
a <- exam[c(3,5),c(1,3)]
print(a)

#Que :- 5 Add a new column in a given data frame. (country)
country <- c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J")
exam <- data.frame(exam, country)
print(exam)

#STUDENT DATA
#Que :- 1 Create three vector for StudentId, Name and Course with five values.
studentId <- c(1,2,3,4,5)
name <- c("A", "B", "C", "D", "E")
course <- c("IMSCIT", "MCA", "BCA", "BSCIT", "BBA")

cat("Student ID :",studentId)
cat("\nName :",name)
cat("\nCourse :",course)

#Que :- 2 Add all vector to data frame StudentDetail.
student <- data.frame(studentId, name, course)
print(student)

#Que :- 3 Expand data frame with the new vector Hobby.
hobby <- c("Reading", "Writing", "Cricket", "Volleyball", "Football")
student <- data.frame(student, hobby)
print(student)

#Que :- 4 Display only student name and salary.
salary <- c("10000", "30000", "50000", "15000", "25000")
student <- data.frame(student, salary)
print(student)

print(student[,c(2,5)])

#Que :- 5 Display only 2nd and 4th row and 2nd and 4th column from student detail data frame.
student <- student[c(2,4),c(2,4)]
print(student)