## ----eval=FALSE----------------------------------------------------------
## w <- 5
## f <- function(y) {
##   return(w + y)
## }
## f(y = 2)

## ----eval=FALSE----------------------------------------------------------
## w <- 5
## f <- function(y) {
##   w <- 4
##   return(w + y)
## }
## f(y = 2)

## ------------------------------------------------------------------------
w <- 2                   
f <- function(y) {
  h <- function() {
    d <- 3
    return(w + y)
    }
  return(d * h())
  }

## ----eval=FALSE----------------------------------------------------------
## myFun1 <- function() {
##   a <- 2
##   b <- 3
##   myFun2(3)
## }
## myFun2 <- function(y) {
##   return(y + a + b)
## }
## myFun1()

## ----eval=FALSE----------------------------------------------------------
## a <- 1
## b <- 2
## myFun1()

## ----eval=FALSE----------------------------------------------------------
## w <- 1
## f <- function(y) {
##   g <- function() {
##     w <<- 3
##     return(2)
##   }
##   return(g())
## }
## f(y = 1)
## w

## ----eval=FALSE----------------------------------------------------------
## w <- 1
## f <- function(y) {
##   w <- 2
##   g <- function() {
##     w <<- 3
##     return(2)
##     }
##   return(g())
## }
## f(y = 1)
## w

## ------------------------------------------------------------------------
noNegMean <- function(x) {
  if(all(x < 0)) {
    stop("All values in x are negative")
    }
  if(any(x < 0)) {
    x[x < 0] <- 0
    warning("Negative values in x replaced by zero")
    }
  return(mean(x))
  }

