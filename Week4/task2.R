## Given three particles A, B and C, each with mass 2.5 grams and coordinates
## A(0, 1.5, 2), B(2, 0, 1.5), C(2, 1, 0.5), calculate the points` center of mass.

mass.center.formula = function(x, m) {
    return (sum(m*x) / sum(m))
}

point1 = c(0, 1.5, 2)
point2 = c(2, 0, 1.5)
point3 = c(2, 1, 0.5)
mass   = 2.5

points = data.frame(point1, point2, point3)
mass.center = sapply(points.data.frame, function(x) mass.center.formula(x, mass))
