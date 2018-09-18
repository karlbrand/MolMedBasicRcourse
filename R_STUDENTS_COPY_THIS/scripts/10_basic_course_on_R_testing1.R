### R code from vignette source '../10_basic_course_on_R_testing1/10_basic_course_on_R_testing1.Rnw'

###################################################
### code chunk number 1: 10_basic_course_on_R_testing1.Rnw:30-32
###################################################
Puromycin
attach(Puromycin)


###################################################
### code chunk number 2: 10_basic_course_on_R_testing1.Rnw:36-37
###################################################
mean(rate)


###################################################
### code chunk number 3: 10_basic_course_on_R_testing1.Rnw:40-42
###################################################
mean(rate, trim = 1/10)
median(rate)


###################################################
### code chunk number 4: 10_basic_course_on_R_testing1.Rnw:49-52
###################################################
var(rate)
sqrt(var(rate))
sd(rate)


###################################################
### code chunk number 5: 10_basic_course_on_R_testing1.Rnw:59-71
###################################################
stdev <- function(x){ sqrt(sum((x-mean(x))^2)/(length(x)-1)) }
stdev(rate)
IQR(rate)
iqr <- function(x){ 
  q <- quantile(x)
  q[4]-q[2]
}
iqr(rate)
abs(-1)
mad(rate)
MAD <- function(x){ median(abs(x-median(x)))*1.4826 }
MAD(rate)


###################################################
### code chunk number 6: 10_basic_course_on_R_testing1.Rnw:77-80
###################################################
summary(rate)
quantile(rate)
quantile(rate, seq(0, 1, .1))


###################################################
### code chunk number 7: 10_basic_course_on_R_testing1.Rnw:83-91
###################################################
min(rate)
max(rate)
sum(rate)
log(rate[1])
log(rate[1], 10)
log10(rate[1])
sort(round(rate, -1))
stem(rate)


###################################################
### code chunk number 8: 10_basic_course_on_R_testing1.Rnw:94-97
###################################################
boxplot(rate)
hist(rate, freq = F)
lines(density(rate))


###################################################
### code chunk number 9: 10_basic_course_on_R_testing1.Rnw:102-108
###################################################
set.seed(123)
x <- rnorm(100)
stem(x)
y <- runif(100, 0, 1)
stem(y)
sample(rate)


###################################################
### code chunk number 10: 10_basic_course_on_R_testing1.Rnw:111-115
###################################################
sample(rate, size = 5)
sample(rate, size = 5, replace = TRUE)
sample(rate, size = 5, replace = TRUE,
      prob = runif(length(rate),0,1))


###################################################
### code chunk number 11: 10_basic_course_on_R_testing1.Rnw:118-120
###################################################
table(state)
table(state)/length(state)


###################################################
### code chunk number 12: 10_basic_course_on_R_testing1.Rnw:123-128
###################################################
cats <- cut(rate, breaks = c(0,53,105,153,210))
table(cats)
cats
cats <- cut(rate, breaks = quantile(rate))
table(cats)


###################################################
### code chunk number 13: 10_basic_course_on_R_testing1.Rnw:132-134
###################################################
table(conc, state)
barplot(table(conc, state))


###################################################
### code chunk number 14: 10_basic_course_on_R_testing1.Rnw:138-142
###################################################
boxplot(rate~state, horizontal = TRUE, col = c("red", "blue"))
rug(rate[state=="treated"], col = "red")
rug(rate[state=="untreated"], col = "blue")
stripchart(rate~state, col = c("red", "blue"))


###################################################
### code chunk number 15: 10_basic_course_on_R_testing1.Rnw:179-212
###################################################
set.seed(52)
g1 <- rnorm(50, 5)
g2 <- rnorm(50, 7.5)

plot(x=c(2,12), y=c(0,11), type='n', xlab='log expression value', ylab='')
abline(h=0)
rug(g1, col='blue', lwd=2)
rug(g2, col='red', lwd=2)

br <- seq(2, 12, 0.4)
h1 <- hist(g1, breaks=br, add=T, col='blue')
h2 <- hist(g2, breaks=br, add=T, col='red')

xfit <- seq(min(g1),max(g1),length=50)
yfit <- dnorm(xfit, mean=mean(g1), sd=sd(g1))
yfit <- yfit*diff(h1$mids[1:2])*length(g1)
lines(xfit, yfit, col="black", lwd=3) 

xfit2 <- seq(min(g2),max(g2),length=50)
yfit2 <- dnorm(xfit2, mean=mean(g2), sd=sd(g2))
yfit2 <- yfit2*diff(h2$mids[1:2])*length(g2)
lines(xfit2, yfit2, col="black", lwd=3) 

## draw means
abline(v=mean(g1), lwd=2, lty=2)
abline(v=mean(g2), lwd=2, lty=2)

## draw delta
x0 <- mean(g1)
x1 <- mean(g2)
y0 <- 10
y1 <- 10
arrows(x0, y0, x1, y1, code=3)


###################################################
### code chunk number 16: 10_basic_course_on_R_testing1.Rnw:239-241
###################################################
ttooth <- t.test(ToothGrowth$len~ToothGrowth$supp, conf.level = 0.90)
ttooth


###################################################
### code chunk number 17: 10_basic_course_on_R_testing1.Rnw:247-248
###################################################
t.test(rate~state, alternative = "greater")


###################################################
### code chunk number 18: 10_basic_course_on_R_testing1.Rnw:253-257
###################################################
mytest <- t.test(rate~state, alternative="greater")
mytest$p.value
mytest$conf.int
mytest$estimate[2]/mytest$estimate[1]


###################################################
### code chunk number 19: 10_basic_course_on_R_testing1.Rnw:264-287
###################################################
set.seed(52)
g1 <- runif(50,0.75,1.75)
g2 <- runif(50,0,1)

plot(x=c(0,2), y=c(0,16), type='n', xlab='log expression value', ylab='')
abline(h=0)
rug(g1, col='blue', lwd=2)
rug(g2, col='red', lwd=2)

br <- seq(0, 2, 0.2)
h1 <- hist(g1, breaks=br, add=T, col='blue')
h2 <- hist(g2, breaks=br, add=T, col='red')

## draw means
abline(v=median(g1), lwd=2, lty=2)
abline(v=median(g2), lwd=2, lty=2)

## draw delta
x0 <- median(g1)
x1 <- median(g2)
y0 <- 15
y1 <- 15
arrows(x0, y0, x1, y1, code=3)


###################################################
### code chunk number 20: 10_basic_course_on_R_testing1.Rnw:290-293
###################################################
wtest <- wilcox.test(rate~state,conf.int=TRUE)
wtest
wtest$p.value


###################################################
### code chunk number 21: 10_basic_course_on_R_testing1.Rnw:299-304
###################################################
n1 <- length(state[state=="treated"])
n1
rank(rate)
rank(rate)[state=="treated"]
sum(rank(rate)[state=="treated"])-n1*(n1+1)/2


