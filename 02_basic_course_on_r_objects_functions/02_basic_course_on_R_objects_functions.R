### R code from vignette source '../02_basic_course_on_r_objects_functions/02_KB_basic_course_on_R_objects_functions.rnw'

###################################################
### code chunk number 1: 02_KB_basic_course_on_R_objects_functions.rnw:76-84
###################################################
class(1)
mode(1)

class(2.3123)
an_integer <- as.integer(2.3123)
an_integer
class(an_integer)
mode(an_integer)


###################################################
### code chunk number 2: 02_KB_basic_course_on_R_objects_functions.rnw:87-89
###################################################
numeric_again <- as.numeric(an_integer)
class(numeric_again)


###################################################
### code chunk number 3: 02_KB_basic_course_on_R_objects_functions.rnw:95-104
###################################################
class("a")
mode("a")
class("1")
mode("1")

a_factor <- factor("a")
a_factor
class(a_factor)
mode(a_factor)


###################################################
### code chunk number 4: 02_KB_basic_course_on_R_objects_functions.rnw:109-112
###################################################
class(TRUE)
class(FALSE)
mode(TRUE)


###################################################
### code chunk number 5: 02_KB_basic_course_on_R_objects_functions.rnw:117-122
###################################################
myFunc <- function(object = TRUE) {
  if (object) {
    print("hello world")
  }
}


###################################################
### code chunk number 6: 02_KB_basic_course_on_R_objects_functions.rnw:124-127
###################################################
myFunc
class(myFunc)
mode(myFunc)


###################################################
### code chunk number 7: 02_KB_basic_course_on_R_objects_functions.rnw:139-145
###################################################
a_vector <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12)
class(a_vector)
mode(a_vector)
length(a_vector)
ano_vector <- c(1)
length(x = ano_vector)


###################################################
### code chunk number 8: 02_KB_basic_course_on_R_objects_functions.rnw:148-150
###################################################
combined_vec <- c(a_vector, ano_vector)
combined_vec


###################################################
### code chunk number 9: 02_KB_basic_course_on_R_objects_functions.rnw:159-174
###################################################
a_matrix <- matrix(data = a_vector)
a_matrix
a_vector

dim(a_matrix)
ano_matrix <- matrix(data = a_vector, nrow = 3)
ano_matrix
dim(ano_matrix)
letters_mat <- matrix(data = letters[1:12], nrow = 3)

class(a_matrix)
mode(a_matrix)

class(letters_mat)
mode(letters_mat)


###################################################
### code chunk number 10: 02_KB_basic_course_on_R_objects_functions.rnw:178-182
###################################################
an_array <- array(letters[1:12], c(2, 2, 3))
an_array
class(an_array)
mode(an_array)


###################################################
### code chunk number 11: 02_KB_basic_course_on_R_objects_functions.rnw:190-206
###################################################
a_list <- list(a_vector, a_matrix, letters_mat)
a_list
class(a_list)
mode(a_list)

named_list <- list("vec" = a_vector, "mat" = a_matrix,
                   "lets" = letters_mat,
                   "log" = matrix(rep(c(TRUE, FALSE), 5), nrow = 5),
                   "lis" = list(1:5, letters[1:9])) 
named_list
class(named_list)
mode(named_list)

named_list[["log"]]
class(named_list[["log"]])
mode(named_list[["log"]])


###################################################
### code chunk number 12: 02_KB_basic_course_on_R_objects_functions.rnw:216-231
###################################################
aDF <- data.frame("vec" = a_vector, "lets" = letters[1:12])
aDF
dim(aDF)
class(aDF)
mode(aDF)
str(aDF)

aDF[, 1]
class(aDF[, 1])
mode(aDF[, 1])

aDF[, 2]
class(aDF[, 2])
mode(aDF[, 2])
str(aDF[, 1])


###################################################
### code chunk number 13: 02_KB_basic_course_on_R_objects_functions.rnw:265-268 (eval = FALSE)
###################################################
## install.packages("packageName",
##                  lib = "/directory/to/my custom R library",
##                  repos = "http://cran.xl-mirror.nl")


