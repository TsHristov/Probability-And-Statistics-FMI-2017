## Task 3:

fair.coin.prob   = 1/2
unfair.coin.prob = 2/5
success.count    = 2
trials.count     = c(1:4)
fair.coin.density   = dnbinom(trials.count, success.count, fair.coin.prob) 
unfair.coin.density = dnbinom(trials.count, success.count, unfair.coin.prob)

## Comparison matrix, that compares the densities of tossing fair and unfair coins:
comparison.matrix = matrix(
    c(fair.coin.density, unfair.coin.density),
    nrow=2,
    byrow=TRUE)

## Function that calculates the odds ratio:
oddsRatio = function(x){
    return (x[1] * (1- x[2]) / ((1 - x[1]) * x [2]))
}

## Find the odds ratio of the comparison matrix:
odds.ratio = apply(comparison.matrix, 2, function(x) oddsRatio(x))
        
