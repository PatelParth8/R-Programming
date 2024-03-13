#ASSIGNMENT 7

# Que : 1
# CREATE DATA FRAME
E_id = c(1,2,3,4,5,6,7,8,9,10)
Age = c(30,25,22,20,35,40,45,43,55,39)
df <- data.frame(E_id=E_id, Age=Age)
print(df)

# Apply 5 point summary concept on the above data.
summary(df)

# Apply sorting and also find maximum and minimum for the above data.
sapply(df, max)
sapply(df, min)
sapply(df, sort)

# Que : 2
# CREATE DATA FRAME
Student_Name = c("Krishna", "Madhav", "Gopi", "Kruti", "Mohan", "Shyam", "Priya", "Radhika")
Marks = c(75, 70, 65, 50, 90, 80, 55, 85)
df1 <- data.frame(Student_Name=Student_Name, Marks=Marks)
print(df1)

# Generate a Pie chart for Marks and save it.
# The chart should include title for the chart.
# Each segment of chart should be in different color and border should be red
pi = pie(Marks, labels = Student_Name, radius = 0.9, main = "Pie Chart", col = rainbow(length(Marks)), clockwise = TRUE, border = "red")
pi

# Que : 3
# CREATE A DATAFRAME
Profit = c(20, 30, 35, 45, 50, 75, 90, 95)
Month = c("January", "February", "March", "April", "May", "June", "July", "August")
df2 = data.frame(Profit=Profit, Month=Month)
print(df2)

# Generate a Bar chart for profit and save the chart.
# The names of the months should appear on X-axis.
# Give proper labels to X-axis and Y-axis.
# The chart should include title for the chart. 
# Each bar of chart should be in different color.
# The border of the bar should be yellow.
a <- barplot(Profit, xlab = "Month", ylab = "Profit", main = "Bar Chart", names.arg = Month, col = rainbow(length(Profit)), border = "yellow")
print(a)

# Que : 4
df3 = mtcars
print(df3)

# Generate Line chart on fields weight and milage.
# Give title= Weight vs Milage and X-axis and Y-axis labels.
# Line should be displayed with plotting points and with any one color.
a <- mtcars$mpg
print(a)

b <- mtcars$wt
print(b)

plot(b, a, type = "o", col = c("blue"), xlab = "Weight", ylab = "Mileage", main = "Line Chart")

# Que : 5

# Calculate average of three subject and round up average marks with 2 digits after decimal point.
avg <- (StudentDate$Flutter+StudentDate$R+StudentDate$ML)/3
avg
round(avg, 2)

# Generate pie chart with average marks and take student name as a label.
# Give proper title and color to chart. Ues rainbow method for color.
pie(avg, labels = StudentDate$Name, radius = 0.9, main = "Pie Chart", col = rainbow(length(avg)), clockwise = TRUE)

# Generate Bar chart for Name and Three subjects marks like
# Give proper title to graph and color according subjects (3 color for 3 subject)
mat <- matrix(c(StudentDate$Flutter, StudentDate$R, StudentDate$ML), nrow = 3, ncol = 5, byrow = TRUE)
print(mat)

barplot(mat, xlab = "x-axis", ylab = "y-axis", main = "Bar Chart", names.arg = StudentDate$Name, col = c("red","blue","yellow"), beside = TRUE)
# Que : 6
df4 = mtcars
print(df4)

# plot a boxplot for mileage per gallon on the basis of number of cylinders.
# Give proper labels, title and color to graph.
boxplot(mpg~cyl, main = "Box Plot", data=mtcars, col = c("blue"), xlab = "cylinder", ylab = "mileage")

