library("ggplot2")

## Sampled batteries characteristics:
battery.lifetime.mean     = 21
battery.lifetime.variance = 16
battery.lifetime.sd       = sqrt(battery.lifetime.variance)

## Production etalon battery characteristics:
etalon.lifetime.mean     = 20
etalon.lifetime.variance = 4
etalon.lifetime.sd       = sqrt(etalon.lifetime.variance)

## Chi-Square significance level treshold:
significance.level = .05 ## 95% of the batteries must be according to the etalon

## Generate the batteries samples and etlons with their Normal Distribution:
##     -samples - N(21,16)
##     -etalons - N(20,4)
generate.samples.and.etalons = function(batteries.count) {
    observed.samples = rnorm(batteries.count, battery.lifetime.mean, battery.lifetime.sd)
    expected.etalons = rnorm(batteries.count, etalon.lifetime.mean, etalon.lifetime.sd)
    return (list("samples"=observed.samples, "etalons"=expected.etalons))
}

## Combine the battery samples and etalons into one dataframe:
combine = function(observed.samples, expected.etalons){
    observed.samples       = data.frame(x = observed.samples)
    expected.etalons       = data.frame(x = expected.etalons)
    observed.samples$name  = 'Sample'
    expected.etalons$name  = 'Etalon'
    combined               = rbind(observed.samples, expected.etalons)
    return (combined)
}

## Use Chi-Square Goodness of Fit Test to compare the battery samples against the etalon:
goodness.of.fit = function(observed.samples, expected.etalons){
    return (chisq.test(observed.samples, p=expected.etalons, rescale.p=TRUE))
}

all.samples      = generate.samples.and.etalons(10000)
observed.samples = all.samples$samples
expected.etalons = all.samples$etalons
samples.etalons.combined = combine(observed.samples, expected.etalons)

## Visual comparison of the battery samples and the expected etalon:
png(filename="samples_to_etalons.png")
print(ggplot(samples.etalons.combined, aes(x,fill=name)) + geom_histogram(alpha=0.5, position='identity',binwidth=1)+
    ggtitle("Battery Samples vs Battery Etalons") + labs(x="Battery Lifetime", y="Count", fill="Battery Category:"))
dev.off()

## Perform Chi-Square Goodness of Fit Test:
p.value = goodness.of.fit(observed.samples, expected.etalons)$p.value

if (p.value < significance.level) {
    print("Batteries are not according to etalon!")
} else {
    print("Batteries are according to etalon!")
}
