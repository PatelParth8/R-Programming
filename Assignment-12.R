# Question : 1
# Create a List with name: CarDetails using following details:
# 1. Create three vector: CarID, CarName and CarPrice
# 2. Add five values to each vector.
# 3. After all vector to list.
# 4. Change any one Car name from list and display.
# 5. Add one more vector Car Model to list and display.

CarID <- c(1,2,3,4,5)
CarName <- c("BMW", "AUDI", "MERCEDES", "VOLVO", "FERRARI")
CarPrice <- c(8500000, 7600000, 7000000, 9300000, 10500000)

CarDetails <- list("CarID"=CarID, "CarName"=CarName, "CarPrice"=CarPrice)
CarDetails

CarDetails$CarName[5] <- "LAMBORGINI"
CarDetails

CarModel <- c("X3", "Q8", "AMG", "XC90", "URUS")
CarModel

CarModelList <- list("CarModel"=CarModel)
CarModelList

CarDetails <- c(CarDetails, CarModelList)
CarDetails

# Question : 2
# Create the following excel sheet and import the same in rstudio. (save the file with extension.xlsx)
# 2. Create data frame from imported data and perform following:
# i. Display only Employee name and Qualification.
# ii. Display all data from data frame where qualification is MScIT.

str(empl)

df <- data.frame(empl)
df

print(df[,c("Employee_Name", "Qualification")])
print(df[,c(1,3)])

print(df[df$Qualification == "MScIT",])

# Question : 3
# Generate the following data frame and perform the following functions:
# 1. Generate scatter plot diagram over height and weight data of students.
# Height(125,121,135,131,127,129,130)
# Weight(56,57,53,49,67,69,74)
# 2. Add a resistance line to scatter plot. (Build Liner Regression Model)
# 3. Change the default shape in scatter plot to triangle. Fill the shape with blue color and outline should be shown in red color.
# 4. Add legend using appropriate labels and color.
# 5. Mention the appropriate labels to both the axis of the chart. Generate title of the chart.

Height <- c(125,121,135,131,127,129,130)
Height

Weight = c(56,57,53,49,67,69,74)
Weight

plot(Weight, Height, main = "Scatter Plot", xlab = "Weight", ylab = "Height", col = "red", cex = 1.3, pch = 24, bg = "blue", abline(lm(Height~Weight)))

legend(x= "topright", legend = c("Height & Width", "Linear Regression"), title = "Legend", fill = c("blue", "black"))

# Question : 4
# Attempt the following:
# 1. Generate the following data frame with specified column, import the column in rstudio and
# remove the percentage sign from the column and display the data. (65%, 75%, 85%,45%,53%)
# 2. Generate the data frame using following vectors and display the total marks according to the
# subjects i.e. subject wise.
# subjects("java", "python", "java", "java", "php", "php")
# marks(89, 89, 76, 89, 90, 67))

percentage <- c("65%", "75%", "85%", "45%", "53%")
percentage

percentage <- gsub("%", "", percentage)
percentage

Subjects <- c("java", "python", "java", "java", "php", "php")
Marks <- c(89, 89, 76, 89, 90, 67)

df <- data.frame(Subjects, Marks)
df

print(aggregate(df$Marks, list(df$Subjects), sum))

# Question : 5
# Generate the following data frame and perform the following functions:
# 1. Generate scatter plot diagram over height and weight data of students.
# Height(150,154,130,135,122,125,138)
# Weight(70,55,58,48,60,65,71)
# 2. Add a resistance line to scatter plot. (Build Liner Regression Model)
# 3. Change the default shape in scatter plot to square. Fill the shape with yellow color and outline should be shown in red color.
# 4. Add legend using appropriate labels and color.
# 5. Mention the appropriate labels to both the axis of the chart. Generate title of the chart.

Height <- c(150,154,130,135,122,125,138)
Weight <- c(70,55,58,48,60,65,71)

df <- data.frame(Height, Weight)
df

plot(Weight, Height, main = "Scatter Plot", xlab = "Weight", ylab = "Height", abline(lm(Height~Weight)), cex = 1.5, pch = 22, col = "red", bg = "yellow")
legend(x = "topright", legend = c("Height & Weight", "Linear Regression"), fill = c("yellow", "black"), title = "Legend")
