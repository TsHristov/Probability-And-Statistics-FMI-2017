## Task 2:

all.matches       = 100
matches.per.box   = 50
matches.left      = 21
matches.count     = all.matches - matches.left
matches.used      = matches.per.box - matches.left

## Binomial distribution density:
print(dbinom(matches.used, matches.count, choose.box.probability))
