## ----background="lightgrey", eval=FALSE----------------------------------
## if()    # Used to execute a statement only if the given condition
##         # is met
## else    # Used to specify an alternative statement to be executed
##         # if the condition given in if() isn't met

## ----eval=FALSE----------------------------------------------------------
## if (condition) {
##   statement1
## }

## ----eval=FALSE----------------------------------------------------------
## if (condition) {
##   statement1
##   } else {
##     statement2
##   }

## ------------------------------------------------------------------------
x <- 5
if (x < 10) {
  y <- 0
}
y

## ------------------------------------------------------------------------
if (x >= 10) {
  y <- 1
  } else {
    y <- 0
}
y

## ------------------------------------------------------------------------
y <- if(x >= 10) 1 else 0
y

## ----eval=FALSE----------------------------------------------------------
## y <- if(condition) 1

## ----eval=FALSE----------------------------------------------------------
## y <- if(condition) 1 else NULL

## ------------------------------------------------------------------------
mySign <- function(x) {
    if(x < 0) {
      return("Negative")
    } else {
        return("Non-negative")
    }
}

## ------------------------------------------------------------------------
mySign(13)

## ----eval=FALSE----------------------------------------------------------
## if (condition) {
##   statement11
##   statement12
##       .
##       .
##       .
##   statement1q
## }

## ----eval=FALSE, background="lightgrey"----------------------------------
## ifelse()    # Returns a vector whose values depend on whether or
##             # not a given condition is met by the elements of
##             # another vector

## ------------------------------------------------------------------------
ht <- c(69, 71, 67, 66, 72, 71, 61, 65, 73, 70, 68, 74)
htCategory <- ifelse(ht > 69, yes = "tall", no = "short")
htCategory

## ----background="lightgrey", eval=FALSE----------------------------------
## for()      # Repeat a set of statements a specified number of
##            # times
## while()    # Repeat a set of statements as long as a specified
##            # condition is met
## repeat     # Repeat a set of statements until a break command is
##            # encountered

## ----background="lightgrey", eval=FALSE----------------------------------
## break      # Terminate a loop's iterations
## next       # Skip ahead to the next iteration

## ------------------------------------------------------------------------
for(i in 1:5) {
  print(i^2)
}

i <- 1
while(i <= 5) {
  print(i^2)
  i <- i + 1
}

i <- 1
repeat {
  print(i^2)
  i <- i + 1
  if(i > 5) break
}

## ----eval=FALSE----------------------------------------------------------
## for(i in sequence) {
##   statement1
##   statement2
##       .
##       .
##       .
##   statementq
## }

## ------------------------------------------------------------------------
coins <- data.frame(Coin = c("penny", "quarter", "nickel", 
                             "quarter", "dime", "penny"),
                    Year = c(1943, 1905, 1889, 1960, 1937, 1900), 
                    Mint = c("Den", "SF", "Phil", "Den", "SF", 
                             "Den"),
                    Condition = c("good", "fair", "excellent", 
                                  "good", "poor", "good"),
                    Value = c(12.00, 55.00, 300.00, 40.00, 18.00, 
                              28.00),
                    Price = c(15.00, 45.00, 375.00, 25.00, 20.00, 
                              20.00))
coins

## ------------------------------------------------------------------------
colMeans(coins)

## ------------------------------------------------------------------------
means <- NULL
for(i in 1:ncol(coins)) {
  if (is.numeric(coins[ , i])) {
    means <- c(means, mean(coins[ , i]))
    }
}

## ------------------------------------------------------------------------
means

## ----eval=FALSE----------------------------------------------------------
## while(condition) {
##   statement1
##   statement2
##       .
##       .
##       .
##   statementq
## }

## ----eval=FALSE----------------------------------------------------------
## repeat {
##   statement1
##   statement2
##       .
##       .
##       .
##   statementq
## }

## ----eval=FALSE----------------------------------------------------------
## if(condition) break

## ----eval=FALSE----------------------------------------------------------
## i <- 1
## while(i <= 5) {
##   print("I Cannot Stop by Myself")
## }

