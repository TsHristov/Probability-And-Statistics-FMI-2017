## Using the "MASS" package, perform on "survey" table the following:
## -Use barplot() to visualize the Sex and Smoke information.
## -Use pie() to visualize the smoking frequency.
## -Use histogram() to visualize the Pulse information.
## -Create table for categorization of smokers according to age.
##  Visualize the result.

## Load the survey data from "survey.csv":
survey.data = read.csv("Data/survey.csv")

## Select the sex category:
sex.categories = survey.data$Sex

## Select the smoke category:
smoke.categories = survey.data$Smoke

## Combine sex.categories and smoke.categories into one table:
combined.categories = table(sex.categories, smoke.categories)

## Plot the result using barplot():
barplot(combined.categories, legend=levels(survey.data$Sex))

## Create a table with smoke frequency:
smoke.frequency = table

## Create pie chart of smoke.frequency using pie():
pie(smoke.frequency)

## Select the Pulse data from the survey:
pulse.data = survey.data$Pulse

## Create a histogram for the pulse.data:
hist(pulse.data)



