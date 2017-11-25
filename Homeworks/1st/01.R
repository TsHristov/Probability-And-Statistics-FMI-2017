## Probability of obtaining an individual card from a deck:
card.deal = function(nth){
 return (dunif(nth,min=1,max=52))
}

## Repeat the experiment 100 times:
all.hands = sapply(1:100,function(x) card.deal(round(runif(1,min=1,max=52))))

## Plotting the results shows that the probability is the same for all dealt hands:
hist(all.hands,col='red')