## ------------------------------------------------------------------------
myList <- list(
      w = c(4, 4, 5, 5, 6, 6),
      x = c("a", "b", "c"), 
      y = c(5, 10, 15), 
      z = c("r", "s", "t", "u", "v")
)
lengths <- NULL
for(i in myList) {
  print(i)
  lengths <- c(lengths, length(i))
}
lengths

## ----eval=FALSE, background="lightgrey"----------------------------------
## &&             # "And" for logical scalars
## ||             # "Or" for logical scalars
## !              # "Not" (for logical scalars or vectors)
## &              # "And" for logical vectors
## |              # "Or" for logical vectors

## ------------------------------------------------------------------------
TRUE && TRUE
TRUE && FALSE

## ------------------------------------------------------------------------
FALSE || TRUE
FALSE || FALSE

## ------------------------------------------------------------------------
x <- 75
x > 60 && x < 70

## ------------------------------------------------------------------------
x < 60 || x > 70

## ------------------------------------------------------------------------
x <- 3
y <- 5
if(x < 10 && y < 10) {
  print("Both less than 10")
} else {
  print("Not both less than 10")
}

## ------------------------------------------------------------------------
!TRUE
!FALSE
!(5 < 6)

## ----eval=FALSE----------------------------------------------------------
## ?Syntax

## ------------------------------------------------------------------------
c(TRUE, FALSE, TRUE) && c(TRUE, TRUE, FALSE)

## ------------------------------------------------------------------------
c(TRUE, FALSE, TRUE) & c(TRUE, TRUE, FALSE)

## ------------------------------------------------------------------------
systolic <- c(110, 119, 111, 113, 128)
diastolic <- c(70, 74, 88, 74, 83)

## ------------------------------------------------------------------------
classification <- ifelse(systolic < 120 & diastolic < 80, 
                         yes = "Normal",
                         no = "Abnormal")
classification

## ------------------------------------------------------------------------
bpData <- data.frame(
  name = c("Joe", "Katy", "Bill", "Kim", "Mark"),
  systolic = c(110, 119, 111, 113, 128),
  diastolic = c(70, 74, 88, 74, 83))
bpData

## ----echo = F------------------------------------------------------------
rm(systolic, diastolic)

## ------------------------------------------------------------------------
attach(bpData)
bpData[systolic < 120 & diastolic < 80, ]
detach(bpData)

## ----eval=FALSE----------------------------------------------------------
## myFun <- function(arg1, arg2, ...) {
##   ## expressions that use the arguments
##   ## the last command is what you want the function to return
## }

## ------------------------------------------------------------------------
do1 <- function(x, y){
  z <- x + y
  x
  z
}
do1(x = 1, y = 3) ## note that x is not returned

do2 <- function(x, y){
  z <- x + y
  return(x)
  z
}
do2(x = 1, y = 3) ## note that z is returned

do3 <- function(x, y){
  z <- x + y
  return(list(x, z))
}
do3(x = 1, y = 3) ## x and z are returned as a single list

## ------------------------------------------------------------------------
do4 <- function(x, y = 2){
  z1 <- x + y
  z2 <- x * y
  c(z1, z2)
}
do4(x = 1) ## uses y = 2
do4(x = 1, y = 3) ## overwrites default value of y

## ------------------------------------------------------------------------
do5 <- function(){
  sum(2, 4, 6)
  print("Hello World!")
  return(mean(1, 3, 5))
}
do5()

## ------------------------------------------------------------------------
meanOfAll <- function(...) {
  return(mean(c(...)))
}

## ----eval=FALSE----------------------------------------------------------
## meanOfAll(usSales, europeSales, otherSales)

## ----eval=FALSE, background="lightgrey"----------------------------------
## source()       # Read R commands from a text file.

## ----eval=FALSE----------------------------------------------------------
## source("myRcode.txt")

## ----echo = F------------------------------------------------------------
source(file.path(getwd(), "myRcode.txt"))

