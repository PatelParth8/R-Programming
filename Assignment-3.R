#ASSIGNMENT 3

#Que :- 1 Write a R program to create a list containing strings, numbers, vectors and a logical values.
a <- c("Hello", "World!")
b <- c(1,2,3)
c <- c(TRUE,FALSE)

list1 <- list("String"=a, "Number"=b, "Logical"=c)
print(list1)

#Que :- 2 Write a R program to merge two given lists into one list.
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

#Que :- 3 Write a R program to convert a given list to vector.
a <- c("Hello", "World!")
b <- c("R", "Programming")

list1 <- list("String 1"=a, "String 2"=b)
print(list1)

vector <- unlist(list1)
cat("Vector :",vector)

#Que :- 4 Write a R program to count number of objects in a given list.
a <- c("Hello", "World!")
b <- c("R", "Programming")

list1 <- list("String 1"=a, "String 2"=b)
print(list1)
cat("Length :",length(list1))

#Que :- 5 Create three vectors:Rollno,Name and course.
#Add four values in each vector.
#Based on vectors create StudentList where we can access rollno, name and course using their name instead of index.
#Add a vector semester in SemesterList first and then concate that list with StudentList.
#Display all new updated list.
#Delete semester from StudentList and display updated list.
rollno <- c(1,11,21,31,41)
name <- c("A", "B", "C", "D")
course <- c("IMSCIT", "BCA", "MCA", "BSCIT")

studentlist <- list("Roll No"=rollno, "Name"=name, "Course"=course)
print("Student List : ")
print(studentlist)

sem <- c(1,2,3,4)
semlist <- list("Sem"=sem)
print("Sem List : ")
print(semlist)
studentlist <- c(studentlist,semlist)
print("Student List : RollNo, Name, Course, Semester")
print(studentlist)

print("Delete Semester from Student List : ")
print(studentlist[-4])