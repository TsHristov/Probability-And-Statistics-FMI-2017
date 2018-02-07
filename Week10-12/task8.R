## Check for normality the Speed of Light data in morley dataset:

data(morley)

## 1. Graphical check for normality:
qqnorm(morley$Speed)
qqline(morley$Speed, col=2,lwd=2,lty=2)

## 2. Via Shapiro-Wilk test:
## H(0): sample distribution is Normal
## H(a): sample distribution is not Normal

if (shapiro.test(morley$Speed)$p.value <= 0.05) {
    print("Reject H(0)")
} else {
    print("Do not reject H(0)")
}

