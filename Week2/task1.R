## Use the built-in data.frame structure mtcars to:
## -Select only those cars with 8 cylinders
## -Find mean and median of mpg for all cars with 5 gears

## Load mtcars data:
data(mtcars)

## Select mtcars subset consisting of cars with 8 cylinders:
eight.cylinders = mtcars[mtcars$cyl == 8, ]

## Select mtcars subset consisting of cars with 5 gears:
five.gears = mtcars[mtcars$gear == 5, ]
                                          
## From five.gears take the mpg column:
mpgs = five.gears$mpg

## Print mean of mpgs:
print(mean(mpgs))

## Print median of mpgs:
print(median(mpgs))











