## ------------------------------------------------------------------------
babies <- read.csv("R_data_January2015.csv",header=T,row.names=1)
names(babies)
attach(babies)

## ----out.width="3.2in"---------------------------------------------------
plot(pregnancy_length_weeks,birthweight)

## ------------------------------------------------------------------------
cor(pregnancy_length_weeks,birthweight)

## ----out.width="3.2in"---------------------------------------------------
plot(1:10, 1:10, type="l", col="blue", lwd=3, 
     ylim=c(0,20), xlim=c(0,10), xlab="x", ylab="y")
abline(0, 1.5, lty=2, col="orange", lwd=3)
abline(0, .3, lty=2, col="orange", lwd=3)
abline(10, 1, lty=1, col="blue", lwd=3)

## ----out.width="3.2in"---------------------------------------------------
plot(pregnancy_length_weeks,birthweight)
abline(-12441.4, 400.3, col="red", lwd=2)
lines(c(35,35), c(1380,1568.921), lwd=2, col="purple")
text(35.5, 1560, expression(epsilon), cex=2, col="purple")

## ------------------------------------------------------------------------
lm1 <- lm(birthweight ~ pregnancy_length_weeks)
lm1

## ------------------------------------------------------------------------
predict(lm1)[pregnancy_length_weeks==35]

## ------------------------------------------------------------------------
predict(lm1, newdata=data.frame(pregnancy_length_weeks=c(seq(25,50,5))))

## ----out.width="3.2in"---------------------------------------------------
hist(birthweight)

## ----out.width="3.2in"---------------------------------------------------
par(mfrow=c(2,2))
plot(lm1)

## ----out.width="3.2in"---------------------------------------------------
set.seed(1234)
par(mfrow=c(2,2))
x <- sort(rnorm(100))
y1 <- sort(rt(100,2))
plot(x, y1, xlim=c(-3,3), xlab="normal", ylab="t, df=2")
abline(0, 1)
y2 <- sort(rexp(100))
plot(x, y2, xlim=c(-3,3), ylim=c(-6,6), xlab="normal", ylab="exponential")
abline(0, 1)
plot(x, x^2-5+rexp(100))
abline(0, 0, col="red")
plot(x, x*rexp(100))
abline(0, 0, col="red")

## ------------------------------------------------------------------------
summary(lm1)

## ------------------------------------------------------------------------
cor(pregnancy_length_weeks,birthweight)^2
summary(lm1)$r.squared

## ------------------------------------------------------------------------
cor(pregnancy_length_weeks, BMI)
lm2 <- lm(birthweight ~ pregnancy_length_weeks + BMI)
lm2stats <- summary(lm2)
lm2stats

## ------------------------------------------------------------------------
lm2stats$adj.r.squared

## ----out.width="3.2in"---------------------------------------------------
plot(BMI,birthweight)

## ------------------------------------------------------------------------
names(lm2stats)
lm2stats$coef[,4]

## ------------------------------------------------------------------------
predict(lm2, newdata=data.frame(pregnancy_length_weeks=32, 
                                BMI=30))
## same as
lm2coefs <- lm2$coef
lm2coefs[1] + lm2coefs[2]*32 + lm2coefs[3]*30

## ----out.width="3.2in"---------------------------------------------------
par(mfrow=c(2,2))
plot(lm2)

