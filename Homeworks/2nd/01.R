p = 1/11
n = 110
alpha = 0.05
zstar = qnorm(1-0.05/2)
standard.error = sqrt((1/n)*p*(1-p))

## Create confidence intervals for the observations:
lower.interval = p - zstar*standard.error 
upper.interval = p + zstar*standard.error

registered.clicks = 5/110

## Check if the clicks registered are within the confidence interval:
if (registered.clicks >= lower.interval && registered.clicks <= upper.interval){
    print("Don not remove banner")
} else {
    print("Remove banner")
}

## Conclusion:
## Because the registered clicks (0.04545455) fall betweeen the
## 95% confidence interval [0.03718624, 0.1446319], we conclude that
## the banner should stay.
