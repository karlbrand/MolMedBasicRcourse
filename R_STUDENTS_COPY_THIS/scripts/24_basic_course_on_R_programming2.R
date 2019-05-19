## ----echo = F------------------------------------------------------------
rm(list = ls())

## ------------------------------------------------------------------------
w <- 2

## ------------------------------------------------------------------------
f <- function(y) {
  d <- 3
  return(d * (w + y))
}

## ------------------------------------------------------------------------
environment(f)

## ------------------------------------------------------------------------
objects()

## ------------------------------------------------------------------------
f(y = 1)
d

## ------------------------------------------------------------------------
w <- 2
d <- 4
f <- function(y) {
  d <- 3
  return(d * (w + y))
}
f(y = 1)

## ------------------------------------------------------------------------
w <- 2
d <- 4                  # This value of d will remain unchanged.
f <- function(y) {
  d <- 3                # This doesn't affect the value of d in the  
  return(d * (w + y))   # global environment (Workspace)
}
f(y = 1)
d

## ------------------------------------------------------------------------
w <- 2           # w is global to f() and therefore also to h()
f <- function(y) {
  d <- 3 
  h <- function() {
    b <- 5              # b is local to h()
    return(d * (w + y))
    }
  return(h())
}

## ------------------------------------------------------------------------
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

## ------------------------------------------------------------------------
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

## ----eval=FALSE, background="lightgrey"----------------------------------
## <<-        # Assign a value to a variable in the global environment
##            # (Workspace).
## assign()   # Assign a value to a variable in the global environment
##            # (Workspace).

## ------------------------------------------------------------------------
w <- 2
d <- 4                # This value of d will be replaced by 3.
f <- function(y) {
  d <<- 3             # This replaces the value 4 of d in the global 
  return(d * (w + y)) # environment (Workspace) by 3.
}
f(y = 2)
d

## ------------------------------------------------------------------------
w <- 2
d <- 4                # This value of d will be replaced by 3.
f <- function(y) {
  assign("d", 3, envir = .GlobalEnv)
  return(d * (w + y))
}
f(y = 2)
d

## ------------------------------------------------------------------------
w <- 2
d <- 4                      # This value of d will remain unchanged.
f <- function(y) {
    d <- 5                  # This value of d will be replaced by 3.            
    h <- function() {
        d <<- 3             # This replaces the value 5 of d in the
        return(d * (w + y)) # h() and f() environments by 3.
    }
    return(h())
}
f(y = 2)
d

## ----eval=FALSE, background="lightgrey"----------------------------------
## return()     # Terminate a function call and return a value.
## stop()       # Terminate a function call and print an error message.
## warning()    # Print a warning message (without terminating the
##              # function call).

## ------------------------------------------------------------------------
mySign <- function(x) {
  if(x < 0) return("Negative")
  if(x > 0) return("Positive")
  return("Zero")
}

## ------------------------------------------------------------------------
mySign(x = 13)

## ------------------------------------------------------------------------
myRatio <- function(x, y) {
  if(y == 0) stop("Cannot divide by 0")
  return(x/y)
}

## ------------------------------------------------------------------------
myRatio(x = 3, y = 0)

## ------------------------------------------------------------------------
myRatio <- function(x, y) {
  if(y == 0) warning("Attempt made to divide by 0")
  return(x/y)
}

## ------------------------------------------------------------------------
myRatio(x = 3, y = 0)

## ------------------------------------------------------------------------
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

## ------------------------------------------------------------------------
var1 <- c(1, 2, 3)
var2 <- c(19, 20, 16)
var3 <- c("small", "medium", "large")
x <- data.frame(var1, var2, var3)
x

## ------------------------------------------------------------------------
names(x)

## ------------------------------------------------------------------------
names(x) <- c("IDNumber", "Weight", "Size")
names(x)

