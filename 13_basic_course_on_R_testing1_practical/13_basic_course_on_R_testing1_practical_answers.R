## ------------------------------------------------------------------------
babydata <- read.csv("R_data_January2015.csv", header = T,row.names = 1)
attach(babydata)

## ------------------------------------------------------------------------
dim(babydata)
class(babydata)
str(babydata)

## ------------------------------------------------------------------------
quantile(SAH,seq(0,1,.2))

## ------------------------------------------------------------------------
summary(SAH)
## or
mean(SAH)
median(SAH)
vs <- var(SAH)
vs
sqrt(vs)

## ------------------------------------------------------------------------
stem(SAH)

## ----out.width="3.2in"---------------------------------------------------
par(mfrow=c(2,1))
hist(SAH)
boxplot(SAH,horizontal=TRUE)

## ------------------------------------------------------------------------
logSAH <- log(SAH)

## ------------------------------------------------------------------------
quantile(logSAH,seq(0,1,.2))

## ------------------------------------------------------------------------
summary(logSAH)
## or
mean(logSAH)
median(logSAH)
vls <- var(logSAH)
vls
sqrt(vls)

## ------------------------------------------------------------------------
stem(logSAH)

## ----out.width="3.2in"---------------------------------------------------
par(mfrow=c(2,1))
hist(logSAH)
boxplot(logSAH,horizontal=TRUE)

## ----out.width="3.2in"---------------------------------------------------
set.seed(1234)
hist(sample(logSAH, 50))

## ----out.width="3.2in"---------------------------------------------------
set.seed(1234)
hist(sample(logSAH, 50, replace=T))

## ------------------------------------------------------------------------
table(medication)

## ------------------------------------------------------------------------
table(medication)/length(medication)

## ------------------------------------------------------------------------
table(educational_level)

## ----out.width="3.2in"---------------------------------------------------
boxplot(SAH ~ educational_level, horizontal=TRUE, 
        col=c("purple","orange","green"))
rug(SAH[educational_level=="low"], col="green")
rug(SAH[educational_level=="intermediate"], col="orange")
rug(SAH[educational_level=="high"], col="purple")

## ----out.width="3.2in"---------------------------------------------------
par(mfrow=c(1,2))
hist(triglycerides)
hist(log(triglycerides))

## ----out.width="3.2in"---------------------------------------------------
trigly_high <- triglycerides[educational_level=="high"]
trigly_low <- triglycerides[educational_level=="low"]
par(mfrow=c(1,2))
hist(trigly_high, main = "high")
hist(trigly_low, main = "low")

## ------------------------------------------------------------------------
wilcox.test(trigly_high, trigly_low)

## ------------------------------------------------------------------------
wtest <- wilcox.test(trigly_high, trigly_low, conf.int=TRUE)
ciw <- wtest$conf.int
0 > ciw[1] & 0 < ciw[2]

## ----out.width="3.2in"---------------------------------------------------
sah_m <- SAH[Status=="intellectual disability"]
sah_n <- SAH[Status=="normal brain development"]
par(mfrow=c(2,2))
hist(sah_m, main = "intellectual disability")
hist(sah_n, main = "normal brain development")
hist(log(sah_m), main = "intellectual disability")
hist(log(sah_n), main = "normal brain development")

## ------------------------------------------------------------------------
sstest <- t.test(log(SAH)~Status)
sstest
sstest$p.value
sstest$conf.int

## ------------------------------------------------------------------------
sstest$estimate[2]/sstest$estimate[1]
mean(log(SAH)[Status=="normal brain development"])/
  mean(log(SAH)[Status=="intellectual disability"])

## ----out.width="3.2in"---------------------------------------------------
boxplot(SAH ~ Status)
mean(SAH[Status=="normal brain development"])/
  mean(SAH[Status=="intellectual disability"])