###################################################
### code chunk number 14: 02_KB_basic_course_on_R_objects_functions.rnw:275-276 (eval = FALSE)
###################################################
## library("packageName")      ## quotes are optional when loading a package


###################################################
### code chunk number 15: 02_KB_basic_course_on_R_objects_functions.rnw:281-290
###################################################
x <- 10
y <- 3
x + y
x - y
x * y
x / y
x ^ y           # exponentiation
x %% y          # modular arithmetic, remainder after division
x %/% y         # integer part of a fraction


###################################################
### code chunk number 16: 02_KB_basic_course_on_R_objects_functions.rnw:294-295
###################################################
a_vector


###################################################
### code chunk number 17: 02_KB_basic_course_on_R_objects_functions.rnw:303-304
###################################################
a_vector + x                    # x is recycled without warning


###################################################
### code chunk number 18: 02_KB_basic_course_on_R_objects_functions.rnw:309-310
###################################################
"+"(a_vector, x)


###################################################
### code chunk number 19: 02_KB_basic_course_on_R_objects_functions.rnw:312-316
###################################################
a_vector - y
a_vector + a_vector
vec_of_thr <- c(2, 4, 6)
a_vector


###################################################
### code chunk number 20: 02_KB_basic_course_on_R_objects_functions.rnw:318-322
###################################################
a_vector + vec_of_thr           # recycled without warning

vec_of_fi <- c(1, 2, 3, 4, 5)
a_vector


###################################################
### code chunk number 21: 02_KB_basic_course_on_R_objects_functions.rnw:325-326
###################################################
a_vector + vec_of_fi            # warning


###################################################
### code chunk number 22: 02_KB_basic_course_on_R_objects_functions.rnw:328-329
###################################################
head(warnings(), 1)


###################################################
### code chunk number 23: 02_KB_basic_course_on_R_objects_functions.rnw:333-338
###################################################
ano_matrix
ano_matrix + x
ano_matrix - y
ano_matrix + ano_matrix
ano_matrix * ano_matrix


###################################################
### code chunk number 24: 02_KB_basic_course_on_R_objects_functions.rnw:421-427
###################################################
x < y
x > y
x <= y
x >= y
x == y
x != y


###################################################
### code chunk number 25: 02_KB_basic_course_on_R_objects_functions.rnw:434-435 (eval = FALSE)
###################################################
## str()


###################################################
### code chunk number 26: 02_KB_basic_course_on_R_objects_functions.rnw:438-439 (eval = FALSE)
###################################################
## class()


###################################################
### code chunk number 27: 02_KB_basic_course_on_R_objects_functions.rnw:442-443 (eval = FALSE)
###################################################
## head()


###################################################
### code chunk number 28: 02_KB_basic_course_on_R_objects_functions.rnw:446-447 (eval = FALSE)
###################################################
## tail()                     


###################################################
### code chunk number 29: 02_KB_basic_course_on_R_objects_functions.rnw:450-451 (eval = FALSE)
###################################################
## ls()                       


###################################################
### code chunk number 30: 02_KB_basic_course_on_R_objects_functions.rnw:454-455 (eval = FALSE)
###################################################
## seq()


###################################################
### code chunk number 31: 02_KB_basic_course_on_R_objects_functions.rnw:458-459
###################################################
1:10


###################################################
### code chunk number 32: 02_KB_basic_course_on_R_objects_functions.rnw:463-464 (eval = FALSE)
###################################################
## source("myScript.R")


###################################################
### code chunk number 33: 02_KB_basic_course_on_R_objects_functions.rnw:474-475
###################################################
sqrt(2)


###################################################
### code chunk number 34: 02_KB_basic_course_on_R_objects_functions.rnw:480-482
###################################################
x <- 2
sqrt(x)


###################################################
### code chunk number 35: 02_KB_basic_course_on_R_objects_functions.rnw:487-488
###################################################
sqrt(x^2 + 5)


###################################################
### code chunk number 36: 02_KB_basic_course_on_R_objects_functions.rnw:506-507
###################################################
args(round)


