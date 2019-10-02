## ------------------------------------------------------------------------
w <- 5
f <- function(y) {
  return(w + y)
}
f(y = 2)

## ------------------------------------------------------------------------
w <- 5
f <- function(y) {
  w <- 4
  return(w + y)
}
f(y = 2)

## ------------------------------------------------------------------------
w <- 2                   
f <- function(y) {
  h <- function() {
    d <- 3
    return(w + y)
    }
  return(d * h())
  }

## ------------------------------------------------------------------------
myFun1 <- function() {
  a <- 2
  b <- 3
  myFun2(3)
}
myFun2 <- function(y) {
  return(y + a + b)
}
myFun1()      

## ------------------------------------------------------------------------
a <- 1
b <- 2
myFun1()     

## ------------------------------------------------------------------------
w <- 1
f <- function(y) {
  g <- function() {
    w <<- 3 
    return(2)
  }
  return(g())
}
f(y = 1)
w

## ------------------------------------------------------------------------
w <- 1
f <- function(y) {
  w <- 2
  g <- function() {
    w <<- 3 
    return(2)
    }
  return(g())
}
f(y = 1)
w

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

## ------------------------------------------------------------------------
source("nonegmean.txt")
noNegMean(c(-1,0,1))

## ------------------------------------------------------------------------
source("nonegmean.txt")
#noNegMean(c(-1,-1,-1)) # not run; error message

## ------------------------------------------------------------------------
ratio <- function(x,y) {
  if(x == 0 & y == 0) {
    stop("Cannot divide zero by zero.")
  }
  if(y == 0) {
    warning("Cannot divide by zero.")
  }
  ratio <- x/y
  return(ratio)
}

ratio(2,3)
ratio(0,0) 
ratio(1,0)

