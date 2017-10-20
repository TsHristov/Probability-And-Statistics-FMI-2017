## Using the "MASS" package, perform on "survey" table the following:
## -1.Use barplot() to visualize the Sex and Smoke information.
## -2.Use pie() to visualize the smoking frequency.
## -3.Use histogram() to visualize the Pulse information.
## -4.Create table for categorization of smokers according to age.
##  Visualize the result.

## Load the survey data from "survey.csv":
survey.data = read.csv("Data/survey.csv")

## 1.
## Select the sex category:
sex.categories = survey.data$Sex

## Select the smoke category:
smoke.categories = survey.data$Smoke

## Combine sex.categories and smoke.categories into one table:
combined.categories = table(sex.categories, smoke.categories)

## Plot the result using barplot():
barplot(combined.categories, legend=levels(survey.data$Sex))

## 2.
## Create a table with smoke frequency:
smoke.frequency = table(smoke.categories)

## Create pie chart of smoke.frequency using pie():
pie(smoke.frequency)

## 3.
## Select the Pulse data from the survey:
pulse.data = survey.data$Pulse

## Remove NA values from pulse.data:
pulse.data = pulse.data[!is.na(pulse.data)]

## Create a histogram for the pulse.data + it`s density:
hist(pulse.data, probability=TRUE)
lines(density(pulse.data), col='red')

## 4.
## Create a data frame with the Smoke and Age infromation:
smoke.age = data.frame(survey.data$Smoke, survey.data$Age)

## Make a table with rows corresponding to the smoking
## frequency and columns corresponding to age.
## Display a barplot, using the smoke frequencies:

barplot(table(smoke.age), legend=levels(smoke.categories))
