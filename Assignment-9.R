# Question 1
# A random sample of 10 students produced the following data, where x is the midterm exam score out of 50, and y is the final exam score out of 100. Can you predict the final exam score of a random student if you know the midterm exam score?
# MidtermExam = 40, 30, 33, 35, 44, 49, 23, 41, 42, 32 finalExam <- 95, 70, 80, 71, 74, 69, 55, 85, 94, 77
# Estimate simple linear regression and predict the final exam score of a student who is having 48 in midterm exam.
# Also plot linear regression. Add labels, title, plot shape, color and change plot size.


MidtermExam = c(40, 30, 33, 35, 44, 49, 23, 41, 42, 32)
finalExam = c(95, 70, 80, 71, 74, 69, 55, 85, 94, 77)

r = lm(finalExam~MidtermExam)
r

a = data.frame(MidtermExam=48)
b = predict(r,a)
b

plot(MidtermExam, finalExam, col="blue", main="MidTerm Exam - Final Exam", abline(lm(finalExam~MidtermExam)), cex=1.3, pch=25, xlab="Mid-Term Exam", ylab="Final Exam")

#Question 2
# A random sample of 10 employee considered, where x is the year of experience and y is the salary of employee. Can you predict the salary of the person if you know the year of experience?
# Years_Exp = 1.1, 1.3, 1.5, 2.0, 2.2, 2.9, 3.0, 3.2, 3.2, 3.7
# Salary = 39343.00, 46205.00, 37731.00, 43525.00,39891.00, 56642.00, 60150.00, 54445.00, 64445.00, 57189.00
# Calculate simple linear regression and predict salary of two person who is having 3.5 year and 4.5 year of experience respectively.
# Also plot linear regression. Add labels, title, plot shape, color and change plot size.

Years_Exp = c(1.1, 1.3, 1.5, 2.0, 2.2, 2.9, 3.0, 3.2, 3.2, 3.7)
Salary = c(39343.00, 46205.00, 37731.00, 43525.00,39891.00, 56642.00, 60150.00, 54445.00, 64445.00, 57189.00)

r = lm(Salary~Years_Exp)
r

a = data.frame(Years_Exp=c(3.5,4.5))
b = predict(r,a)
b

plot(Years_Exp, Salary, col="blue", main="Years Experience - Salary", abline(lm(Salary~Years_Exp)), cex=1.3, pch=21, xlab="Year Experience", ylab="Salary")

#Question 3
# Consider the available dataset: mtcars
# Take hp (Gross horsepower) as a x value and Miles per gallon as y. Take first 10 records as sample from both fields. Predict value of mpg where hp is 94.
# Also plot linear regression. Add labels, title, plot shape, color and change plot size.

View(mtcars)

hp = head(mtcars$hp, 10)
hp

mileage = head(mtcars$mpg, 10)
mileage

r = lm(mileage~hp)
r

a = data.frame(hp=94)
b = predict(r,a)
b

plot(hp, mileage, col="blue", main="Horse Power - Mileage", abline(lm(mileage~hp)), cex=1.3, pch=21, xlab="Horse Power", ylab="Mileage")

#EXCEL
theory = data$`ADS Theory`
theory

prac = data$`ADS Practical`
prac

r = lm(theory~prac)
r

a = data.frame(prac=94)
b = predict(r,a)
b

plot(prac, theory, col="blue", main="ADS Theory - ADS Practical", abline(lm(theory~prac)), cex=1.3, pch=21, xlab="ADS Practical", ylab="ADS Theory")
