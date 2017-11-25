used.wikipedia.prob = .447
sample.group        = 31
students.count      = 12

## Using the Binomial Distribution we model the problem as
## follows: There are 31 indepedent choices of students from
## the group. Each one of them has the same probability
## - .447. Each choice has two outcomes -
## (1) the student has used Wikipedia as a source and
## (2) the student has NOT used Wikipedia as a source.
## We are interested in exactly 12 students from the group to have
## used Wikipedia:

## Via the density function:
prob1 = dbinom(students.count, sample.group, used.wikipedia.prob)

## Via the distribution function:
## P(X=12) = P(X<=12) - P(X<=11):
prob2 = pbinom(students.count, sample.group, used.wikipedia.prob) -
        pbinom(students.count-1, sample.group, used.wikipedia.prob)

