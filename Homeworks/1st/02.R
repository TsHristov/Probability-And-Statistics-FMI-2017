## National education survey, finds out that 44.7% of the students
## use Wikipedia in at least one of their homeworks. Let X be the number
## of students that have used Wikipedia in a group of 31 students.
## Find P(X=12):

use.wikipedia = .447
sample.size = 31
all = 12

## P(X<=12):
less.than.12 = pbinom(all, sample.size, use.wikipedia)

## P(X<=11):
less.than.11 = pbinom(all-1, sample.size, use.wikipedia)

## P(X=12):
probability.equal.12 = less.than.12 - less.than.11




