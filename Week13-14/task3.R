## Task 3:

## Calculate the Linear Regression parameters and determine the intervals:

x = c(0,4,10,15,21,29,36,51,68)
y = c(66.7,71,76.3,80.6,85.7,92.9,99.4,113.6,125.1)

## Check if the criterion (Y) is normally distributed:
if (shapiro.test(y)$p.value <= 0.05) {
    print("The criterion (Y) is not normally distributed")
} else {
    print("The criterion (Y) is normally distributed")
}

## Check if the predictors (X) are normally distributed:
if (shapiro.test(x)$p.value <= 0.05) {
    print("Predictors (X) are not normally distributed")
} else {
    print("Predictors (X) are normally distributed")
}

## Create a model for the data:
model = lm(y~x)

## Plot the Linear Regression line:
plot(x,y)
abline(coef=coef(model), col="blue", lty=2)

print(summary(model))

## Check if the residuals are normally distributed:
qqnorm(residuals(model))
qqline(residuals(model))

## Check for outliers:
residuals = rstandard(model)
outliers  = which(residuals <= -2 | residuals >= 2)

## Remove the outliers:
y = y[-c(outliers)]
x = x[-c(outliers)]



