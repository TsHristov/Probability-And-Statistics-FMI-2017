## Task4:
## A basketball player has a score of 70% at the 3-point shot.
## Find the total of throws he has to made, in order to achive
## 3 successful 3-point shots with probability of .18522.

prob = .18522
success.probability = 7/10 ## 70 %
successful.trials.count = 3

## Find the count of attempts needed, in order to achieve 3 successful 3-point shots via
## Negative Binomial Distribution:
attempts.needed = qnbinom(prob, successful.trials.count, success.probability, lower.tail=FALSE)
