## Task 1:
## Calculate the intercept and slope coefficent of the following data:
xi = c(2,-6,7)
yi = c(3,4,6)

## Calculate b0 (intercept) and b1 (slope) coefficient manually:
b0 = mean(yi) - b1 * mean(xi)
b1 = cor(xi,yi) * (sd(yi)/sd(sx))

## Calculate the same coefficients via lm built-in function:
## yi = b0 + b1 * xi = 4.2054 + 0.1279 * xi
model = lm (yi ~ xi)

## Plot the linear-regression line:
plot(xi, yi)
abline(coef = coef(model), col="blue", lty=2)

