## ------------------------------------------------------------------------
class(1)
mode(1)

class(2.3123)
an_integer <- as.integer(2.3123)
an_integer
class(an_integer)
mode(an_integer)

## ------------------------------------------------------------------------
numeric_again <- as.numeric(an_integer)
class(numeric_again)

## ------------------------------------------------------------------------
class("a")
mode("a")
class("1")
mode("1")

a_factor <- factor("a")
a_factor
class(a_factor)
mode(a_factor)

## ------------------------------------------------------------------------
class(TRUE)
class(FALSE)
mode(TRUE)

## ------------------------------------------------------------------------
a_vector <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12)
class(a_vector)
mode(a_vector)
length(a_vector)
ano_vector <- c(1)
length(x = ano_vector)

## ------------------------------------------------------------------------
combined_vec <- c(a_vector, ano_vector)
combined_vec

## ------------------------------------------------------------------------
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

## ------------------------------------------------------------------------
an_array <- array(letters[1:12], c(2, 2, 3))
an_array
class(an_array)
mode(an_array)

## ------------------------------------------------------------------------
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

## ------------------------------------------------------------------------
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

## ----eval=FALSE----------------------------------------------------------
## install.packages("packageName",
##                  lib = "/directory/to/my custom R library",
##                  repos = "http://cran.xl-mirror.nl")

## ----eval=FALSE----------------------------------------------------------
## library("packageName")      ## quotes are optional when loading a package

## ------------------------------------------------------------------------
x <- 10
y <- 3
x + y
x - y
x * y
x / y
x ^ y           # exponentiation
x %% y          # modular arithmetic, remainder after division
x %/% y         # integer part of a fraction

## ------------------------------------------------------------------------
a_vector

## ------------------------------------------------------------------------
a_vector + x                    # x is recycled without warning

## ------------------------------------------------------------------------
"+"(a_vector, x)

## ------------------------------------------------------------------------
a_vector - y
a_vector + a_vector
vec_of_thr <- c(2, 4, 6)
a_vector

## ------------------------------------------------------------------------
a_vector + vec_of_thr           # recycled without warning

vec_of_fi <- c(1, 2, 3, 4, 5)
a_vector

## ----eval=TRUE, echo=TRUE------------------------------------------------
a_vector + vec_of_fi            # warning

## ----eval=TRUE, echo=FALSE-----------------------------------------------
head(warnings(), 1)

## ------------------------------------------------------------------------
ano_matrix
ano_matrix + x
ano_matrix - y
ano_matrix + ano_matrix
ano_matrix * ano_matrix

## ------------------------------------------------------------------------
x < y
x > y
x <= y
x >= y
x == y
x != y

## ----eval=FALSE----------------------------------------------------------
## str()

## ----eval=FALSE----------------------------------------------------------
## class()

## ----eval=FALSE----------------------------------------------------------
## head()

## ----eval=FALSE----------------------------------------------------------
## tail()

## ----eval=FALSE----------------------------------------------------------
## ls()

## ----eval=FALSE----------------------------------------------------------
## seq(from = 1, to = 10, by = 2)

## ------------------------------------------------------------------------
1:10

## ----eval=FALSE----------------------------------------------------------
## source("myScript.R")

## ------------------------------------------------------------------------
sqrt(2)

## ------------------------------------------------------------------------
x <- 2
sqrt(x)

## ------------------------------------------------------------------------
sqrt(x^2 + 5)

## ------------------------------------------------------------------------
args(round)

## ------------------------------------------------------------------------
round(4.679, 2)

## ------------------------------------------------------------------------
round(4.679, 2)

## ------------------------------------------------------------------------
round(x = 4.679, digits = 2)

## ------------------------------------------------------------------------
round(digits = 2, x = 4.679)

## ----eval=FALSE----------------------------------------------------------
## round(x = 4.679, digits = 2)

## ------------------------------------------------------------------------
args(signif)

## ------------------------------------------------------------------------
meanOfAll <- function(...) {
  return(mean(c(...)))
}

## ----eval=FALSE----------------------------------------------------------
## meanOfAll(usSales, europeSales, otherSales)

## ----eval=FALSE----------------------------------------------------------
## save.image()

## ----eval=FALSE----------------------------------------------------------
## save.image("mySession.RData")

## ----eval=FALSE----------------------------------------------------------
## savehistory()

## ----eval=FALSE----------------------------------------------------------
## save(object_1, object_2, object_3, file = "rObjects123.RData")

## ----eval=FALSE----------------------------------------------------------
## load("mySession.RData")        # load from the working directory

## ----eval=FALSE----------------------------------------------------------
## loadhistory()

## ------------------------------------------------------------------------
c("Hello" == "hello", "goodbye" == "goodbye")

## ----eval=FALSE, echo=TRUE-----------------------------------------------
## # c("Hello" == "hello" "goodbye" == "goodbye") # not run

## ------------------------------------------------------------------------
c(1, NA, 3, 4, NA)

## ----eval=FALSE----------------------------------------------------------
## ls()                              # global environment
## objects()                         # alias for ls()

## ----eval=FALSE----------------------------------------------------------
## rm(object_name)

## ----eval=FALSE----------------------------------------------------------
## getwd()

## ----eval=FALSE----------------------------------------------------------
## setwd(dir = "c:\\Windows\\Users\\karl\\My Documents\\R stuff")
## setwd(dir = "c:/Windows/Users/karl/My Documents/R stuff")

## ----eval=FALSE----------------------------------------------------------
## q()                           # not run

## ----eval=FALSE----------------------------------------------------------
## ## 3vector <- c(2, 4, 6))    # not run

## ------------------------------------------------------------------------
vector3 <- c(2, 4, 6)