###################################################
### code chunk number 37: 02_KB_basic_course_on_R_objects_functions.rnw:514-515
###################################################
round(4.679, 2)


###################################################
### code chunk number 38: 02_KB_basic_course_on_R_objects_functions.rnw:527-528
###################################################
round(4.679, 2)


###################################################
### code chunk number 39: 02_KB_basic_course_on_R_objects_functions.rnw:535-536
###################################################
round(x = 4.679, digits = 2)


###################################################
### code chunk number 40: 02_KB_basic_course_on_R_objects_functions.rnw:542-543
###################################################
round(digits = 2, x = 4.679)


###################################################
### code chunk number 41: 02_KB_basic_course_on_R_objects_functions.rnw:553-554 (eval = FALSE)
###################################################
## round(x = 4.679, digits = 2)


###################################################
### code chunk number 42: 02_KB_basic_course_on_R_objects_functions.rnw:564-565
###################################################
args(signif)


###################################################
### code chunk number 43: 02_KB_basic_course_on_R_objects_functions.rnw:715-716 (eval = FALSE)
###################################################
## save.image()


###################################################
### code chunk number 44: 02_KB_basic_course_on_R_objects_functions.rnw:719-720 (eval = FALSE)
###################################################
## save.image("mySession.RData") 


###################################################
### code chunk number 45: 02_KB_basic_course_on_R_objects_functions.rnw:725-726 (eval = FALSE)
###################################################
## savehistory()


###################################################
### code chunk number 46: 02_KB_basic_course_on_R_objects_functions.rnw:737-738 (eval = FALSE)
###################################################
## save(object_1, object_2, object_3, file = "rObjects123.RData")


###################################################
### code chunk number 47: 02_KB_basic_course_on_R_objects_functions.rnw:742-743 (eval = FALSE)
###################################################
## load("mySession.RData")        # load from the working directory


###################################################
### code chunk number 48: 02_KB_basic_course_on_R_objects_functions.rnw:747-748 (eval = FALSE)
###################################################
## loadhistory()


###################################################
### code chunk number 49: 02_KB_basic_course_on_R_objects_functions.rnw:755-756
###################################################
c("Hello" == "hello", "goodbye" == "goodbye")


###################################################
### code chunk number 50: 02_KB_basic_course_on_R_objects_functions.rnw:760-761 (eval = FALSE)
###################################################
## # c("Hello" == "hello" "goodbye" == "goodbye") # not run


###################################################
### code chunk number 51: 02_KB_basic_course_on_R_objects_functions.rnw:770-771
###################################################
c(1, NA, 3, 4, NA)


###################################################
### code chunk number 52: 02_KB_basic_course_on_R_objects_functions.rnw:775-777 (eval = FALSE)
###################################################
## ls()                              # global environment
## objects()                         # alias for ls()


###################################################
### code chunk number 53: 02_KB_basic_course_on_R_objects_functions.rnw:782-783 (eval = FALSE)
###################################################
## rm(object_name)


###################################################
### code chunk number 54: 02_KB_basic_course_on_R_objects_functions.rnw:787-788 (eval = FALSE)
###################################################
## getwd()


###################################################
### code chunk number 55: 02_KB_basic_course_on_R_objects_functions.rnw:792-794 (eval = FALSE)
###################################################
## setwd(dir = "c:\\Windows\\Users\\karl\\My Documents\\R stuff")
## setwd(dir = "c:/Windows/Users/karl/My Documents/R stuff")


###################################################
### code chunk number 56: 02_KB_basic_course_on_R_objects_functions.rnw:809-810 (eval = FALSE)
###################################################
## q()                           # not run


###################################################
### code chunk number 57: 02_KB_basic_course_on_R_objects_functions.rnw:814-815 (eval = FALSE)
###################################################
## ## 3vector <- c(2, 4, 6))    # not run


###################################################
### code chunk number 58: 02_KB_basic_course_on_R_objects_functions.rnw:818-819
###################################################
vector3 <- c(2, 4, 6)


