## ------------------------------------------------------------------------
babies <- read.csv("R_data_January2015.csv",header=T,row.names=1)
names(babies)
attach(babies)

## ----out.width="3.2in"---------------------------------------------------
plot(BMI,cholesterol)

## ------------------------------------------------------------------------
cor(BMI, cholesterol)
cor(BMI, cholesterol, method="spearman")
cor.test(BMI,cholesterol)

## ------------------------------------------------------------------------
cor.test(BMI,cholesterol, method="spearman")

## ------------------------------------------------------------------------
baby_aov1 <- aov(BMI ~ educational_level)
summary(baby_aov1)

## ----out.width="3.2in"---------------------------------------------------
boxplot(BMI~educational_level)

## ------------------------------------------------------------------------
TukeyHSD(baby_aov1)

## ------------------------------------------------------------------------
baby_aov2 <- aov(BMI ~ educational_level * iodine_deficiency)
summary(baby_aov2)

## ------------------------------------------------------------------------
library(lattice)

## ----out.width="3.2in"---------------------------------------------------
bwplot(BMI ~ educational_level|iodine_deficiency)

## ------------------------------------------------------------------------
baby_aov2 <- aov(BMI ~ educational_level + iodine_deficiency)
summary(baby_aov2)

## ------------------------------------------------------------------------
mytable <- matrix(c(20, 50, 80, 50), nrow=2)
cstest <- chisq.test(mytable)
cstest
cstest$p.value

