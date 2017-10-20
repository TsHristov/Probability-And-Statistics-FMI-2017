## Use the mtcars dataset to:
##     -Select those cars that have 4 gears and
##      6 cylinders.
##     -Check if "Merc 280" and "Merc 280C" are among
##      them.
data(mtcars)

## Select subset of the cars, where
## number of gears is 4 and number of
## cylinders is 6:
cars.subset = mtcars[mtcars$gear==4 & mtcars$cyl==6,]

## Select the labels of the subset:
cars.labels = labels(cars.subset)[[1]]

## Create a vector with the searched cars:
mercedes.cars = c("Merc 280", "Merc 280C")

## Check if mercedes.cars is present in the subset:
intersect(cars.labels, mercedes.cars)
