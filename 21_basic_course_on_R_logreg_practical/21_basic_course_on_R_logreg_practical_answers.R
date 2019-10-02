## ------------------------------------------------------------------------
babydata <- read.csv("R_data_January2015.csv",header=T,row.names=1)
attach(babydata)

## ------------------------------------------------------------------------
levels(Status)

## ------------------------------------------------------------------------
table(Status)
newstatus <- factor(3-as.numeric(Status), 
                    labels = c("normal brain development",
                               "intellectual disability"))

## ------------------------------------------------------------------------
levels(newstatus)
table(newstatus)

## ------------------------------------------------------------------------
lrs1 <- glm(newstatus ~ smoking, family = binomial(logit))
lrs1$coef

## ------------------------------------------------------------------------
summary(lrs1)$coef

## ------------------------------------------------------------------------
mynew1 <- data.frame(smoking = factor("yes"))
logit_p1 <- predict(lrs1, newdata = mynew1)
p1 <- exp(logit_p1)/(1 + exp(logit_p1))
p1

## ------------------------------------------------------------------------
exp(summary(lrs1)$coef[2, 1])
## or
exp(1.3679)

## ------------------------------------------------------------------------
lrs2 <- glm(Status ~ smoking, family = binomial(logit))
exp(summary(lrs2)$coef[2,1])

## ------------------------------------------------------------------------
1/exp(summary(lrs1)$coef[2,1])

## ------------------------------------------------------------------------
tss <- table(smoking, newstatus)
tss[1,1]*tss[2,2]/(tss[1,2]*tss[2,1])

## ------------------------------------------------------------------------
lrs3 <- glm(newstatus ~ smoking + vitaminB12, 
            family = binomial(logit))
lrs3$coef

## ------------------------------------------------------------------------
summary(lrs3)$coef

## ------------------------------------------------------------------------
mynew <- data.frame(smoking = factor(c("yes", "yes")),
                    vitaminB12 = c(400, 650))
logit_p <- predict(lrs3, newdata = mynew)
p <- exp(logit_p)/(1+exp(logit_p))
p

