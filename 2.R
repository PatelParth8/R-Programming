mode_find <- function(x){
  u <- unique(x)
  tab <- tabulate(match(x, u))
  print(tab)
  u[tab == max(tab)]
  print(max(tab))
}

data <- c(1,2,2,3,4,4,4,4,5,6)
mode_find(data)





data <- c(10,20,30,40)
summary(data)


var(data)



data <- 1:24
dims <- c(3,4,2)

dimnames1 <- list(
  c("row1", "row2", "row3"),
  c("col1", "col2", "col3", "col4"),
  c("layer1", "layer2")
)

arr <- array(data = data, dim = dims, dimnames = dimnames1)
print(arr)
