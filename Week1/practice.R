## Given a vector: x = (8,3,8,7,15,9,12,4,9,10,5,1)
##     - create matrix with 6 rows and 2 columns
##     - name the columns with "c1", "c2"
##     - find the max and min
##     - add additional row with random numbers in the range 1:20
##       at the end of the matix.
##     - multiply the second column with 2 and then add 6 to each element

x <- c(8,3,8,7,15,9,12,4,9,10,5,1)

mat <- matrix(
    x,
    nrow = 6,
    ncol = 2,
    dimnames = list(NULL, c("c1", "c2")))

maxElement <- max(mat)
minElement <- min(mat)
mat <- rbind(mat, c(runif(n=2, min=1, max=20)))
mat[,2] <- (mat[,2] * 2) + 6

                  



