## Task 1:
## Graphically demonstrate The Central Limit Theorem with 100
## randomly generated distributions Bi(100, 1/2), Bi(100, 1/3).

n  = 100

p1 = 1/2
p2 = 1/3

x1 = rbinom(n, n, p1)
x2 = rbinom(n, n, p2)

## Create histogram for x1
hist(x1, probability=TRUE)

## Central Limit Theorem:
## According to the CLT, when the empirical data is collected via independent binomial
## trials the standardized mean of the Binomial Distribution asymptotically is a
## Standard Normal Distribution.
z1 = sapply(x1, function(x) (x - n*p1)/sqrt(n*p1*(1-p1)))
z2 = sapply(x2, function(x) (x - n*p2)/sqrt(n*p2*(1-p2)))

## Check for outliers:

## 1. Via boxplots:
boxplot(x1)
boxplot(x2)

## 2. Via confidence intervals:
zstar = qnorm(1-0.05/2) ## 95% confidence interval
p.hat = mean(x1)/n

## Calculate the Standard Error:
standard.error = sqrt((1/n)*p.hat*(1-p.hat))

## Intervals for p.hat (success frequency in the sample):
upper.interval = p.hat + zstar*standard.error
lower.interval = p.hat - zstar*standard.error
pi = x1/100

## Spot the outliers:
print("Outliers:")
print(pi[pi < lower.interval | pi > upper.interval])




