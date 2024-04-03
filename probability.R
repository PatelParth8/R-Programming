# PROABILITY 1
a <- c(1,2,3)
b <- c(3,4,5)

cat("Union : ", union(a, b))
cat("\nIntersect : ", intersect(a, b))
cat("\nSet Difference : ", setdiff(a,b))

# SAMPLE SPACE- generate random sample

# Without Replacement
a <- c(1,2,3,4,5,6,7,8,9,10)
print(sample(a, size = 5))

# With Replacement
a <- c(1,2,3,4,5,6,7,8,9,10)
print(sample(a, size = 5, replace = TRUE))

# Create a probability of 50% good watch and 50% defective watch 
print(sample(c('good', 'defective'), size = 4, replace = TRUE, prob = c(0.50, 0.50)))

# FIND CUMMULATIVE FREQUENCY
v <- c(1,2,10,4,5,6,10,8,9,10)
print(ecdf(v))

# FIND INTERVAL FUNCTION
# -> it will return true where value=10 
print(findInterval(v, 10))