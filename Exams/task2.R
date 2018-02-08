## Task 2:

data(state)
state.info = data.frame(state.x77)

## a\: Find the 5 states with lowest illiteracy
print("The 5 states with lowest illiteracy are:")
lowest.illiteracy = sort(state.info$Illiteracy)
print(state.info[state.info$Illiteracy == lowest.illiteracy[1:5],])

## b\: How many states have life expectancy more than 70 years?
print('Count of states with life expectancy of more than 70 years:')
print(length(state.info[state.info$Life.Exp > 70, ]))

## c\: In which state the population density is the biggest:
population.density = state.info[,"Population"]/state.info[,"Area"]
print('State with biggest population density:')
print(state.info[which(max(population.density) == population.density),])

## d\: Find the population sum of the 5 biggest cities:
biggest.cities   = sort(state.info$Area, decreasing=TRUE)[1:5]
top.5.biggest    = state.info[state.info$Area %in% biggest, ]
print('Sum of populations of top 5 biggest cities:')
print(sum(top.5.biggest$Population))
