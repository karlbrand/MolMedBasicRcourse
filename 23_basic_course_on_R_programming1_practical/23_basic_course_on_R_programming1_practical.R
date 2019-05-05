## ------------------------------------------------------------------------
w <- c(3, 6, 6, 4, 7, 9, 11, 6)

## ----eval=FALSE----------------------------------------------------------
## i <- 5
## while(i < 1) {
##   print("Frisbee Sailing")
##   i <- i + 1
## }

## ----eval=FALSE----------------------------------------------------------
## i <- 0
## while(i < 5) {
##   print("Frisbee Sailing")
## }

## ----eval=FALSE----------------------------------------------------------
## i <- 0
## while(i < 5) {
##   print("Frisbee Sailing")
##   i <- i + 1
## }

## ----eval=FALSE----------------------------------------------------------
## i <- 1
## repeat {
##   if(i > 5) break
##   print("Masked Marvel")
##   i <- i + 1
## }

## ------------------------------------------------------------------------
Kennedys <- list(
    JosephJr = character(0),
    John = c("Caroline", "JohnJr", "Patrick"),
    Rosemary = character(0),
    Kathleen = character(0),
    Eunice = c("RobertIII", "Maria", "Timothy", "Mark", "Anthony"),
    Patricia = c("Christopher", "Sydney", "Victoria", "Robin"),
    Robert = c("Kathleen", "JosephII", "RobertJr", "David", 
               "MaryC", "Michael", "MaryK", "Christopher", 
               "Matthew", "Douglas", "Rory"),
    Jean = c("Stephen", "William", "Amanda", "Kym"),
    Edward = c("Kara", "EdwardJr", "Patrick")
)

## ----eval=FALSE----------------------------------------------------------
## (10 < 20 && 15 < 16) || 9 == 10

## ----eval=FALSE----------------------------------------------------------
## 4 < 3 && (5 < 6 || 8 < 9)
## (4 < 3 && 5 < 6) || 8 < 9

