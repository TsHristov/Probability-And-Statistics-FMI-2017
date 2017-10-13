## Create a matrix with the probabilties of getting 'tails'with n=10 coin tosses:
## -The first column represents the
##  frequency vector μ/n, where μ=0:10 is the number of
##  getting 'tails'.
## -The second column are the probabilities
##  (C n μ /2 n), calculated with the function choose().
## -Plot the graphic using plot().

## Load the graphics library needed for plot():
library(graphics)

## First column consist of count of obtaining tails:
tails.count = c(0:10)

## Second column consists of the probabilites of obtaining
## count of tails per 10 tosses:
probabilites = choose(10, tails.count)

## The resulting matrix:
matrix.result = matrix(
    c(tails.count, probabilites),
    nrow = 11,
    ncol = 2,
    dimnames = list(NULL, c("Tails count", "Number of tosses")))

## Plot the result:
plot(matrix.result)
