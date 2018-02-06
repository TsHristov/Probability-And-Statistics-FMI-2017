## Task 6:
## Mean weight of newborns is 3500g with a standard deviation of 500g,
## find the probability of a newborn to weight less than 3100g:

print(pnorm(3100, mean=3500, sd=500, lower.tail=TRUE))

## Conclusion:
## Approximately 21% of the newborn weight under 3100g.
