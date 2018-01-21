successful.hits.count = c(0,1,2,3,4,5,6,7,8,9,10)
total.successful.hits = c(0,2,4,10,22,26,18,12,4,2,0)
## Theoretical probabilities:
expected.frequences   = dbinom(c(0:10),10,2/5)

## Perform Chi-Square Goodness of Fit Test:
## H0: The data is consistent with the specified distribution.
## H1: The data is NOT consistent with the specified distribution.
significance.level = 0.05
result = chisq.test(total.successful.hits, p=expected.frequences)

print("H0: Probability of success is 2/5")
if (result$p.value < significance.level){
    print("Cocnlusion: Reject H0")
} else {
    print("Conclusion: Accept H0")
}

## Conclusion:
## The number of total successful hits do not have a probability of success 2/5.
