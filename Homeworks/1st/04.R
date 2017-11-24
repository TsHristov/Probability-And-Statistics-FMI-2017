
## Production etalon battery characteristics:
etalon.lifetime.mean = 20
etalon.lifetime.variance = 4

experiment = function(){
    ## 5 batteries, with mean lifetime 21 and
    ## lifetime variance 16:
    return (rnorm(5, 21, 16))
}

repeat.experiment = function(n.times){
    ## Repeat the experiment n times:
    return (replicate(n.times, experiment()))
}

total = repeat.experiment(10)
