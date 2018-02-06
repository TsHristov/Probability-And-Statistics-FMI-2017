## Task 3:

number.of.measurements = 6
standard.deviation     = 1.2
zstar                  = qnorm(1-0.05/2) ## 95% confidence interval
measurements           = c(102.5, 101.7, 103.1, 100.9, 100.5, 102.2)
measurements.average   = mean(measurements)

## What is the confidence interval for the population mean at a 95% confidence interval?

## Find confidence intervals for Unknown Mean and Known Standard Deviation,
lower.interval = measurements.average - zstar*(standard.deviation/sqrt(number.of.measurements))
upper.interval = measurements.average + zstar*(standard.deviation/sqrt(number.of.measurements))

## Find measurements errors (outliers):
print(measurements[measurements < lower.interval | measurements > upper.interval])
                   
