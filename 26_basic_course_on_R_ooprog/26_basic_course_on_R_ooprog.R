### R code from vignette source '26_basic_course_on_R_ooprog.Rnw'

###################################################
### code chunk number 1: 26_basic_course_on_R_ooprog.Rnw:76-77
###################################################
x <- c(2, 4, 2, 7, 9, 11, 9, 4, 2, 6, 7, 9, 9, 4, 3)


###################################################
### code chunk number 2: 26_basic_course_on_R_ooprog.Rnw:80-81
###################################################
x


###################################################
### code chunk number 3: 26_basic_course_on_R_ooprog.Rnw:84-85
###################################################
logicVec <- c(TRUE, FALSE, TRUE)


###################################################
### code chunk number 4: 26_basic_course_on_R_ooprog.Rnw:88-89
###################################################
logicVec


###################################################
### code chunk number 5: 26_basic_course_on_R_ooprog.Rnw:93-94
###################################################
X <- matrix(x, nrow = 5, ncol = 3)


###################################################
### code chunk number 6: 26_basic_course_on_R_ooprog.Rnw:97-98
###################################################
X


###################################################
### code chunk number 7: 26_basic_course_on_R_ooprog.Rnw:119-124 (eval = FALSE)
###################################################
## class()     # Determines the class of an object.  Can also be  
##             # used to assign a class to an object.
## is.cname()  # Returns TRUE if an object belongs to the class 
##             # "cname" (e.g. is.numeric(), is.data.frame(), etc.) 
##             # and FALSE otherwise.


###################################################
### code chunk number 8: 26_basic_course_on_R_ooprog.Rnw:131-134
###################################################
class(x)
class(logicVec)
class(X)


###################################################
### code chunk number 9: 26_basic_course_on_R_ooprog.Rnw:167-169
###################################################
boxplot(x)               # x is a vector.
boxplot(X)               # X is a matrix with 3 columns.


###################################################
### code chunk number 10: 26_basic_course_on_R_ooprog.Rnw:220-221
###################################################
boxplot


###################################################
### code chunk number 11: 26_basic_course_on_R_ooprog.Rnw:226-230 (eval = FALSE)
###################################################
## methods()      # Determine the S3 methods that are associated   
##                # with a given generic function
## showMethods()  # Determine the S4 methods that are associated   
##                # with a given generic function


###################################################
### code chunk number 12: 26_basic_course_on_R_ooprog.Rnw:237-238
###################################################
methods(boxplot)


###################################################
### code chunk number 13: 26_basic_course_on_R_ooprog.Rnw:245-246 (eval = FALSE)
###################################################
## boxplot(x)


###################################################
### code chunk number 14: 26_basic_course_on_R_ooprog.Rnw:250-251 (eval = FALSE)
###################################################
## boxplot.default(x)


###################################################
### code chunk number 15: 26_basic_course_on_R_ooprog.Rnw:255-256 (eval = FALSE)
###################################################
## boxplot(X)


###################################################
### code chunk number 16: 26_basic_course_on_R_ooprog.Rnw:261-262 (eval = FALSE)
###################################################
## boxplot.matrix(X)


###################################################
### code chunk number 17: 26_basic_course_on_R_ooprog.Rnw:284-285
###################################################
boxplot.matrix;


###################################################
### code chunk number 18: 26_basic_course_on_R_ooprog.Rnw:343-351
###################################################
x <- runif(100000)
y <- runif(100000)
z <- NULL
system.time(
    for(i in 1:100000) {
       z[i] <- x[i] + y[i]
    }
)


###################################################
### code chunk number 19: 26_basic_course_on_R_ooprog.Rnw:443-450
###################################################
x <- runif(100000)
system.time(
    for(i in 1:100000) {
      y <- sqrt(2)    # This statement can be moved outside the loop
      x[i] <- x[i] + y
    }
)


###################################################
### code chunk number 20: 26_basic_course_on_R_ooprog.Rnw:458-464
###################################################
system.time({
    y <- sqrt(2)           # This statement was pulled from the loop
    for(i in 1:100000) {
        x[i] <- x[i] + y
    }
})


###################################################
### code chunk number 21: 26_basic_course_on_R_ooprog.Rnw:499-508
###################################################
x <- runif(100000)
y <- runif(100000)
z <- NULL                 # We do not preallocate the elements of z
system.time(
    for (i in 1:100000) {
        z <- c(z, x[i] + y[i])  # R has to recreate z entirely 
                                # each iteration
    }
)


###################################################
### code chunk number 22: 26_basic_course_on_R_ooprog.Rnw:516-522
###################################################
z <- NULL                   # do not preallocate the elements of z
system.time(
    for (i in 1:100000) {
        z[i] <- x[i] + y[i] # R has to redimension z (change  
    }                       # its length) each iteration
)


###################################################
### code chunk number 23: 26_basic_course_on_R_ooprog.Rnw:531-538
###################################################
z <- rep(NA, 100000)      # Now preallocate 100,000 elements of z,
                          # assigning each the value NA
system.time(
    for (i in 1:100000) {
        z[i] <- x[i] + y[i] # R only has to assign to a single  
    }                       # element of z, with no redimensioning
)


###################################################
### code chunk number 24: 26_basic_course_on_R_ooprog.Rnw:649-652
###################################################
x <- runif(100000)
y <- runif(100000)
z <- rep(NA, 100000)


###################################################
### code chunk number 25: 26_basic_course_on_R_ooprog.Rnw:659-664
###################################################
system.time( 
    for(i in 1:length(x)) {
        z[i] <- x[i] + y[i]
    }
)


###################################################
### code chunk number 26: 26_basic_course_on_R_ooprog.Rnw:669-672
###################################################
system.time( 
    z <- x + y
) 


###################################################
### code chunk number 27: 26_basic_course_on_R_ooprog.Rnw:689-690
###################################################
"+"(2, 3)


###################################################
### code chunk number 28: 26_basic_course_on_R_ooprog.Rnw:728-737
###################################################
x <- runif(100000)
y <- runif(100000)
z <- rep(NA, 100000)
library(compiler)     # The 'compiler' package comes built-in with R
f <- function() {
    for(i in 1:length(x)) {
        z[i] <<- x[i] + y[i]   # Note the use of '<<-'
    }
}


###################################################
### code chunk number 29: 26_basic_course_on_R_ooprog.Rnw:740-741
###################################################
cf <- cmpfun(f)


###################################################
### code chunk number 30: 26_basic_course_on_R_ooprog.Rnw:744-745
###################################################
system.time(cf())


