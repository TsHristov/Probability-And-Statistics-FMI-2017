## Task 1:

trials.count = c(0:10)
plot(dgeom(trials.count, 1/2))
lines(dgeom(trials.count, 1/2), col="red")
lines(dgeom(trials.count, 2/3), col="green")
lines(dgeom(trials.count, 1/3), col="blue")
