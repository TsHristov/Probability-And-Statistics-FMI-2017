## Use the Daily Share Prices data to:
                                    
prices = read.csv("Data/Shares_price_ts.csv")

## Select the Timestamp column:
timestamp = prices$Timestamp

## Convert the timestamp value to date/time:
timestamp = as.POSIXct(timestamp)

## Create a data.frame consisting of the
## prices and their timestamps:
df = data.frame(timestamp, prices$Price)

## Plot the prices in time-series:
## plot(df, col='blue')

