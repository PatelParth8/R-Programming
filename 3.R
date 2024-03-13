#1st
x <- 10
print(class(a))

#2nd
v1 <- c(10,20,30,40,50)
v2 <- c(1,2,3,4,5)
add <- v1 + v2
print(add)

#3rd
res <- which(c(10,20,30,40,50)<40)
print(res)

#4th
data <- c(1,2,2,3,4,4,4,4,5,6)
res <- which(data<5)
print(res)

#5th
a <- 22/7
print(sin(a/2))
print(tan(a/4))
print(cos(a))

#6th
n <- c(10,20,30,NA)
print(sum(n))

#7th
n <- c(10,20,30,40,50)
print(summary(n))

#8th
n <- c(10,20,30,40,50)
print(sd(n))

#9th
n <- c(10,20,30,40,50)
print(var(n))

#10th
n <- c(4,-10,8,0)
print(sort(n))

#11th
n <- c(4,-10,8,0)
print(order(n))

#12th
n <- c(4,-10,8,0)
print(rank(n))

#13th
print(seq(1:15))

#14th
print(seq(1,9,by=2))

#15th
data <- 1:24
dims <- c(3,4,2)
dimnames <- list(c("row1","row2","row3"),
                 c("col1","col2","col3","col4"),
                 c("layer1","layer2"))
arr <- array(data=data, dim=dims, dimnames=dimnames)
print(arr)

#16th
mode_find <- function(x){
  u <- unique(x)
  tab <- tabulate(match(x,u))
  u[tab == max(tab)]
}
data <- c(1,2,2,3,4,4,4,4,5,6)
print(mode_find(data))

#17th
employee <- c('JRD','SRP','RDD')
salary <- c(21000,25000,27000)
startdate <- as.Date(c('2010-11-1','2008-3-25','2007-3-14'))
employ.data <- data.frame(employee,salary,startdate)
print(employ.data)

#18th
a <- matrix(nrow = 5, ncol = 6)
matrix(c(1:12), nrow = 2)
matrix(c(1:12),ncol = 3)

#19th
a <- matrix(c(1:10))
print(a)

#20th
a <- matrix(c(1:10), ncol=2)
print(a)

#
a <- matrix(20:11,nrow=2)
colnames(a) <- colnames(a,do.NULL=TRUE)
colnames(a) <- c("A","B","C","D","E")
print(a)

#
a <- matrix(1:9,nrow=3)
print(diag(a))
print(sum(diag(a)))
a[lower.tri(a,diag=TRUE)]
a[upper.tri(a,diag=TRUE)]

#DATA ENTRY IN MATRIX
a <- matrix(nrow=2, ncol=2)
print(data.entry)

#MULTI F MATRIX - A%*B%

#CSV File Data Read
data <- read.csv("PATH OF THE FILE")
print(data)

#FOR txt FILE read.table
data <- read.table()

#FOR HOW MUCH VARIABLES WE HAVE CREATED
ls()

#FOR ALL VARIABLES TO BE DELETED
rm(list=ls())

#FOR LOADING FILE
load("filename")

#INSTALL PACKAGES
install.packages("packagename")

#INSTALLED PACKAGES PREVIOUSLY
installed.package()