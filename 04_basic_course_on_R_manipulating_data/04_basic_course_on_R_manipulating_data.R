### R code from vignette source '04_basic_course_on_R_manipulating_data.rnw'

###################################################
### code chunk number 1: 04_basic_course_on_R_manipulating_data.rnw:46-54
###################################################
x <- c(11, 10, 12, 15)
x[2]
y <- c(13, 17, 21, 18)
y[c(2,3)]
m <- matrix(c(x, y), ncol=2)
m
m[, 1]
m[c(2, 4), 1:2]


###################################################
### code chunk number 2: 04_basic_course_on_R_manipulating_data.rnw:58-60
###################################################
x[-2]
m[, -c(1, 3)]


###################################################
### code chunk number 3: 04_basic_course_on_R_manipulating_data.rnw:65-72
###################################################
names(x) <- c("a", "b", "c", "d")
x
str(x)
x["b"]
row.names(m) <- LETTERS[1:4]
m
m["A",]


###################################################
### code chunk number 4: 04_basic_course_on_R_manipulating_data.rnw:77-78
###################################################
m["A", 2]


###################################################
### code chunk number 5: 04_basic_course_on_R_manipulating_data.rnw:81-90
###################################################
mygenes <- data.frame(samp1 = c(33, 22, 12), 
                      samp2 = c(44, 111, 13), 
                      samp3 = c(33, 53, 65))
row.names(mygenes) <- c("CRP", "BRCA1", "HOXA")
mygenes
mygenes["CRP", ]
mygenes[, "samp1"]
mygenes[, c("samp1", "samp3")]
mygenes["HOXA", "samp2"]


###################################################
### code chunk number 6: 04_basic_course_on_R_manipulating_data.rnw:94-98
###################################################
names(mygenes) <- c("samp10", "samp20", "samp30")
mygenes
## but let's change it back...
names(mygenes) <- c("samp1", "samp2", "samp3")


###################################################
### code chunk number 7: 04_basic_course_on_R_manipulating_data.rnw:106-111
###################################################
x
y
keep <- c(TRUE, TRUE, FALSE, FALSE, TRUE)
x[keep]
x[y>=18]


###################################################
### code chunk number 8: 04_basic_course_on_R_manipulating_data.rnw:114-118
###################################################
y>=18
which(y>=18)
x[x<=11 | x==15]
x[x!=10]


###################################################
### code chunk number 9: 04_basic_course_on_R_manipulating_data.rnw:121-125
###################################################
gender <- factor(c("M", "M", "F", "F"))
gender
males <- gender[gender=="M"]
levels(males)


###################################################
### code chunk number 10: 04_basic_course_on_R_manipulating_data.rnw:138-139
###################################################
mm <- matrix(c(x, x, y, y), nrow=4, byrow=T)


###################################################
### code chunk number 11: 04_basic_course_on_R_manipulating_data.rnw:142-144
###################################################
mm
mm[!duplicated(mm), ]


###################################################
### code chunk number 12: 04_basic_course_on_R_manipulating_data.rnw:147-148
###################################################
unique(mm)


###################################################
### code chunk number 13: 04_basic_course_on_R_manipulating_data.rnw:151-152
###################################################
match(c("a", "b"), c("a", "c", "a", "b", "a", "b"))


###################################################
### code chunk number 14: 04_basic_course_on_R_manipulating_data.rnw:155-156
###################################################
c("a", "b", "d") %in% c("a", "c", "a", "b", "a", "b")


###################################################
### code chunk number 15: 04_basic_course_on_R_manipulating_data.rnw:159-161
###################################################
mygenes
is.data.frame(mygenes)


###################################################
### code chunk number 16: 04_basic_course_on_R_manipulating_data.rnw:164-166
###################################################
mygenes[match(c("samp1", "samp3"), colnames(mygenes))]
mygenes[colnames(mygenes)%in%c("samp1", "samp4")]


###################################################
### code chunk number 17: 04_basic_course_on_R_manipulating_data.rnw:169-170
###################################################
mygenes[c("samp1", "samp3")]


###################################################
### code chunk number 18: 04_basic_course_on_R_manipulating_data.rnw:173-174
###################################################
mygenes[c("samp1", "samp30")])


###################################################
### code chunk number 19: 04_basic_course_on_R_manipulating_data.rnw:177-178
###################################################
mygenes[colnames(mygenes)%in%c("samp1", "samp30")]


###################################################
### code chunk number 20: 04_basic_course_on_R_manipulating_data.rnw:182-184
###################################################
mygenes[grep(2, names(mygenes))]
mygenes[grep("A", row.names(mygenes)), ]


###################################################
### code chunk number 21: 04_basic_course_on_R_manipulating_data.rnw:188-193
###################################################
z <- c(1:4, NA, 5:10)
z
is.na(z)
which(is.na(z))
z[!is.na(z)]


###################################################
### code chunk number 22: 04_basic_course_on_R_manipulating_data.rnw:200-202
###################################################
## retrieve element
mygenes[[3]]


###################################################
### code chunk number 23: 04_basic_course_on_R_manipulating_data.rnw:205-209
###################################################
## retrieve element
mygenes$samp3
## subset
mygenes[3]


###################################################
### code chunk number 24: 04_basic_course_on_R_manipulating_data.rnw:212-219
###################################################
mygenelist <- list(mygenes = mygenes, mygenes2 = mygenes * 2)
mygenelist
## retrieve list element
mygenelist[[1]] 
mygenelist$mygenes
## subset list
mygenelist[1]


###################################################
### code chunk number 25: 04_basic_course_on_R_manipulating_data.rnw:222-223
###################################################
mygenelist$mygenes[2]


###################################################
### code chunk number 26: 04_basic_course_on_R_manipulating_data.rnw:226-230
###################################################
tt <- t.test(x, y)
names(tt)
tt$p.value
tt$estimate


