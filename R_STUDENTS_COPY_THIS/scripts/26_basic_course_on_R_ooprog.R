## ----echo = F------------------------------------------------------------
x <- c(2, 4, 2, 7, 9, 11, 9, 4, 2, 6, 7, 9, 9, 4, 3)

## ------------------------------------------------------------------------
x

## ----echo = F------------------------------------------------------------
logicVec <- c(TRUE, FALSE, TRUE)

## ------------------------------------------------------------------------
logicVec

## ----echo = F------------------------------------------------------------
X <- matrix(x, nrow = 5, ncol = 3)

## ------------------------------------------------------------------------
X

## ----eval=FALSE,background="lightgrey"-----------------------------------
## class()     # Determines the class of an object.  Can also be
##             # used to assign a class to an object.
## is.cname()  # Returns TRUE if an object belongs to the class
##             # "cname" (e.g. is.numeric(), is.data.frame(), etc.)
##             # and FALSE otherwise.

## ------------------------------------------------------------------------
class(x)
class(logicVec)
class(X)

## ----out.width="3.2in"---------------------------------------------------
boxplot(x)               # x is a vector.
boxplot(X)               # X is a matrix with 3 columns.

## ------------------------------------------------------------------------
boxplot

## ----eval=FALSE, background="lightgrey"----------------------------------
## methods()      # Determine the S3 methods that are associated
##                # with a given generic function
## showMethods()  # Determine the S4 methods that are associated
##                # with a given generic function

## ------------------------------------------------------------------------
methods(boxplot)

## ----eval=FALSE----------------------------------------------------------
## boxplot(x)

## ----eval=FALSE----------------------------------------------------------
## boxplot.default(x)

## ----eval=FALSE----------------------------------------------------------
## boxplot(X)

## ----eval=FALSE----------------------------------------------------------
## boxplot.matrix(X)

## ------------------------------------------------------------------------
boxplot.matrix;

## ----eval=FALSE, background="lightgrey"----------------------------------
## system.time()     # Returns the computation time required to
##                   # execute a chunk of R code (in seconds)

## ------------------------------------------------------------------------
x <- runif(100000)
y <- runif(100000)
z <- NULL
system.time(
    for(i in 1:100000) {
       z[i] <- x[i] + y[i]
    }
)

## ------------------------------------------------------------------------
x <- runif(100000)
system.time(
    for(i in 1:100000) {
      y <- sqrt(2)    # This can be moved outside the loop
      x[i] <- x[i] + y
    }
)

## ------------------------------------------------------------------------
system.time({
    y <- sqrt(2)           # This was pulled from the loop
    for(i in 1:100000) {
        x[i] <- x[i] + y
    }
})

## ------------------------------------------------------------------------
x <- runif(100000)
y <- runif(100000)
z <- NULL                 # do not preallocate the elements of z
system.time(
    for (i in 1:100000) {
        z <- c(z, x[i] + y[i])  # R has to recreate z entirely 
                                # each iteration
    }
)

## ------------------------------------------------------------------------
z <- NULL                   # do not preallocate the elements of z
system.time(
    for (i in 1:100000) {
        z[i] <- x[i] + y[i] # R has to redimension z (change  
    }                       # its length) each iteration
)

## ------------------------------------------------------------------------
z <- rep(NA, 100000)      # Now preallocate 100,000 elements of z,
                          # assigning each the value NA
system.time(
    for (i in 1:100000) {
        z[i] <- x[i] + y[i] # R only has to assign to a single  
    }                       # element of z, with no redimensioning
)

## ------------------------------------------------------------------------
x <- runif(100000)
y <- runif(100000)
z <- rep(NA, 100000)

## ------------------------------------------------------------------------
system.time( 
    for(i in 1:length(x)) {
        z[i] <- x[i] + y[i]
    }
)

## ------------------------------------------------------------------------
system.time( 
    z <- x + y
) 

## ------------------------------------------------------------------------
"+"(2, 3)

## ----eval=FALSE, background="lightgrey"----------------------------------
## cmpfun() # Translate (compile) a function from R code to bytecode

## ------------------------------------------------------------------------
x <- runif(100000)
y <- runif(100000)
z <- rep(NA, 100000)
library(compiler)     # The 'compiler' package comes built-in with R
f <- function() {
    for(i in 1:length(x)) {
        z[i] <<- x[i] + y[i]   # Note the use of '<<-'
    }
}

## ------------------------------------------------------------------------
cf <- cmpfun(f)

## ------------------------------------------------------------------------
system.time(cf())

