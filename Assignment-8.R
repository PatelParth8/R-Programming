#Assignment 8

#(1) Use built-in dataset: airquality and perform following:
  # i. plot a boxplot for temprature on the basis of month.
  # ii. Give user defined labels, titles to graph.
  # iii. Add notch to boxplot
  # iv. Change color of Boxplot.
  # v. specify different color to each box plot.

print(airquality)

#Notch=FALSE
boxplot(Temp~Month, data = airquality, main = "AirQuality Box Plot", col=c("Red", "Blue", "Yellow"), xlab = "No of Month", ylab = "Temperature", notch=FALSE)

#Notch=TRUE
boxplot(Temp~Month, data = airquality, main = "AirQuality Box Plot", col=c("Red", "Blue", "Yellow"), xlab = "No of Month", ylab = "Temperature", notch=TRUE)

#(2) Use built-in dataset: airquality and perform following:
  #i. Fetch first 10 records of temprature from airquality dataset.
  #ii. Create histogram for that fetched data.
  #iii. Give proper title and xlab to chart.
  #iv. Give bar color and border color.
  #v. Set xlim between 50 to 80 and ylim to 1 to 5.

print(airquality)

a = head(airquality$Temp, 10)

hist(a, main = "Histogram of Airqualtiy Temperature", xlab = "Temperature", ylab = "Frequency of Air Quality", col = c("Red", "Blue", "Yellow"), border = "Blue", xlim = c(50, 80), ylim = c(1, 5))

#(3) Use following data and create dataframe : Product and perform following:
  #Sr.No Product Count
  # 1       A     40
  # 2       B     57
  # 3       C     50
  # 4       D     82
  # 5       E     17
  # 6       F     16
  # 
  # i. Create a pareto chart from given data.
  # ii. Give proper title and color to chart. (color: heat.color())

srno = c(1,2,3,4,5,6)
product = c("A", "B", "C", "D", "E", "F")
count = c(40,57,50,82,17,16)
df = data.frame(srno, product, count)

package.install('qcc')
library('qcc')

pareto.chart(df$count, main = "Pareto Chart", col = heat.colors(length(df$count)))

#(4) Use following data and create stem-and-leaf plot:
  #i. Data 1: c(25,30,40,22,27,33,26,35,19,28,37,42,35,36,54,24,46,33,25,34,12,39,52,5)
  #ii. Data 2: c(54, 43, 67, 76, 45, 59, 66, 78, 80, 92)

v1 = c(25,30,40,22,27,33,26,35,19,28,37,42,35,36,54,24,46,33,25,34,12,39,52,5)
v1
v2 = c(54, 43, 67, 76, 45, 59, 66, 78, 80, 92)
v2
stem(v1, scale = 2)
stem(v2)

#(5) Use built in dataset: mtcars and generate scatter plot:
  #i. Fetch first six records from mtcars for field wt and mpg.
  #ii. consider "Weight" for xlab and "Milage" for ylab.
  #iii. Give xlim range 1.5 to 4 and ylim range 10 to 25.
  #iv. Give title Weight vs Milage.
  #v. Add line to scatter plots points.
  #vi. Predict which type of correlation is defined from scatter plot.
  #vii. Change size of plot points into graph.

print(mtcars)
a = head(mtcars$wt, 6)
a
b = head(mtcars$mpg, 6)
b

plot(a, b, main = "Weight VS Mileage", xlab = "Weight", ylab = "Mileage", xlim = c(1.5, 4), ylim = c(10, 25), cex = 3)
lines(a, b, col = "Blue")