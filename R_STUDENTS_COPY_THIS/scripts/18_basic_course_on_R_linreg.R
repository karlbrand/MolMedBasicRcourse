### R code from vignette source '18_basic_course_on_R_linreg.Rnw'

###################################################
### code chunk number 1: 18_basic_course_on_R_linreg.Rnw:29-32
###################################################
babies <- read.csv("R_data_January2015.csv",header=T,row.names=1)
names(babies)
attach(babies)


###################################################
### code chunk number 2: 18_basic_course_on_R_linreg.Rnw:38-39
###################################################
plot(pregnancy_length_weeks,birthweight)


###################################################
### code chunk number 3: 18_basic_course_on_R_linreg.Rnw:42-43
###################################################
cor(pregnancy_length_weeks,birthweight)


###################################################
### code chunk number 4: 18_basic_course_on_R_linreg.Rnw:58-63
###################################################
plot(1:10, 1:10, type="l", col="blue", lwd=3, 
     ylim=c(0,20), xlim=c(0,10), xlab="x", ylab="y")
abline(0, 1.5, lty=2, col="orange", lwd=3)
abline(0, .3, lty=2, col="orange", lwd=3)
abline(10, 1, lty=1, col="blue", lwd=3)


###################################################
### code chunk number 5: 18_basic_course_on_R_linreg.Rnw:68-72
###################################################
plot(pregnancy_length_weeks,birthweight)
abline(-12441.4, 400.3, col="red", lwd=2)
lines(c(35,35), c(1380,1568.921), lwd=2, col="purple")
text(35.5, 1560, expression(epsilon), cex=2, col="purple")


###################################################
### code chunk number 6: 18_basic_course_on_R_linreg.Rnw:76-78
###################################################
lm1 <- lm(birthweight ~ pregnancy_length_weeks)
lm1


###################################################
### code chunk number 7: 18_basic_course_on_R_linreg.Rnw:81-82
###################################################
predict(lm1)[pregnancy_length_weeks==35]


###################################################
### code chunk number 8: 18_basic_course_on_R_linreg.Rnw:85-86
###################################################
predict(lm1, newdata=data.frame(pregnancy_length_weeks=c(seq(25,50,5))))


###################################################
### code chunk number 9: 18_basic_course_on_R_linreg.Rnw:99-100
###################################################
hist(birthweight)


###################################################
### code chunk number 10: 18_basic_course_on_R_linreg.Rnw:103-105
###################################################
par(mfrow=c(2,2))
plot(lm1)


###################################################
### code chunk number 11: 18_basic_course_on_R_linreg.Rnw:111-124
###################################################
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


###################################################
### code chunk number 12: 18_basic_course_on_R_linreg.Rnw:131-132
###################################################
summary(lm1)


###################################################
### code chunk number 13: 18_basic_course_on_R_linreg.Rnw:137-139
###################################################
cor(pregnancy_length_weeks,birthweight)^2
summary(lm1)$r.squared


###################################################
### code chunk number 14: 18_basic_course_on_R_linreg.Rnw:149-153
###################################################
cor(pregnancy_length_weeks, BMI)
lm2 <- lm(birthweight ~ pregnancy_length_weeks + BMI)
lm2stats <- summary(lm2)
lm2stats


###################################################
### code chunk number 15: 18_basic_course_on_R_linreg.Rnw:156-157
###################################################
lm2stats$adj.r.squared


###################################################
### code chunk number 16: 18_basic_course_on_R_linreg.Rnw:161-162
###################################################
plot(BMI,birthweight)


###################################################
### code chunk number 17: 18_basic_course_on_R_linreg.Rnw:166-168
###################################################
names(lm2stats)
lm2stats$coef[,4]


###################################################
### code chunk number 18: 18_basic_course_on_R_linreg.Rnw:171-176
###################################################
predict(lm2, newdata=data.frame(pregnancy_length_weeks=32, 
                                BMI=30))
## same as
lm2coefs <- lm2$coef
lm2coefs[1] + lm2coefs[2]*32 + lm2coefs[3]*30


###################################################
### code chunk number 19: 18_basic_course_on_R_linreg.Rnw:180-182
###################################################
par(mfrow=c(2,2))
plot(lm2)


