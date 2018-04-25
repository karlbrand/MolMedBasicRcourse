### R code from vignette source '12_basic_course_on_R_testing2.Rnw'

###################################################
### code chunk number 1: 12_basic_course_on_R_testing2.Rnw:29-32
###################################################
babies <- read.csv("R_data_January2015.csv",header=T,row.names=1)
names(babies)
attach(babies)


###################################################
### code chunk number 2: 12_basic_course_on_R_testing2.Rnw:71-72
###################################################
plot(BMI,cholesterol)


###################################################
### code chunk number 3: 12_basic_course_on_R_testing2.Rnw:75-78
###################################################
cor(BMI, cholesterol)
cor(BMI, cholesterol, method="spearman")
cor.test(BMI,cholesterol)


###################################################
### code chunk number 4: 12_basic_course_on_R_testing2.Rnw:81-82
###################################################
cor.test(BMI,cholesterol, method="spearman")


###################################################
### code chunk number 5: 12_basic_course_on_R_testing2.Rnw:132-134
###################################################
baby_aov1 <- aov(BMI ~ educational_level)
summary(baby_aov1)


###################################################
### code chunk number 6: 12_basic_course_on_R_testing2.Rnw:140-141
###################################################
boxplot(BMI~educational_level)


###################################################
### code chunk number 7: 12_basic_course_on_R_testing2.Rnw:146-147
###################################################
TukeyHSD(baby_aov1)


###################################################
### code chunk number 8: 12_basic_course_on_R_testing2.Rnw:156-158
###################################################
baby_aov2 <- aov(BMI ~ educational_level * iodine_deficiency)
summary(baby_aov2)


###################################################
### code chunk number 9: 12_basic_course_on_R_testing2.Rnw:160-161
###################################################
library(lattice)


###################################################
### code chunk number 10: 12_basic_course_on_R_testing2.Rnw:164-165
###################################################
bwplot(BMI ~ educational_level|iodine_deficiency)


###################################################
### code chunk number 11: 12_basic_course_on_R_testing2.Rnw:170-172
###################################################
baby_aov2 <- aov(BMI ~ educational_level + iodine_deficiency)
summary(baby_aov2)


###################################################
### code chunk number 12: 12_basic_course_on_R_testing2.Rnw:196-200
###################################################
mytable <- matrix(c(20, 50, 80, 50), nrow=2)
cstest <- chisq.test(mytable)
cstest
cstest$p.value


