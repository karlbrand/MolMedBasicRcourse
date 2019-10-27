## ----out.width="3in"-----------------------------------------------------
axial <- read.csv("stiffness.csv", header=T)
attach(axial)
set.seed(123)
boxplot(rnorm(100))

## ----out.width="3in"-----------------------------------------------------
boxplot(stiffness~lengths)

## ------------------------------------------------------------------------
kruskal.test(stiffness, lengths)

## ------------------------------------------------------------------------
tennis <- read.csv("tennis.csv", header=T)
head(tennis)
attach(tennis)

## ----out.width="3.2in"---------------------------------------------------
boxplot(speed~tension)

## ------------------------------------------------------------------------
friedman.test(speed, tension, player)

## ------------------------------------------------------------------------
kruskal.test(speed, tension)

