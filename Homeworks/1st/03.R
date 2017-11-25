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

## Perform Monte Carlo simulation of the experiment:
monte.carlo.simulation = function(){
    ## Create a population of the possible outcomes of 3 dice throws:
    population  = rep(c(1:6), 3)

    ## Sum the 3 samples (the three dice throws) from the population (x1000 times):
    sample.sum  = sapply(1:10000, function(x) sum(sample(population, 3)))

    return (sample.sum)
}

comparison.plot = function(analytic.result, monte.carlo.result){
    ## Make a comparison histogram of the two methods used:
    analytic.method     = data.frame(dice.sums = analytic.result)
    monte.carlo.method  = data.frame(dice.sums = monte.carlo.result)

    analytic.method$method    = 'Analytic Approach'
    monte.carlo.method$method = 'Monte-Carlo Simulation'

    ## Combine the results from the methods into one data frame:
    methods.combined = rbind(analytic.method, monte.carlo.method)

    ## Plot the comparison between the two used methods:
    ggplot(methods.combined, aes(dice.sums, fill=method)) + geom_histogram(alpha=0.5, position='identity', binwidth=1) +
        ggtitle("Sum of throws of 3 dice") + labs(x="Sum of dice throws", y="Count of each sum occurence", fill="Method used")
}

## Analytic approach:

## Simulate throwing 3 dices n times:
dice.n.throws = generate.n.die.throws(10000)
## Find the sum of each 3 dice throws:
analytic.result = dice.throws.sum(dice.n.throws)

## Monte Carlo simulation:
simulation.result = monte.carlo.simulation()

## Create comparison histogram of the analytic approach
## and the Monte Carlo simulation:
comparison.plot(analytic.result, simulation.result)

## Conclusion:
## From the visual comparison from the two methods used, a conclusion can be drawn
## that the sums of all dice throws form a Normal Distribution.

