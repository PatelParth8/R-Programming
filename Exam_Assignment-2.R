#SET 1
# 1
# Create the dataframe and generate a chart from the given specification.
# # Generate a Histogram chart for the above data. The chart should include title for the chart, legend of chart. Each Bar of chart should be in Yellow color. Give Red color to border of the chart. The data on X-axis must be between 60 to 100.

Selling_of_Machines <- c(45,95,105,75,85,80,90,65,110,100)
City <- c("Bhavnagar", "Ahmedabad", "Pune", "Bengaluru", "Chennai", "Mumbai", "Mathura", "Vadodara", "Delhi", "Shimla")

df <- data.frame(Selling_of_Machines, City)
print(df)

hist(df$Selling_of_Machines, labels = df$City, main = "Histogram",xlab = "Selling of Machines", col = "yellow", border = "red", xlim = c(60, 100))
legend(x = "topright", legend = "Selling of Machines", fill = "yellow")


# 2
# Attempt the following:
# Perform Z-score for the following vector and document the conclusion.
# V (14,76,56,34,23,89,78,10)

v <- c(14,76,56,34,23,89,78,10)
print(v)

# Method 1
z <- (v - mean(v)) / sd(v)
print(z)

# Method 2
print(scale(v, scale = TRUE, center = TRUE))

# 3
# Consider the vector: (12,13,15,17,16,19,20,23,25,27,29,31, NA)
# Perform the following operations:
#  1. Calculate mean, median and mode.
#  2. Multiply each element by 2.
#  3. Find the length of the vector.
#  4. Add 45 to the above vector and display.
#  5. Sort the above vector in decreasing order. Increment each element of vector by 5

v1 <- c(12,13,15,17,16,19,20,23,25,27,29,31,NA)
print(v1)

mean <- mean(v1, na.rm = TRUE)
print(mean)

median <- median(v1, na.rm = TRUE)
print(median)

mode <- names(sort(table(v1)))
print(mode)

mode <- names(sort(table(v1)))[1]
print(mode)

mul <- v1 * 2
print(mul)

print(length(v1))

a <- 45
v1 <- c(v1, a)
print(v1)

print(sort(v1 + 5, decreasing = TRUE))

# 4
# Without assuming the data to have normal distribution, decide at .05 significance level if
# the gas mileage data of manual and automatic transmissions in mtcars have identical data
# distribution. Apply Mann-Whitney-Wilcoxon Test. Consider p-value for documenting your analysis.

data <- wilcox.test(mpg ~ am, data = mtcars)
print(data$p.value)

# SET : 2

# 1
# Create the dataframe and generate a chart from the given specification.
# Generate separate Box Plot charts for the above data. Document your analysis accordingly.

Selling_of_LEDs <- c(69,93,110,65,75,80,97,43,55)
Selling_of_LCDs <- c(61,78,100,53,69,80,79,39,48)

df <- data.frame(Selling_of_LEDs, Selling_of_LCDs)
print(df)

boxplot(df$Selling_of_LEDs, df$Selling_of_LCDs, main = "Box Plot", col = c("blue", "yellow"), xlab = "Selling_of_LEDs", ylab = "Selling_of_LCDs")
legend(x = "topright", legend = c("Selling_of_LEDs", "Selling_of_LCDs"), fill = c("blue", "yellow"))

# 2
# Perform T-test for the following vector and document the conclusion.
#  V1 (124,176,116,134,219,189,178,310)
#  V2 (110,120,180,200,160,155,168,210)

V1 <- c(124,176,116,134,219,189,178,310)
V2 <- c(110,120,180,200,160,155,168,210)

t.test(V1, mu = 134)
t.test(V1, V2, var.equal = TRUE)
t.test(V1, V2, paired = TRUE)

# 3
# Consider the vector: (112,139,195,172,162,119,2202,23,225,217,219,131, NA)
# Perform the following operations:
#  1. Calculate mean, median and mode.
#  2. Find maximum and minimum from the above vector.
#  3. Find the length of the vector.
#  4. Add 345 to the above vector and display.
#  5. Sort the above vector in decreasing order. Increment each element of vector by 5

