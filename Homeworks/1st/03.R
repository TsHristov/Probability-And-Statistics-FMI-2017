library("ggplot2")

generate.n.die.throws = function(n){
    die.outcomes = c(1:6)
    die.prob     = 1/6

    ## Generate random outcomes per die throw:
    first.die  = sample(die.outcomes, n, die.prob)
    second.die = sample(die.outcomes, n, die.prob)
    third.die  = sample(die.outcomes, n, die.prob)

    ## Construct matrix of the experiment:
    dice.throws = matrix(
        c(first.die, second.die, third.die),
        nrow = n,
        ncol = 3,
        dimnames = list(NULL, c("1st", "2nd", "3rd"))
    )

    return (dice.throws)
}

dice.throws.sum = function(dice.throws.matrix){
    ## Sum each matrix row to obtain the sum of three dice throws:
    return (apply(dice.throws.matrix, 1, sum))
}

## Simulate throwing 3 dices n times:
dice.n.throws = generate.n.die.throws(10000)

## Find the sum of each 3 dice throws:
throws.sum = dice.throws.sum(dice.n.throws)


## Monte Carlo simulation of the experiment:

## Create a population of the possible outcomes of 3 dice throws:
population        = rep(c(1:6), 3)


## Sum the 3 samples (the three dice throws) from the population and repeat it 1000 times:
sample.sum        = sapply(1:10000, function(x) sum(sample(population, 3)))

## We observe a normal distribution of the different sums of 3 dice throws:
first.method   = data.frame(sums = throws.sum)
second.method  = data.frame(sums = sample.sum)

first.method$method  = 'Straight Experiment'
second.method$method = 'Monte-Carlo simulation'

## Combine the results from the methods into one data frame:
methods.combined = rbind(first, second)

## Plot the comparison between the two used methods:
ggplot(methods.combined, aes(sums, fill=name)) + geom_histogram(alpha=0.5, position='identity', binwidth=1)


