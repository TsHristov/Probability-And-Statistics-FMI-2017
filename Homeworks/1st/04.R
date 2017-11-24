## Sample batteries characteristics:
battery.lifetime.mean = 21
battery.lifetime.variance = 16

## Production etalon battery characteristics:
etalon.lifetime.mean = 20
etalon.lifetime.variance = 4

experiment = function(){
    ## 5 batteries with normal distribution, with mean lifetime 21 and
    ## lifetime variance 16:
    return (rnorm(5, battery.lifetime.mean, battery.lifetime.variance))
}

repeat.experiment = function(n.times){
    ## Repeat the experiment n times:
    return (replicate(n.times, experiment()))
}

## Repeat the sampling experiment 1000 times:
collected.data = repeat.experiment(1000)

## Plot the result of the 1000 sampling experiments:
hist(collected.data)
