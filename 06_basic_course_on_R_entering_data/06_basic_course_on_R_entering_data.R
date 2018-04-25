### R code from vignette source '../06_basic_course_on_R_entering_data/06_basic_course_on_R_entering_data.rnw'

###################################################
### code chunk number 1: 06_basic_course_on_R_entering_data.rnw:45-48
###################################################
c(1, 2, 3, 4)
a <- c(1:10, 100)
a


###################################################
### code chunk number 2: 06_basic_course_on_R_entering_data.rnw:54-56
###################################################
b <- rep(1, 11)
b


###################################################
### code chunk number 3: 06_basic_course_on_R_entering_data.rnw:59-60
###################################################
c <- seq(1, 110, 10)


###################################################
### code chunk number 4: 06_basic_course_on_R_entering_data.rnw:63-67
###################################################
abcc <- cbind(a, b, c)
abcc
abcr <- rbind(a, b, c)
abcr


###################################################
### code chunk number 5: 06_basic_course_on_R_entering_data.rnw:70-71
###################################################
View(abcr)


###################################################
### code chunk number 6: 06_basic_course_on_R_entering_data.rnw:74-77
###################################################
dim(abcr)
nrow(abcr)
ncol(abcr)


###################################################
### code chunk number 7: 06_basic_course_on_R_entering_data.rnw:80-82
###################################################
str(abcr)
class(abcr)


###################################################
### code chunk number 8: 06_basic_course_on_R_entering_data.rnw:87-91
###################################################
mygenes <- data.frame(samp1 = c(33, 22, 12), 
                      samp2 = c(44, 111, 13), 
                      samp3 = c(33, 53, 65))
row.names(mygenes) <- c("CRP", "BRCA1", "HOXA")


###################################################
### code chunk number 9: 06_basic_course_on_R_entering_data.rnw:95-99
###################################################
newsamp <- data.frame(samp4 = c(56, 13, 106, 10), 
                      samp5 = c(45, 15, 99, 13))
row.names(newsamp) <- c("CRP", "HOXA", "BRCA1", "GAPDH")
newsamp


###################################################
### code chunk number 10: 06_basic_course_on_R_entering_data.rnw:106-108
###################################################
mygenes2 <- merge(x=mygenes, y=newsamp, by="row.names")
mygenes2


###################################################
### code chunk number 11: 06_basic_course_on_R_entering_data.rnw:114-116
###################################################
mygenes2 <- merge(x=mygenes, y=newsamp, by="row.names", all.y=TRUE)
mygenes2


###################################################
### code chunk number 12: 06_basic_course_on_R_entering_data.rnw:125-130
###################################################
names(mygenes2)[1] <- "gene"
## or 
mygenes3 <- mygenes2[,-1]
row.names(mygenes3) <- mygenes2[,1]
mygenes3


###################################################
### code chunk number 13: 06_basic_course_on_R_entering_data.rnw:139-142
###################################################
mygenes <- data.frame(samp1 = c(33, 22, 12), 
                      samp2 = c(44, 111, 13), 
                      samp3 = c(33, 53, 65))


###################################################
### code chunk number 14: 06_basic_course_on_R_entering_data.rnw:147-153
###################################################
mygenes <- data.frame(c(33, 22, 12), 
                      c(44, 111, 13), 
                      c(33, 53, 65))
names(mygenes) <- paste("samp", 1:3, sep="")
row.names(mygenes) <- c("CRP", "BRCA1", "HOXA")
mygenes


###################################################
### code chunk number 15: 06_basic_course_on_R_entering_data.rnw:158-159
###################################################
paste("The", "Club", sep=" Mickey Mouse ")


###################################################
### code chunk number 16: 06_basic_course_on_R_entering_data.rnw:163-164
###################################################
paste("The", "Mickey", "Mouse", "Club")


###################################################
### code chunk number 17: 06_basic_course_on_R_entering_data.rnw:175-176
###################################################
data()


###################################################
### code chunk number 18: 06_basic_course_on_R_entering_data.rnw:180-182
###################################################
data(HairEyeColor)
HairEyeColor


###################################################
### code chunk number 19: 06_basic_course_on_R_entering_data.rnw:190-193
###################################################
data <- read.table(file = "Rcourse_data.txt", 
                   header = TRUE, row.names = 1)
data


###################################################
### code chunk number 20: 06_basic_course_on_R_entering_data.rnw:212-216 (eval = FALSE)
###################################################
## data <- read.table(file = "C:/temp/Rcourse_data.txt", 
##                    header = TRUE, 
##                    row.names = 1)
## data


###################################################
### code chunk number 21: 06_basic_course_on_R_entering_data.rnw:219-223 (eval = FALSE)
###################################################
## mydir <- "C:/temp"
## data <- read.table(file = paste(mydir, "Rcourse_data.txt", sep = "/"), 
##                    header = TRUE, 
##                    row.names = 1)


###################################################
### code chunk number 22: 06_basic_course_on_R_entering_data.rnw:232-235 (eval = FALSE)
###################################################
## write.table(data, "C:/temp/results.txt", sep = "\t")
## ## or 
## write.csv(data, "C:/temp/results.csv")


