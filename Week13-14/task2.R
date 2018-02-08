## Task 2:

## y = x^2:
x = c(-2,-1,0,1,2)
y = c(4,1,0,1,4)

## Create a Linear Model for the data:
model  = lm (y ~ I(x^2))

## Perfect fit is observed:
plot(x^2,y)
abline(coef=coef(model), col="red", lty=2)

