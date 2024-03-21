#gsub
#STRING
#%
str <- c("%Hello %World!")
print(gsub("%","",str))

#$
str1 <- c("$Hello $World!")
print(gsub("\\$","",str1))

#DATAFRAME
#%
df <- data.frame(name=c("A","B","C"), rollno=c(1:3), marks=c("80%","90%","70%"))
print(df)

df$marks <- gsub("%","",df$marks)
print(df)

#$
df <- data.frame(name=c("A","B","C"), rollno=c(1:3), salary=c("$80","$90","$70"))
print(df)

df$salary <- gsub("\\$","",df$salary)
print(df)

#EXCEL FILE
#`Roll No` Name  Marks
#<dbl> <chr> <chr>
#  1         1 A     80   
#2         2 B     70   
#3         3 C     60   
#4         4 D     68   
#%
data$Marks <- gsub("%","",data$Marks)
print(data)

#$
data$Salary <- gsub("\\$","",data$Salary)
print(data)


#sapply
#data frame
df <- data.frame(x=c(1:5), y=c(10,20,30,40,50))
print(df)

print(sapply(df,min))
print(sapply(df,max))
print(sapply(df,sum))
print(sapply(df,mean))

#Excel
# A tibble: 6 × 3
#x     y     z
#<dbl> <dbl> <dbl>
#  1     1    70     1
#2     2    68     2
#3     3    87     3
#4     4    72     4
#5     5    76     5
#6     6    69     6

print(data1)
print(sapply(data1,min))
print(sapply(data1,max))
print(sapply(data1,sum))
print(sapply(data1,mean))


#aggregate
#dataframe
df <- data.frame(id=c(1:5), subject=c("JAVA", "Python", "PHP", "Python", "PHP"),marks=c(80,70,76,89,69))
print(df)

print(aggregate(df$marks, by=list(df$subject), sum))
print(aggregate(df$marks, by=list(df$subject), min))
print(aggregate(df$marks, by=list(df$subject), max))

#Excel
# A tibble: 5 × 3
#id subject marks
#<dbl> <chr>   <dbl>
#  1     1 Python     89
#2     2 JAVA       79
#3     3 PHP        80
#4     4 Python     69
#5     5 PHP        87
print(data2)

print(aggregate(data2$marks, by=list(data2$subject), sum))
print(aggregate(data2$marks, by=list(data2$subject), min))
print(aggregate(data2$marks, by=list(data2$subject), max))
