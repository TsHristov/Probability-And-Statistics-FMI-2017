## Use the Daily Share Prices data to:
##     -1.Plot the correlation between Price and Timestamp
##     -2.Plot the correlation between Price and Timestamp
##        in the time range 12:00 - 14:00
prices = read.csv("Data/Shares_price_ts.csv")

## Convert the timestamp value to date/time:
timestamp  = as.POSIXlt(prices$Timestamp)
prices     = prices$Price

## Create a data.frame consisting of the prices and their timestamps:
df = data.frame(timestamp, prices)

## Plot the prices in time-series:
plot(df, col='blue', xlab='Time', ylab='Price')

## 2.
## Filer the prices in the time interval [12:00, 14:00]:
prices.in.time.interval = df[timestamp$hour >= 12 & timestamp$hour <=14,]

## Plot the prices in the time interval [12:00, 14:00]:
plot(prices.in.time.interval, col='blue', xlab='Time', ylab='Price')

