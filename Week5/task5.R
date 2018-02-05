## Task 5:

voters.count        = 600000
sample.people.count = 100
sample.women.count  = (4/10 * voters.count) ## 40% 
sample.men.count    = (6/10 * voters.count) ## 60%

## Probability of count of women in the sample to be <= 35,
## using The Hypergeometric Distribution:
probability = phyper(35, sample.women.count, sample.men.count, sample.people.count)

## Probability of count of women in the sample to be <= 35,
## using  The Monte Carlo method:
population = rep(c(0,1), c(sample.men.count, sample.women.count)) ## 0 or 1: female or male

## Perform 1000 simulations:
women.count = sapply(1:1000, function(x) sum(sample(population, 100)))

## Count of women in the samples <= 35:
women.under.35 = women.count[women.count<=35]

## P(#FEMALES<=35):
p = length(women.under.35) / 1000
