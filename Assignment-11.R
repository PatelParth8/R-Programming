View(mtcars)

# ANOVA Analysis
input <- mtcars[,c('am', 'mpg', 'hp')]
print(head(input))

# GET THE DATABASE

input <- mtcars

result <- aov(mpg~hp*am, data = input) #direct related
print(summary(result))

result <- aov(mpg~hp+am, data = input) #indirect related
print(summary(result))


# Z-Score

# Method 1
a <- c(9, 10, 12, 14, 5, 8, 9)
print(a)

# find mean
mean(a)

# find standard deviation
sd(a)

# calculate z
a.z <- (a - mean(a)) / sd(a)
print(a.z)

# Method 2
a <- c(9, 10, 12, 14, 5, 8, 9)
print(a)

scale(a,center = TRUE,scale=TRUE)


# T-Test
male.weight = c(90,91,110,150,152,112,80,90,142,115)
female.weight = c(110,150,152,142,112,115,80,95,103,163)

# one sample t-test
t.test(male.weight, mu=110)

# two sample t-test
t.test(male.weight,female.weight,var.equal = TRUE)

# paired sample t-test
t.test(male.weight,female.weight,paired=TRUE)


# F-Test
print(var.test(male.weight, female.weight))