### R code from vignette source '14_basic_course_on_R_distfreeANOVA.Rnw'

###################################################
### code chunk number 1: 14_basic_course_on_R_distfreeANOVA.Rnw:46-50
###################################################
axial <- read.csv("stiffness.csv", header=T)
attach(axial)
set.seed(123)
boxplot(rnorm(100))


###################################################
### code chunk number 2: 14_basic_course_on_R_distfreeANOVA.Rnw:55-56
###################################################
boxplot(stiffness~lengths)


###################################################
### code chunk number 3: 14_basic_course_on_R_distfreeANOVA.Rnw:62-63
###################################################
kruskal.test(stiffness, lengths)


###################################################
### code chunk number 4: 14_basic_course_on_R_distfreeANOVA.Rnw:76-79
###################################################
tennis <- read.csv("tennis.csv", header=T)
head(tennis)
attach(tennis)


###################################################
### code chunk number 5: 14_basic_course_on_R_distfreeANOVA.Rnw:82-83
###################################################
boxplot(speed~tension)


###################################################
### code chunk number 6: 14_basic_course_on_R_distfreeANOVA.Rnw:92-93
###################################################
friedman.test(speed, tension, player)


###################################################
### code chunk number 7: 14_basic_course_on_R_distfreeANOVA.Rnw:97-98
###################################################
kruskal.test(speed, tension)


