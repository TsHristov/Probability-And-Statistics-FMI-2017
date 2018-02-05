## Given a joint distribution table find the marginal distributions:
## P {X = xi} and P {Y = yj}, check the probabilities.

distribution.table = matrix(
    c(1/8, 1/8, 0, 0, 0, 2/8, 2/8, 0, 0, 0, 1/8, 1/8),
    nrow = 3,
    ncol = 4,
    byrow = TRUE
)

## Calculate P {X = xi}
p.X = apply(distribution.table, 1, sum)

## Calculate P {Y = yj}
p.Y = apply(distribution.table, 2, sum)

## Verify probabilities match:
print(sum(p.X) == sum(p.Y))
