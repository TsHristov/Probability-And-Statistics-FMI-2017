## Use the Daily Share Prices data to:
##     -1.Plot the correlation between Price and Timestamp
##     -2.Plot the correlation between Price and Timestamp
##      in the time range 12:00 - 14:00
prices = read.csv("Data/Shares_price_ts.csv")

## 1.
## Select the Timestamp column:
timestamp = prices$Timestamp

## Convert the timestamp value to date/time:
timestamp = as.POSIXct(timestamp)

## Create a data.frame consisting of the
## prices and their timestamps:
df = data.frame(timestamp, prices$Price)

## Plot the prices in time-series:
plot(df, col='blue', xlab='Time', ylab='Price')

## 2.
## Create a timestamp calendar time object:
timestamp = as.POSIXlt(prices$Timestamp)

## Filer the prices in the time interval [12:00, 14:00]:
time.interval.prices = prices[timestamp$hour>=12 & timestamp$hour<14,]

## Convert the timestamp value to date/time:
timestamp = as.POSIXct(time.interval.prices$Timestamp)

## Select the Price column from the new prices subset:
prices = time.interval.prices$Price

## Create a data frame for the correlation
## between price and it`s timestamp:
df = data.frame(timestamp, prices)

## Plot the prices in time-series:
plot(df, col='blue', xlab='Time', ylab='Price')

