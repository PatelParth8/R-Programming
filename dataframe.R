rollno <- c(1,2,3,4)
name <- c("stu1", "stu2", "stu3", "stu4")
course <- c("IMSCIT", "BCA", "MCA", "MBA")
semester <- c(1,2,3,4)

studentdetail <- data.frame(rollno, name, course, semester, stringsAsFactors = FALSE)
print(studentdetail)

#column names
colnames(studentdetail)

#row names
rownames(studentdetail)

#dimension names
dimnames(studentdetail)

#row count
nrow(studentdetail)

#column count
ncol(studentdetail)

#dimension count
dim(studentdetail)

#add new row
stu <- c(5,"stu5","iMScIT",5)
studentdetail <- rbind(studentdetail,stu)
studentdetail

#add new column
grade <- c("A", "B", "C", "A", "C")
studentdetail <- cbind(studentdetail, grade)
studentdetail

#delete column
studentdetail$grade=NULL
studentdetail

#delete row
studentdetail <- studentdetail[-5,]
studentdetail

#delete 2nd and 4th row
studentdetail <- studentdetail[c(-2,-4),]
studentdetail

#LIST
empno <- c(1,2,3,4)
name <- c("Emp1", "Emp2", "Emp3")
empdetail <- list("Emp_No"=empno, "Name"=name)
empdetail

#add new data in list
empdetail$Name[4]="Emp4"
empdetail

append(empdetail$Name,"Emp5",2)

empdetail$Name=append(empdetail$Name,"Emp5",2)
empdetail

#unlist
unlist(empdetail)

#vector
v1 <- c(1:4)
v1

#sequence
seq(10)

#modify sequence
seq(11,20)
seq(11,20,2)

#user input
a <- readline("Enter Number 1 : ")
b <- readline("Enter Number 2 : ")
print(seq(a,b,2))

#repeat
x <- c(1:3)
x
rep(x, time=5)
rep(x,each=5)
rep(x, length.out=5)

#vector user input
x <- scan()#number
x
y <- scan(what=character())#string
y