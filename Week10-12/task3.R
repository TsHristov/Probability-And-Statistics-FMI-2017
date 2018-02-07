## Task 3:

significance.level = 95/100
alpha        = 1 - significance.level
etalon       = 7.5
measurements = c(7.65, 7.60 ,7.65, 7.70, 7.55, 7.55, 7.40, 7.40, 7.50, 7.50)

## H(0): μ  = 7.5
## H(a): μ != 7.5

if (t.test(measurements, mu=etalon, alternative="two.sided")$p.value <= alpha) {
    print("Reject H(0)")
} else {
    print("Do not reject H(0)")
}



