## Check for survey dataset for independence of Smoke and Exercise:

library(MASS)

tbl = table(survey$Smoke, survey$Exer)
tbl = cbind(tbl[,"Freq"], tbl[,"None"] + tbl[,"Some"])

## Perform Chi-Square test for independence of Smoke and Exercise:
## H(0): There is no association between the two variables.
## H(a): There is an association between the two variables.

if (chisq.test(tbl)$p.value > 0.05) {
    print("Reject H(0)")
} else {
    print("Do not reject H(0)")
}
