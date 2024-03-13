#Practice Mid-Term

# --1--
#Create following data frame: Person and perform following:
id <- c(1:10)
fname <- c("Reenal", "Karman", "Pratik", "Pooja", "Hiral", "Bansi", "Prakash", "Moksh", "Meet", "Preet")
lname <- c("Patel", "Shah", "Jain", "Shah", "Desai", "Parikh", "Desai", "Jain", "Shah", "Shah")
gender <- c("Female", "Male", "Male", "Female", "Female", "Female", "Male", "Male", "Male", "Male")
salary <- c(40000, 30000, 34000, 33000, 25000, 20000, 34000, 22000, 21000, 45000)
hra <- c("10%", "5%", "4%", "2%", "5%", "3%", "7%", "7%", "5%", "2%")

df <- data.frame("ID"=id, "Fname"=fname, "Lname"=lname, "Gender"=gender, "Salary"=salary, "HRA"=hra)
df

# Print internal structure of dataframe.
str(df)

# Display only Fname, Gender and Salary Column data.
print(df[,c(2,4,6)])

# Insert column hobby to Person dataset.
hobby <- c("Reading", "Writing", "Listening", "Reading", "Listening",  "Reading", "Writing", "Reading", "Writing", "Listening")
df <- data.frame(df, "Hobby"=hobby)
df

# Add new record to Person dataset.
data <- c(11, "Rohan", "Patel", "Male", 46500, "9%", "Reading")
df <- rbind(df, data)
df

# Display all Person data where gender is Female.
print(df[df$Gender == "Female",])

# Count number of persons where hobby is Reading.
print(nrow(df[df$Hobby == "Reading",]))

# Display only 2nd, 4th and 8th record from Dataframe.
print(df[c(2,4,8),])

# Display Person data where Fname begining with Letter ‘P’.
print(grep("P", df$Fname, value = TRUE))

# Remove only 8th and 10th record from dataset.
print(df[-c(8, 10),])

# Remove New added column from dataset.
df$Hobby = NULL
df

# Remove % symbole from HRA column.
df$HRA <- gsub("%", "", df$HRA)
df

# Find Maximum salary according to gender groups.
aggregate(df$Salary, list(df$Gender), FUN=max)


#--2--
# Use above data and create excel sheet import it to R studio:
View(Person)

# Fetch first 5 records from dataset.
print(head(Person, 5))

# Calculate Net salary from BasicSalary and HRA and display.
# (Net = Basic +HRA%+DA%, where DA%=5)
Person$Net = Person$Salary + Person$HRA/100 + 5/100
Person

# Fetch first 8 records from dataset for basicsalary only and create histogram from it.
# Give title, labels, color, xlim and ylim to that histogram.
df <- head(Person$Salary, 8)
df

hist(df, main = "Histogram of Salary", labels = Person$ID, xlab = "Salary", ylab = "Frequency", col = rainbow(length(df)), xlim = c(20000, 40000), ylim = c(0, 5))

# Create scatter plot for basicsalary and HRA field for first 5 records.
# Give title, lables, color, xlim and ylim to scatter plot.
# Also add line to scatter plot.
# Give red color to plot points and blue color to line.
a = head(Person$Salary, 5)
a

b = head(Person$HRA, 5)
b

plot(a, b, main = "Scatter Plot", xlab = "Salary", ylab = "HRA", col = "Red", xlim = c(20000, 40000), ylim = c(0, 1))
lines(a, b, col = "Blue")