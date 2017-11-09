## Task 2:

all.matches.count      = 100
matches.per.box.count  = 50
matches.left.count     = 21
matches.count          = all.matches.count - matches.left.count
choose.box.probability = 1/2

## Via binomial distribution density:
matches.used.count     = matches.per.box.count - matches.left.count
res = dbinom(matches.used.count, matches.count, choose.box.probability)
