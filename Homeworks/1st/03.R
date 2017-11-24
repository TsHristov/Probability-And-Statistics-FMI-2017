
generate.n.die.throws = function(n){
    die.outcomes = c(1:6)
    die.prob = 1/6
    
    first.die  = sample(die.outcomes, n, die.prob)
    second.die = sample(die.outcomes, n, die.prob)
    third.die  = sample(die.outcomes, n, die.prob)

    
    dice.throws = matrix(
        c(first.die, second.die, third.die),
        nrow = n,
        ncol = 3,
        dimnames = list(NULL, c("1st", "2nd", "3rd"))
    )

    dice.throws.sum = apply(dice.throws, 1, sum)

    dice.throws = cbind(dice.throws, dice.throws.sum)
    return (dice.throws)
}

dice.throws = generate.n.die.throws(10)

