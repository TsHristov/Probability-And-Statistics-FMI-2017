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
cars.labels = rownames(cars.subset)

## Create a vector with cars to be searched for in the subset:
mercedes.cars = c("Merc 280", "Merc 280C")

## Check if mercedes.cars is present in the subset:
print(all(intersect(cars.labels, mercedes.cars) == mercedes.cars))
