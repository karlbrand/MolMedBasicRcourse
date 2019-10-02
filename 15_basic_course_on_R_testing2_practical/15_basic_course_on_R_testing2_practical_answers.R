## ------------------------------------------------------------------------
babydata <- read.csv("R_data_January2015.csv",header=T,row.names=1)
attach(babydata)

## ----out.width="3.2in"---------------------------------------------------
cor(vitaminB12, homocysteine)
cor(vitaminB12, homocysteine, method="spearman")
cor.test(vitaminB12, homocysteine)
cor.test(vitaminB12, homocysteine, method="spearman")
plot(vitaminB12,homocysteine)

## ----out.width="3.2in"---------------------------------------------------
par(mfrow=c(1,2))
hist(vitaminB12)
hist(homocysteine)

## ----out.width="3.2in"---------------------------------------------------
logB12 <- log(vitaminB12)
loghc <- log(homocysteine)
par(mfrow=c(2,2))
hist(logB12)
hist(loghc)
plot(logB12, loghc)
cor(logB12, loghc)

## ------------------------------------------------------------------------
cor.test(logB12, loghc)

## ------------------------------------------------------------------------
catB12 <- cut(vitaminB12, breaks=quantile(vitaminB12), incl=TRUE)
levels(catB12)

## ----out.width="3.2in"---------------------------------------------------
boxplot(loghc~catB12)

## ------------------------------------------------------------------------
summary(aov(loghc~catB12))

## ----out.width="3.2in"---------------------------------------------------
boxplot(loghc ~ catB12 + smoking)

## ------------------------------------------------------------------------
summary(aov(loghc~catB12 * smoking))

## ------------------------------------------------------------------------
summary(aov(loghc~catB12 + smoking))

## ------------------------------------------------------------------------
tas <- table(alcohol, smoking)
chisq.test(tas)

