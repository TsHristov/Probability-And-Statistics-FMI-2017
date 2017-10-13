## Task 2:
## Create a matrix with the probabilties of getting 'tails'
## with n=10 coin tosses. The first column represents the
## frequency vector μ/n, where μ=0:10 is the number of
## getting 'tails'. In the second column are the probabilities
## (C n μ /2 n), calculated with the function choose().
## Plot the graphic using plot().

require(graphics)

tails.count <- c(0:10)

probabilites <- c()

i <- 0

while(i < 10) {
    res <- choose(10, i)
    probabilites <- c(probabilites, res)
    i <- i + 1
}

result = matrix(
    c(tails.count, probabilites),
    nrow = 11,
    ncol = 2,
    dimnames = list(NULL, c("Tails count", "Number of tosses")))

plot(result)
