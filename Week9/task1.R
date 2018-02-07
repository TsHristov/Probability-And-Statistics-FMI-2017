## Task 1:
library('corrplot')

## Compute the iris data correlation:
data(iris)

## Remove categorical column ("Species"):
iris = iris[,c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")]

## Compute the correlation between Sepal.Length, Sepal.Width, Petal.Length, Petal.Width:
print(cor(iris))

## Observations: We see that Petal.Width and Petal.Length has a correlation coefficient of
##               0.9628654, so we can conclude that they have a strong positive relationship:

##              Sepal.Length Sepal.Width Petal.Length Petal.Width
## Sepal.Length    1.0000000  -0.1175698    0.8717538   0.8179411
## Sepal.Width    -0.1175698   1.0000000   -0.4284401  -0.3661259
## Petal.Length    0.8717538  -0.4284401    1.0000000   0.9628654
## Petal.Width     0.8179411  -0.3661259    0.9628654   1.0000000


## Create visual representation of the correlations:
## Once again, this time visually we observe the strong positive relationship between
## Petal.Width and Petal.Length:
corrplot(cor(iris), method="circle")
