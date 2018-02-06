## Task 3:

## Function that takes as an input Normal Distribution and produces a
## Standard Normal Distribution:
standard.normal.distribution = function(x,mean,variance) {
    return ((x - mean) / sqrt(variance))
}

## Generate 50 random variables from N(5,5):
random.variables = rnorm(n=50, mean=5, sd=sqrt(5))

## Transform the generated random variables into a Standard Normal Distribution:
standard = sapply(random.variables, FUN=function(x) standard.normal.distribution(x,5,5))

## Compare against Standard Normal Distribution:
hist(standard,probability=TRUE)
lines(density(rnorm(n=50,mean=0,sd=1)))

