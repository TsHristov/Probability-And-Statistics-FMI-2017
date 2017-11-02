## Using the mtcars built-in dataset:
##     -(1) Aggregate by cyl and gear columns and return the mean values

## Load mtcars data:
data(mtcars)

## (1):
mean.cyl.gear = aggregate(x = mtcars, list(cyl = mtcars$cyl, gear = mtcars$gear), FUN = mean)

