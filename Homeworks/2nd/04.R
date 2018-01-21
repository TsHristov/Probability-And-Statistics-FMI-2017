data = read.csv(url("http://www.math.bas.bg//statlab//tchorbadjieff/UK_gas_prices.csv"))

## 1. Prepare data:
## - check for normality only on Y
## - check if predictors correlate
## - residuals - do we have outliers?
##  - Graphic Approach: boxplots
##  - Analytic Approach: via the residuals of the model
## 2. Better the model:
##  - via anova()

data = log(data)

## Compare Gas Consumption (Y) against the rest of the parameters:
Y = data$Consumption

## Check if Y (Gas Consumption) is Normally Distributed:
## 1. Graphic approach:
qqnorm(Y)
qqline(Y)

## 2. Analytic approach:
p.value = shapiro.test(Y)$p
if(p.value > 0.05){
    print("Y (Gas Consumption) is Normally Distributed")
}

## Rest of the elements:
X = subset(data, select = -c(Consumption))
X = data.matrix(X)

## Construct correlation matrix:
correlations = cor(X)

## Visualize the correlation matrix:
pairs(correlations)

## Construct the Linear Model:
model = lm(Y~X)
summary(model)

## Call:
## lm(formula = Y ~ X)
##
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -42.289  -9.885  -2.103  10.485  38.000 
##
## Coefficients:
##               Estimate Std. Error t value Pr(>|t|)   
## (Intercept) -2.865e+03  5.411e+03  -0.530  0.60229   
## XYear        1.483e+00  2.739e+00   0.542  0.59409   
## XPrice_1    -2.040e-01  1.210e-01  -1.686  0.10740   
## XPrice_2     5.874e-02  5.003e-02   1.174  0.25411   
## XPrice_3     2.142e-02  5.188e-02   0.413  0.68417   
## XIncome      5.072e+00  3.626e+00   1.399  0.17727   
## XHDD         1.006e-01  3.277e-02   3.069  0.00606 **
## ---
## Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

## Residual standard error: 21.26 on 20 degrees of freedom
## Multiple R-squared:  0.6524,	Adjusted R-squared:  0.5481 
## F-statistic: 6.257 on 6 and 20 DF,  p-value: 0.0007963

## From the above summary we can conclude:
## p-value: 0.0007963 < 0.05 => The model is statistically significant.
## There are two ** on the XHDD variable, this means, that this predictor will be the most significant.

## Check for outliers:
residuals = rstandard(model)
outliers  = which(residuals <= -2 | residuals >= 2)

## Remove the outliers:
Y = Y[-c(23,25)]
X = X[-c(23,25)]

## Check if the new model is better?:







