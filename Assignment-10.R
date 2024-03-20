# Q-1
# Consider available dataset: mtcars establish the relationship between "mpg"    as a response variable with "disp","hp" and "wt" as predictor variables.       Create Equation for Regression Model
# Y = a+Xdisp.x1+Xhp.x2+Xwt.x3
# Apply Equation for predicting New Values for a car with disp = 221, hp = 102   and wt = 2.91 the predicte mileage.

df <- View(mtcars)
df

input <- mtcars[,c("mpg", "disp", "hp", "wt")]
input

model <- lm(mpg~disp + hp + wt, data = input)
model

Xall = coef(model)[1]
Xall

Xdisp = coef(model)[2]
Xdisp

Xhp = coef(model)[3]
Xhp

Xwt = coef(model)[4]
Xwt

y = Xall + Xdisp*221 + Xhp*102 + Xwt*2.91
y

# Q-1
# Consider following vectors for multiple linear regression model:
# year <- c(2017,2017,2017,2017,2017,2017,2017,2017,2017,2017,2017,2017,2016,2016,2016,2016,2016,2016,2016,2016,2016,2016,2016,2016)
# month <- c(12,11,10,9,8,7,6,5,4,3,2,1,12,11,10,9,8,7,6,5,4,3,2,1)
# interest_rate <- c(2.75,2.5,2.5,2.5,2.5,2.5,2.5,2.25,2.25,2.25,2,2,2,1.75,1.75,1.75,1.75,1.75,1.75,1.75,1.75,1.75,1.75,1.75)
# unemployment_rate <- c(5.3,5.3,5.3,5.3,5.4,5.6,5.5,5.5,5.5,5.6,5.7,5.9,6,5.9,5.8,6.1,6.2,6.1,6.1,6.1,5.9,6.2,6.2,6.1)
# index_price <- c(1464,1394,1357,1293,1256,1254,1234,1195,1159,1167,1130,1075,1047,965,943,958,971,949,884,866,876,822,704,719)
# establish the relationship between "index_price" as a response variable with "interest_rate" and "unemployment_rate" as predictor variables.
# Create Relationship Model & get the Coefficients
# Create Equation for Regression Model
# Apply Equation for predicting New Values for interest_rate = 2.4 and unemployment_rate = 5.4 the predicte inxed_price

year <- c(2017,2017,2017,2017,2017,2017,2017,2017,2017,2017,2017,2017,2016,2016,2016,2016,2016,2016,2016,2016,2016,2016,2016,2016)
year

month <- c(12,11,10,9,8,7,6,5,4,3,2,1,12,11,10,9,8,7,6,5,4,3,2,1)
month

interest_rate <- c(2.75,2.5,2.5,2.5,2.5,2.5,2.5,2.25,2.25,2.25,2,2,2,1.75,1.75,1.75,1.75,1.75,1.75,1.75,1.75,1.75,1.75,1.75)
interest_rate

unemployment_rate <- c(5.3,5.3,5.3,5.3,5.4,5.6,5.5,5.5,5.5,5.6,5.7,5.9,6,5.9,5.8,6.1,6.2,6.1,6.1,6.1,5.9,6.2,6.2,6.1)
unemployment_rate

index_price <- c(1464,1394,1357,1293,1256,1254,1234,1195,1159,1167,1130,1075,1047,965,943,958,971,949,884,866,876,822,704,719)
index_price

df <- data.frame(year,month,interest_rate,unemployment_rate,index_price)
df

input <- df[,c('index_price', 'interest_rate', 'unemployment_rate')]
input

model <- lm(index_price~interest_rate + unemployment_rate, data = input)
model

Xall <- coef(model)[1]
Xall

Xinterest <- coef(model)[2]
Xinterest

Xunemployment <- coef(model)[3]
Xunemployment

y = Xall + Xinterest*2.4 + Xunemployment*5.4
y


# Q-3
# Calculate Pearson correlation coefficient for given data:
# v1 = c(1, 2, 3, 4, 5, 6, 7) v2 = c(1, 3, 6, 2, 7, 4, 5)
# Plot relationship and perform analysis on type.

v1 = c(1, 2, 3, 4, 5, 6, 7) 
v1

v2 = c(1, 3, 6, 2, 7, 4, 5)
v2

result = cor(v1, v2, method = "pearson")
result

plot(v1, v2, xlab='V1',ylab = "V2", col='red', abline(lm(v2~v1),col="blue"))


# Q-4
# Use avaliable dataset in R: mtcars
# Calculate Correlation coefficient for mgp and wt. Plot relationship and perform analysis on type.

df <- View(mtcars)
df

mpg <- mtcars$mpg
mpg

wt <- mtcars$wt
wt

result = cor(mpg, wt, method = "pearson")
result

plot(mpg, wt, xlab='Mileage', ylab = "Weight", col='red', abline(lm(wt~mpg), col="blue"))


# Q-5
# Calculate five number summary or five point summary of given vector
# rebounds=c(30, 28, 24, 24, 28, 30, 31, 35,28)
# Calculate mean, median and mode for same data. Also use trim and na.rm parameter   for mean.

rebounds = c(30, 28, 24, 24, 28, 30, 31, 35,28)
rebounds

fivenum(rebounds)

a <- mean(rebounds)
a

b <- median(rebounds)
b

c <- names(sort(table(rebounds),decreasing = TRUE))
c

d <- names(sort(table(rebounds),decreasing = TRUE))[1]
d

# Q-6
# Generate a vector from the given data. Calculate the following:
#  X = (27,23,45,49,78,67,56,54,35,39,69,87,88,93,NA)
# 1. Calculate median for the given data.
# 2. Calculate mode of the vector.
# 3. Calculate the mean of the data by skipping the minimum and maximum value of a      vector.
# 4. Sort the data and find the minimum and maximum values of a given a vector.
# 5. Find minimum and maximum value using inbuilt functions.
# 6. Calculate mean of the entire vector. (Ignore NA values)
# 7. Calculate quantile Q1 and Q3.
# 8. Find the summary of the vector by applying appropriate function.
# 9. Find the sum of the elements of vector.
# 10.Sort the elements of the vector in descending order. 

X = c(27,23,45,49,78,67,56,54,35,39,69,87,88,93,NA)
X

a = median(X, na.rm=TRUE)
a

b =names(sort(table(X),decreasing = TRUE))[1]
b

c = mean(sort(X), trim = 0.1, na.rm = TRUE)
c

d = sort(X)
d

print(min(d))
print(max(d))

print(min(X, na.rm = TRUE))
print(max(X, na.rm = TRUE))

e <- mean(X, na.rm = TRUE)
e

f <- quantile(X, probs = c(0.25, 0.75), na.rm = TRUE)
f
  
g <- summary(X, na.rm = TRUE)
g

h <- sum(X, na.rm = TRUE)
h

i <- sort(X, decreasing = TRUE)
i