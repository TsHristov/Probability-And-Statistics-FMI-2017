values = c(5.46,5.14,7.46,4.67,4.03,5.3,4.71,6.3,5.24,5.6,2.47,4.47,4.81,
           5.54,3.44,5.19,3.81,5.02,6.49,4.65,4.37,5.7,5.93,6.38,5.79)

## Graphic test for normality:
qqnorm(values)
qqline(values)

## Significance test - Shapiro-Wilk normality test:
## H0: sample distribution is normal
## H1: sample distribution is non-normal
## p-value > 0.05 - data not significantly different from Normal Distribution

p = shapiro.test(values)$p
if (p > 0.05){
    print("Normal Distribution")
} else {
    print("Non-Normal Distribution")
}

## Conclusion:
## The p-value equals 0.9677438 > 0.05.
## This means that the dataset `values` is not significantly
## different from a Normal Distribution.
