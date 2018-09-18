### R code from vignette source '../20_basic_course_on_R_logreg/20_basic_course_on_R_logreg.Rnw'

###################################################
### code chunk number 1: 20_basic_course_on_R_logreg.Rnw:29-32
###################################################
babies <- read.csv("R_data_January2015.csv", header = T, row.names = 1)
names(babies)
attach(babies)


###################################################
### code chunk number 2: 20_basic_course_on_R_logreg.Rnw:49-50
###################################################
plot(BMI, as.numeric(Status)-1, ylab = "event Y")


###################################################
### code chunk number 3: 20_basic_course_on_R_logreg.Rnw:55-57
###################################################
plot(BMI, as.numeric(Status)-1, ylab = "event Y", ylim = c(-.2,1.2))
abline(3, -.1, col = "darkgreen")


###################################################
### code chunk number 4: 20_basic_course_on_R_logreg.Rnw:63-66
###################################################
levels(Status)
Status[1:3]
as.numeric(Status)[1:3]


###################################################
### code chunk number 5: 20_basic_course_on_R_logreg.Rnw:69-71
###################################################
newstatus <- 2-as.numeric(Status)
newstatus[1:3]


###################################################
### code chunk number 6: 20_basic_course_on_R_logreg.Rnw:77-80
###################################################
plot(BMI-25, newstatus, ylab = "event Y",xlab = "BMI, shifted")
x <- seq(-6, 6, 0.01)
lines(x, exp(x)/(1+exp(x)), type = "l", col = "darkgreen", cex = 2)


###################################################
### code chunk number 7: 20_basic_course_on_R_logreg.Rnw:145-149
###################################################
treatment <- c(20, 80)
placebo <- c(50, 50)
mytable <- rbind(treatment, placebo)
mytable[1,1]*mytable[2, 2]/(mytable[1, 2]*mytable[2, 1])


###################################################
### code chunk number 8: 20_basic_course_on_R_logreg.Rnw:179-181
###################################################
lr1 <- glm(newstatus ~ BMI, family = binomial(logit)) 
summary(lr1)


###################################################
### code chunk number 9: 20_basic_course_on_R_logreg.Rnw:184-190
###################################################
logit_p1 <- -2.40591+0.08782*32
logit_p1
## or 
predict(lr1, newdata = data.frame(BMI = 32), se.fit = TRUE)
p1 <- exp(logit_p1)/(1 + exp(logit_p1))
p1


###################################################
### code chunk number 10: 20_basic_course_on_R_logreg.Rnw:194-198
###################################################
summary(lr1)$coef
b1 <- summary(lr1)$coef[2, 1]
b1
exp(b1) 


###################################################
### code chunk number 11: 20_basic_course_on_R_logreg.Rnw:201-203
###################################################
lr2 <- glm(newstatus ~ BMI + smoking, family = binomial(logit)) 
summary(lr2)$coef


###################################################
### code chunk number 12: 20_basic_course_on_R_logreg.Rnw:206-210
###################################################
mynewdata <- data.frame(BMI = 32, smoking = factor("yes"))
logit_p2 <- predict(lr2, newdata = mynewdata)
p2 <- exp(logit_p2)/(1+exp(logit_p2))
p2


