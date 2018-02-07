## Task 6:
## Compare the variances of two samples from normal populations:

x = rnorm(100,0,1)
y = rnorm(100,1,1)

## Perform F test:
## H(0): variances of x and y are equal
## H(a): variances of x and y are NOT equal
if (var.test(x,y)$p.value <= 0.05) {
    print("Reject H(0)")
} else {
    print("Do not reject H(0)")
}

