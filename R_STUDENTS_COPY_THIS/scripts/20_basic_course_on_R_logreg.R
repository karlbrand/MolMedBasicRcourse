## ------------------------------------------------------------------------
babies <- read.csv("R_data_January2015.csv", header = T, row.names = 1)
names(babies)
attach(babies)

## ----out.width="3.2in"---------------------------------------------------
plot(BMI, as.numeric(Status)-1, ylab = "event Y")

## ----out.width="3.2in"---------------------------------------------------
plot(BMI, as.numeric(Status)-1, ylab = "event Y", ylim = c(-.2,1.2))
abline(3, -.1, col = "darkgreen")

## ------------------------------------------------------------------------
levels(Status)
Status[1:3]
as.numeric(Status)[1:3]

## ------------------------------------------------------------------------
newstatus <- 2-as.numeric(Status)
newstatus[1:3]

## ----out.width="3.2in"---------------------------------------------------
plot(BMI-25, newstatus, ylab = "event Y",xlab = "BMI, shifted")
x <- seq(-6, 6, 0.01)
lines(x, exp(x)/(1+exp(x)), type = "l", col = "darkgreen", cex = 2)

## ------------------------------------------------------------------------
treatment <- c(20, 80)
placebo <- c(50, 50)
mytable <- rbind(treatment, placebo)
mytable[1,1]*mytable[2, 2]/(mytable[1, 2]*mytable[2, 1])

## ------------------------------------------------------------------------
lr1 <- glm(newstatus ~ BMI, family = binomial(logit)) 
summary(lr1)

## ------------------------------------------------------------------------
logit_p1 <- -2.40591+0.08782*32
logit_p1
## or 
predict(lr1, newdata = data.frame(BMI = 32), se.fit = TRUE)
p1 <- exp(logit_p1)/(1 + exp(logit_p1))
p1

## ------------------------------------------------------------------------
summary(lr1)$coef
b1 <- summary(lr1)$coef[2, 1]
b1
exp(b1) 

## ------------------------------------------------------------------------
lr2 <- glm(newstatus ~ BMI + smoking, family = binomial(logit)) 
summary(lr2)$coef

## ------------------------------------------------------------------------
mynewdata <- data.frame(BMI = 32, smoking = factor("yes"))
logit_p2 <- predict(lr2, newdata = mynewdata)
p2 <- exp(logit_p2)/(1+exp(logit_p2))
p2

