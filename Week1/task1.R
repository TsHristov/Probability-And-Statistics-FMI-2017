## Given a vector: x = (8,3,8,7,15,9,12,4,9,10,5,1)
##     - create matrix with 6 rows and 2 columns
##     - name the columns with "c1", "c2"
##     - find the max and min
##     - add additional row with random numbers in the range 1:20
##       at the end of the matix.
##     - multiply the second column with 2 and then add 6 to each element

## Create a vector:
x = c(8,3,8,7,15,9,12,4,9,10,5,1)

## Construct a matrix with 6 rows and 2 columns, named "c1" and "c2":
matrix.result = matrix(
    x,
    nrow = 6,
    ncol = 2,
    dimnames = list(NULL, c("c1", "c2")))

## Find the max element in the matrix:
max.element = max(matrix.result)

## Find the minimum element in the matrix:
min.element = min(matrix.result)

## Add additional row with random numbers in the range 1:20
## at the end of the matrix:
matrix.result = rbind(mat, c(runif(n=2, min=1, max=20)))

## Multiply the second column with 2 and add 6 to each element:
matrix.result[,2] = (matrix.result[,2] * 2) + 6
