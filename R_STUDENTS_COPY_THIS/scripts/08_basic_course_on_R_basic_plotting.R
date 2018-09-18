### R code from vignette source '08_basic_course_on_R_basic_plotting.rnw'

###################################################
### code chunk number 1: 08_basic_course_on_R_basic_plotting.rnw:40-42
###################################################
data(ToothGrowth)
str(ToothGrowth)


###################################################
### code chunk number 2: 08_basic_course_on_R_basic_plotting.rnw:55-56
###################################################
plot(ToothGrowth$len)


###################################################
### code chunk number 3: 08_basic_course_on_R_basic_plotting.rnw:61-62
###################################################
plot(ToothGrowth$dose, ToothGrowth$len)


###################################################
### code chunk number 4: 08_basic_course_on_R_basic_plotting.rnw:68-70
###################################################
plot(ToothGrowth$dose, ToothGrowth$len, xlab = "Dose", 
     ylab = "Tooth Length")


###################################################
### code chunk number 5: 08_basic_course_on_R_basic_plotting.rnw:76-78
###################################################
plot(ToothGrowth$dose, ToothGrowth$len, xlab = "Dose", 
     ylab = "Tooth Length", main = "Guinea Pig Tooth Growth by Dosage")


###################################################
### code chunk number 6: 08_basic_course_on_R_basic_plotting.rnw:83-86
###################################################
plot(ToothGrowth$dose, ToothGrowth$len, xlab = "Dose", 
     ylab = "Tooth Length", main = "Guinea Pig Tooth Growth by Dosage",
     col = ToothGrowth$supp, pch = as.numeric(ToothGrowth$supp))


###################################################
### code chunk number 7: 08_basic_course_on_R_basic_plotting.rnw:92-97
###################################################
plot(ToothGrowth$dose, ToothGrowth$len, xlab = "Dose", 
     ylab = "Tooth Length", main = "Guinea Pig Tooth Growth by Dosage",
     col = ToothGrowth$supp, pch = as.numeric(ToothGrowth$supp))
legend(1.5, 15, c("OJ", "VC"), col = 1:2, 
       pch = 1:2)


###################################################
### code chunk number 8: 08_basic_course_on_R_basic_plotting.rnw:105-111
###################################################
plot(ToothGrowth$dose, ToothGrowth$len, xlab = "Dose", 
     ylab = "Tooth Length", main = "Guinea Pig Tooth Growth by Dosage",
     col = ToothGrowth$supp, pch = as.numeric(ToothGrowth$supp), 
     cex = 2)
legend(1.5, 15, c("OJ", "VC"), col = 1:2, 
       pch = 1:2, cex=2)


###################################################
### code chunk number 9: 08_basic_course_on_R_basic_plotting.rnw:127-128
###################################################
plot(ToothGrowth$len, type = "l") # note type is the letter l for "line"


###################################################
### code chunk number 10: 08_basic_course_on_R_basic_plotting.rnw:132-133
###################################################
plot(ToothGrowth$len, type = "b") # note type is the letter b for "both"


###################################################
### code chunk number 11: 08_basic_course_on_R_basic_plotting.rnw:139-141
###################################################
plot(ToothGrowth$len, type = "l")
lines(ToothGrowth$len + 2)


###################################################
### code chunk number 12: 08_basic_course_on_R_basic_plotting.rnw:147-149
###################################################
plot(ToothGrowth$len, type = "l")
lines(ToothGrowth$len + 2, lty = 3, lwd = 3, col = "darkgreen")


###################################################
### code chunk number 13: 08_basic_course_on_R_basic_plotting.rnw:162-163
###################################################
plot(ToothGrowth$dose)


###################################################
### code chunk number 14: 08_basic_course_on_R_basic_plotting.rnw:168-169
###################################################
table(ToothGrowth$dose)


###################################################
### code chunk number 15: 08_basic_course_on_R_basic_plotting.rnw:172-173
###################################################
barplot(table(ToothGrowth$dose))


###################################################
### code chunk number 16: 08_basic_course_on_R_basic_plotting.rnw:178-180
###################################################
props <- table(ToothGrowth$dose)/nrow(ToothGrowth)
props


