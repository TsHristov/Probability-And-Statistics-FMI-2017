## Find a 95% confidence interval estimate of the difference between the female
## proportions of Aboriginal students and the female proportion of Non-Aboriginal students:

library("MASS")

## Create gender/ethnicity table for the quine data set:
tbl = table (quine$Eth, quine$Sex)

## Estimate the difference between population proportions:
prop.test(tbl,correct=FALSE)

## Conclusion: Confidence interval -15.6% and 16.7% 
