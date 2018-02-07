## Task 4:
data = c(12.8,3.5,2.9,9.4,8.7,0.7,0.2,2.8,1.9,2.8,3.1,15.8)

## Perform Wilcox-Test:
## H(0): m >= 5, where m is the population median
## H(a): m < 5
if (wilcox.test(data, mu=5, alternative="less")$p.value <= 0.05) {
    print("Reject H(0)")
} else {
    print("Do not reject H(0)")
}