###################################################
### code chunk number 17: 08_basic_course_on_R_basic_plotting.rnw:183-184
###################################################
barplot(props)


###################################################
### code chunk number 18: 08_basic_course_on_R_basic_plotting.rnw:189-190
###################################################
barplot(props, ylim = c(0, .4))


###################################################
### code chunk number 19: 08_basic_course_on_R_basic_plotting.rnw:195-197
###################################################
barplot(props, ylim = c(0, .4),
        width = .2, col = c("blue", "white", "red"))


###################################################
### code chunk number 20: 08_basic_course_on_R_basic_plotting.rnw:202-205
###################################################
barplot(props, xlim = c(0, .4),
        width = .2, col = c("blue", "white", "red"),
        horiz = TRUE)


###################################################
### code chunk number 21: 08_basic_course_on_R_basic_plotting.rnw:219-220
###################################################
hist(ToothGrowth$len)


###################################################
### code chunk number 22: 08_basic_course_on_R_basic_plotting.rnw:225-226
###################################################
hist(ToothGrowth$len, freq = FALSE)


###################################################
### code chunk number 23: 08_basic_course_on_R_basic_plotting.rnw:232-233
###################################################
hist(ToothGrowth$len, freq = FALSE, breaks = seq(0, 35, 2))


###################################################
### code chunk number 24: 08_basic_course_on_R_basic_plotting.rnw:240-241
###################################################
hist(ToothGrowth$len, freq = FALSE, breaks = 25)


###################################################
### code chunk number 25: 08_basic_course_on_R_basic_plotting.rnw:246-249
###################################################
hist(ToothGrowth$len, freq = FALSE, breaks = seq(0, 35, 2), 
     main = "Histogram of Tooth Growth", xlab = "Tooth Length", 
     ylim = c(0, .07), col = "orange")


###################################################
### code chunk number 26: 08_basic_course_on_R_basic_plotting.rnw:257-258
###################################################
boxplot(ToothGrowth$len)


###################################################
### code chunk number 27: 08_basic_course_on_R_basic_plotting.rnw:264-265
###################################################
boxplot(ToothGrowth$len~ToothGrowth$supp)


###################################################
### code chunk number 28: 08_basic_course_on_R_basic_plotting.rnw:271-275
###################################################
boxplot(ToothGrowth$len~ToothGrowth$supp, 
        col = c("darkgreen", "purple"),
        ylab = "Supplement Type", xlab = "Tooth Length",
        ylim = c(0, 40), horizontal = TRUE)


###################################################
### code chunk number 29: 08_basic_course_on_R_basic_plotting.rnw:283-287
###################################################
par(mfrow = c(1, 2))
boxplot(ToothGrowth$len~ToothGrowth$supp, main = "Boxplot",
        xlab = "Supplement Type")
hist(ToothGrowth$len, main = "Histogram", xlab = "Tooth Length")


###################################################
### code chunk number 30: 08_basic_course_on_R_basic_plotting.rnw:311-325
###################################################
# note: run getwd() to see the working directory - 
# that is the directory to which files will be written
pdf("plot1.pdf", width = 6, height = 9)
boxplot(ToothGrowth$len~ToothGrowth$supp, 
        col = c("darkgreen", "purple"),
        xlab = "Supplement Type", ylab = "Tooth Length",
        ylim = c(0, 40), horizontal = TRUE)
dev.off()
pdf("plot2.pdf", width = 4, height = 8)
boxplot(ToothGrowth$len~ToothGrowth$supp, 
        col = c("darkgreen", "purple"),
        xlab = "Supplement Type", ylab = "Tooth Length",
        ylim = c(0, 40), horizontal = TRUE)
dev.off()


###################################################
### code chunk number 31: 08_basic_course_on_R_basic_plotting.rnw:330-337
###################################################
png("plot1.png", units = "in", res = 300,
    width = 6, height = 9)
boxplot(ToothGrowth$len~ToothGrowth$supp, 
        col = c("darkgreen", "purple"),
        xlab = "Supplement Type", ylab = "Tooth Length",
        ylim = c(0, 40), horizontal = TRUE)
dev.off()


