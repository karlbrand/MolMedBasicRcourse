### R code from vignette source '24_basic_course_on_R_programming2.Rnw'

###################################################
### code chunk number 1: 24_basic_course_on_R_programming2.Rnw:83-84
###################################################
rm(list = ls())


###################################################
### code chunk number 2: 24_basic_course_on_R_programming2.Rnw:87-88
###################################################
w <- 2


###################################################
### code chunk number 3: 24_basic_course_on_R_programming2.Rnw:91-95
###################################################
f <- function(y) {
  d <- 3
  return(d * (w + y))
}


###################################################
### code chunk number 4: 24_basic_course_on_R_programming2.Rnw:98-99
###################################################
environment(f)


###################################################
### code chunk number 5: 24_basic_course_on_R_programming2.Rnw:105-106
###################################################
objects()


###################################################
### code chunk number 6: 24_basic_course_on_R_programming2.Rnw:127-129
###################################################
f(y = 1)
d


###################################################
### code chunk number 7: 24_basic_course_on_R_programming2.Rnw:134-141
###################################################
w <- 2
d <- 4
f <- function(y) {
  d <- 3
  return(d * (w + y))
}
f(y = 1)


###################################################
### code chunk number 8: 24_basic_course_on_R_programming2.Rnw:149-157
###################################################
w <- 2
d <- 4                  # This value of d will remain unchanged.
f <- function(y) {
  d <- 3                # This doesn't affect the value of d in the  
  return(d * (w + y))   # global environment (Workspace)
}
f(y = 1)
d


###################################################
### code chunk number 9: 24_basic_course_on_R_programming2.Rnw:180-189
###################################################
w <- 2           # w is global to f() and therefore also to h()
f <- function(y) {
  d <- 3 
  h <- function() {
    b <- 5              # b is local to h()
    return(d * (w + y))
    }
  return(h())
}


###################################################
### code chunk number 10: 24_basic_course_on_R_programming2.Rnw:211-222
###################################################
w <- 2                # w is global to f() and therefore also to h()
f <- function(y) {
  d <- 3              # y and d are local to f() but global to h()
  h <- function() {
    b <- 5            # b is local to h()
    return(d * (w + y))
    }
  print(ls())  
  return(h())
}
f(y = 2)


###################################################
### code chunk number 11: 24_basic_course_on_R_programming2.Rnw:228-239
###################################################
w <- 2                # w is global to f() and therefore also to h()
f <- function(y) {
  d <- 3              # y and d are local to f() but global to h()
  h <- function() {
    b <- 5            # b is local to h()
    return(d * (w + y))
    }
  print(environment(h)) 
  return(h())
}
f(y = 2)


###################################################
### code chunk number 12: 24_basic_course_on_R_programming2.Rnw:260-264 (eval = FALSE)
###################################################
## <<-        # Assign a value to a variable in the global environment 
##            # (Workspace).
## assign()   # Assign a value to a variable in the global environment 
##            # (Workspace).


###################################################
### code chunk number 13: 24_basic_course_on_R_programming2.Rnw:270-278
###################################################
w <- 2
d <- 4                # This value of d will be replaced by 3.
f <- function(y) {
  d <<- 3             # This replaces the value 4 of d in the global 
  return(d * (w + y)) # environment (Workspace) by 3.
}
f(y = 2)
d


###################################################
### code chunk number 14: 24_basic_course_on_R_programming2.Rnw:286-294
###################################################
w <- 2
d <- 4                # This value of d will be replaced by 3.
f <- function(y) {
  assign("d", 3, envir = .GlobalEnv)
  return(d * (w + y))
}
f(y = 2)
d


###################################################
### code chunk number 15: 24_basic_course_on_R_programming2.Rnw:306-318
###################################################
w <- 2
d <- 4                      # This value of d will remain unchanged.
f <- function(y) {
    d <- 5                  # This value of d will be replaced by 3.            
    h <- function() {
        d <<- 3             # This replaces the value 5 of d in 
        return(d * (w + y)) # h()'s environment by 3.
    }
    return(h())
}
f(y = 2)
d


###################################################
### code chunk number 16: 24_basic_course_on_R_programming2.Rnw:352-356 (eval = FALSE)
###################################################
## return()     # Terminate a function call and return a value.
## stop()       # Terminate a function call and print an error message.
## warning()    # Print a warning message (without terminating the 
##              # function call).


###################################################
### code chunk number 17: 24_basic_course_on_R_programming2.Rnw:370-375
###################################################
mySign <- function(x) {
  if(x < 0) return("Negative")
  if(x > 0) return("Positive")
  return("Zero")
}


###################################################
### code chunk number 18: 24_basic_course_on_R_programming2.Rnw:380-381
###################################################
mySign(x = 13)


###################################################
### code chunk number 19: 24_basic_course_on_R_programming2.Rnw:397-401
###################################################
myRatio <- function(x, y) {
  if(y == 0) stop("Cannot divide by 0")
  return(x/y)
}


###################################################
### code chunk number 20: 24_basic_course_on_R_programming2.Rnw:406-407
###################################################
myRatio(x = 3, y = 0)


###################################################
### code chunk number 21: 24_basic_course_on_R_programming2.Rnw:425-429
###################################################
myRatio <- function(x, y) {
  if(y == 0) warning("Attempt made to divide by 0")
  return(x/y)
}


###################################################
### code chunk number 22: 24_basic_course_on_R_programming2.Rnw:434-435
###################################################
myRatio(x = 3, y = 0)


###################################################
### code chunk number 23: 24_basic_course_on_R_programming2.Rnw:467-477
###################################################
f <- function(x) {
  if(x == 0) {
    return(1)
    } else {
      return(x * f(x - 1))
      }
}
f(0)
f(1)
f(5)


###################################################
### code chunk number 24: 24_basic_course_on_R_programming2.Rnw:506-511
###################################################
var1 <- c(1, 2, 3)
var2 <- c(19, 20, 16)
var3 <- c("small", "medium", "large")
x <- data.frame(var1, var2, var3)
x


###################################################
### code chunk number 25: 24_basic_course_on_R_programming2.Rnw:517-518
###################################################
names(x)


###################################################
### code chunk number 26: 24_basic_course_on_R_programming2.Rnw:523-525
###################################################
names(x) <- c("IDNumber", "Weight", "Size")
names(x)


