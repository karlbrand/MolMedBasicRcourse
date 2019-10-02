## ------------------------------------------------------------------------
gm <- function(x) {
  if(any(x <= 0)){
    stop("All values in the vector must be positive.")
  }
  else{
    y <- prod(x)
    geom <- y^(1/length(x))
    return(geom)
  }
}

## ------------------------------------------------------------------------
class(gm(1:4))

## ------------------------------------------------------------------------
gm <- function(x){
  if(any(x <= 0)){
    stop("All values in the vector must be positive.")
  }
  else{
    geom <- prod(x)^(1/length(x))
    class(geom) <- "geometric"
    return(geom)
  }
}

## ------------------------------------------------------------------------
class(gm(1:4))

## ----eval = FALSE--------------------------------------------------------
## x <- c(); for(i in seq(along = y)) x = c(x, g(y[i]))

## ------------------------------------------------------------------------
time <- function(n){
  x <- runif(n)
  y <- sqrt(2)  
  t <- system.time( for(i in 1:n) {       
    x[i] <- x[i] + y
  }
  )
  return(t[["elapsed"]])
}
inputs <- c(100, 10^3, 10^4, 10^5, 10^6, 10^7)
t1 <- time(100)
t2 <- time(10^3)
t3 <- time(10^4)
t4 <- time(10^5)
t5 <- time(10^6)
t6 <- time(10^7)
timeV <- c(t1, t2, t3, t4, t5, t6)

## ------------------------------------------------------------------------
plot(x = inputs, y = timeV, main = "Number of Inputs vs System Time",
     xlab = "Number of inputs", ylab = "System Time Elapsed", 
     type = "b")

