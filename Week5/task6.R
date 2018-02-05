## The average number of received calls in a call center is 2 per minute,
## calculate the probabilities that for 5 minutes:
##     - a) There will be exactly 2 calls registered
##     - b) There will be less than 2 calls registered
##     - c) There will be no less than 2 calls registered

lambda = 2*5

## a):
print(dpois(2, lambda))

## b):
print(ppois(2, lambda))

## c):
print(ppois(1, lambda, lower.tail=FALSE))