v <- c(112,139,195,172,162,119,2202,23,225,217,219,131,NA)

mean <- mean(v, na.rm = TRUE)
print(mean)

median <- median(v1, na.rm = TRUE)
print(median)

mode <- names(sort(table(v)))
print(mode)

mode <- names(sort(table(v)))[1]
print(mode)

maximum <- max(v, na.rm = TRUE)
print(maximum)

minimum <- min(v, na.rm = TRUE)
print(minimum)

print(length(v))

a <- 345
v <- c(v, a)
print(v)

print(sort(v + 5, decreasing = TRUE))


# 4. Find the correlation coefficient of mpg and wt in the data set mtcars.
# Observe if there is any linear relationship between the variables.

mileage <- mtcars$mpg
print(mileage)

weight <- mtcars$wt
print(weight)

correlation <- cor(mileage, weight, method = "pearson")
print(correlation)

a <- lm(weight~mileage)
print(a)

plot(mileage, weight, main = "Plot", xlab = "Mileage", ylab = "Weight", abline(lm(weight~mileage)), col = "blue", cex = 1.5, pch = 20)
legend(x = "topright", legend = c("Mileage", "Weight"), fill = c("blue"))


# SET : 3

# 1
# Create the dataframe and generate a chart from the given specification.
# Generate a scatter plot for the above data. Insert a line into scatter plot to indicate slope.
# The points in the scatter plot should be shown with filled red circle with yellow boundary. The
# chart should have the title of the chart. Give proper labels to X-axis and Y-axis.

Height <- c(165,169,168,159,175,180,186)
print(Height)

Weight <- c(45,48,47,43,59,65,69)
print(Weight)

df <- data.frame(Height, Weight)
print(df)

plot(df$Height, df$Weight, main = "Scatter Plot", xlab = "Height", ylab = "Weight", abline(lm(Weight~Height)), col = "red", cex = 1.5, pch = 20)

# 2
# Perform ANOVA Analysis for the following vector and document the conclusion.
# Use mtcars dataset and mpg as response variable, hp and am column for performing analysis.

input <- mtcars[,c('mpg', 'hp', 'am')]
print(input)

a <- aov(mpg ~ hp * am, data = mtcars)
print(summary(a))

b <- aov(mpg ~ hp + am, data = mtcars)
print(summary(b))

# 3
# Consider the vector: (11,13,15,12,14,19,22,23,25,21,29,31, NA)
# Perform the following operations:
#  1. Calculate mean, median and mode.
#  2. Multiple each element by 3.
#  3. Find the length of the vector.
#  4. Add 345 to the above vector and display.
#  5. Sort the above vector in decreasing order. Increment each element of vector by 5

v <- c(11,13,15,12,14,19,22,23,25,21,29,31,NA)
print(v)

mean <- mean(v, na.rm = TRUE)
print(mean)

median <- median(v, na.rm = TRUE)
print(median)

mode <- names(sort(table(v)))
print(mode)

mode <- names(sort(table(v)))[1]
print(mode)

mul <- v * 3
print(mul)

print(length(v))

a <- 345
v <- c(v, a)
print(v)

print(sort(v + 5, decreasing = TRUE))

# 4
# Create the inbuilt dataset mtcars. Consider mpg as response variable and disp, hp & wt as a predicator variable. Create multiple regression model and print the summary.

input <- mtcars[,c('mpg', 'disp', 'hp', 'wt')]
print(input)

model <- lm(mpg ~ disp + hp + wt, data = mtcars)
print(model)
print(summary(model))

xall <- coef(model)[1]
print(xall)

xdisp <- coef(model)[2]
print(xdisp)

xhp <- coef(model)[3]
print(xhp)

xwt <- coef(model)[4]
print(xwt)

a <- xall + xdisp + xhp + xwt
print(a)
