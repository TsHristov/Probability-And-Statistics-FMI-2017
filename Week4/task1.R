## Using the "Daily share prices (time series)":
##     -(1) calculate the mean of prices according to traded volume
##     -(2) calculate the dispersion of prices according to traded volume

prices = read.csv("Data/Shares_price_ts.csv")

## (1):
prices.mean = tapply(prices$Price, prices$Volume, mean)

## (2):
prices.var  = tapply(prices$Price, prices$Volume, var)
              
