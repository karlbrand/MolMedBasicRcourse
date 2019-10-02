## ------------------------------------------------------------------------
babydata <- read.csv("R_data_January2015.csv",header=T,row.names=1)
attach(babydata)

## ----out.width="3.2in"---------------------------------------------------
par(mfrow=c(1,2))
plot(vitaminB12, homocysteine)
hist(homocysteine)

## ----out.width="3.2in"---------------------------------------------------
loghc <- log(homocysteine)
par(mfrow=c(1,2))
hist(loghc)
set.seed(1234)
qqnorm(loghc)

## ----out.width="3.2in"---------------------------------------------------
lmbh <- lm(loghc ~ vitaminB12)
par(mfrow=c(2,2))
plot(lmbh)

## ------------------------------------------------------------------------
summary(lmbh)
lmbh

## ------------------------------------------------------------------------
p650 <- predict(lmbh, newdata=data.frame(vitaminB12=650))
## or 
3.04 - 0.0005*650 
p650
exp(p650)
range(homocysteine)

## ----out.width="3.2in"---------------------------------------------------
mlr <- lm(SAM ~ vitaminB12 + cholesterol + homocysteine +
                folicacid_erys)
par(mfrow=c(2,2))
plot(mlr)

## ------------------------------------------------------------------------
summary(mlr)
mlr

## ------------------------------------------------------------------------
predict(mlr, newdata=data.frame(vitaminB12=650, 
                                cholesterol=17,
                                homocysteine=16, 
                                folicacid_erys=1340))

