### R code from vignette source '22_basic_course_on_R_programming1.Rnw'

###################################################
### code chunk number 1: 22_basic_course_on_R_programming1.Rnw:72-76 (eval = FALSE)
###################################################
## if()    # Used to execute a statement only if the given condition
##         # is met
## else    # Used to specify an alternative statement to be executed 
##         # if the condition given in if() isn't met


###################################################
### code chunk number 2: 22_basic_course_on_R_programming1.Rnw:81-84 (eval = FALSE)
###################################################
## if (condition) {
##   statement1
## }


###################################################
### code chunk number 3: 22_basic_course_on_R_programming1.Rnw:89-94 (eval = FALSE)
###################################################
## if (condition) {
##   statement1
##   } else {
##     statement2
##   }


###################################################
### code chunk number 4: 22_basic_course_on_R_programming1.Rnw:107-112
###################################################
x <- 5
if (x < 10) {
  y <- 0
}
y


###################################################
### code chunk number 5: 22_basic_course_on_R_programming1.Rnw:118-124
###################################################
if (x >= 10) {
  y <- 1
  } else {
    y <- 0
}
y


###################################################
### code chunk number 6: 22_basic_course_on_R_programming1.Rnw:129-131
###################################################
y <- if(x >= 10) 1 else 0
y


###################################################
### code chunk number 7: 22_basic_course_on_R_programming1.Rnw:153-154 (eval = FALSE)
###################################################
## y <- if(condition) 1 


###################################################
### code chunk number 8: 22_basic_course_on_R_programming1.Rnw:159-160 (eval = FALSE)
###################################################
## y <- if(condition) 1 else NULL


###################################################
### code chunk number 9: 22_basic_course_on_R_programming1.Rnw:168-175
###################################################
mySign <- function(x) {
    if(x < 0) {
      return("Negative")
    } else {
        return("Non-negative")
    }
}


###################################################
### code chunk number 10: 22_basic_course_on_R_programming1.Rnw:181-182
###################################################
mySign(13)


###################################################
### code chunk number 11: 22_basic_course_on_R_programming1.Rnw:216-224 (eval = FALSE)
###################################################
## if (condition) {
##   statement11
##   statement12
##       .
##       .
##       .
##   statement1q
## }


###################################################
### code chunk number 12: 22_basic_course_on_R_programming1.Rnw:277-280 (eval = FALSE)
###################################################
## ifelse()    # Returns a vector whose values depend on whether or 
##             # not a given condition is met by the elements of 
##             # another vector


###################################################
### code chunk number 13: 22_basic_course_on_R_programming1.Rnw:289-292
###################################################
ht <- c(69, 71, 67, 66, 72, 71, 61, 65, 73, 70, 68, 74)
htCategory <- ifelse(ht > 69, yes = "tall", no = "short")
htCategory


###################################################
### code chunk number 14: 22_basic_course_on_R_programming1.Rnw:311-317 (eval = FALSE)
###################################################
## for()      # Repeat a set of statements a specified number of 
##            # times
## while()    # Repeat a set of statements as long as a specified 
##            # condition is met  
## repeat     # Repeat a set of statements until a break command is 
##            # encountered 


###################################################
### code chunk number 15: 22_basic_course_on_R_programming1.Rnw:321-323 (eval = FALSE)
###################################################
## break      # Terminate a loop's iterations
## next       # Skip ahead to the next iteration


###################################################
### code chunk number 16: 22_basic_course_on_R_programming1.Rnw:330-346
###################################################
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


###################################################
### code chunk number 17: 22_basic_course_on_R_programming1.Rnw:362-370 (eval = FALSE)
###################################################
## for(i in sequence) {
##   statement1
##   statement2
##       .
##       .
##       .
##   statementq
## }


###################################################
### code chunk number 18: 22_basic_course_on_R_programming1.Rnw:385-397
###################################################
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


###################################################
### code chunk number 19: 22_basic_course_on_R_programming1.Rnw:402-403
###################################################
colMeans(coins)


###################################################
### code chunk number 20: 22_basic_course_on_R_programming1.Rnw:412-418
###################################################
means <- NULL
for(i in 1:ncol(coins)) {
  if (is.numeric(coins[ , i])) {
    means <- c(means, mean(coins[ , i]))
    }
}


###################################################
### code chunk number 21: 22_basic_course_on_R_programming1.Rnw:423-424
###################################################
means


###################################################
### code chunk number 22: 22_basic_course_on_R_programming1.Rnw:468-476 (eval = FALSE)
###################################################
## while(condition) {
##   statement1
##   statement2
##       .
##       .
##       .
##   statementq
## }


###################################################
### code chunk number 23: 22_basic_course_on_R_programming1.Rnw:524-532 (eval = FALSE)
###################################################
## repeat {
##   statement1
##   statement2
##       .
##       .
##       .
##   statementq
## }


###################################################
### code chunk number 24: 22_basic_course_on_R_programming1.Rnw:536-537 (eval = FALSE)
###################################################
## if(condition) break


###################################################
### code chunk number 25: 22_basic_course_on_R_programming1.Rnw:551-555 (eval = FALSE)
###################################################
## i <- 1
## while(i <= 5) {
##   print("I Cannot Stop by Myself")
## }


###################################################
### code chunk number 26: 22_basic_course_on_R_programming1.Rnw:583-590
###################################################
X <- matrix(0, nrow = 6, ncol = 6)
for(i in 1:6) {
    for(j in i:6) {
        X[i, j] <- i
    }
}
X


###################################################
### code chunk number 27: 22_basic_course_on_R_programming1.Rnw:596-604
###################################################
# First create a 6 by 6 matrix of all 0's
X <- matrix(0, nrow = 6, ncol = 6)   
# Next fill in the upper right part using nested loops.
for(i in 1:6) {      # i is the row number, ranging from 1 to 6
    for(j in i:6) {  # j is the column number, ranging from i to 6
        X[i, j] <- i
    }
}


###################################################
### code chunk number 28: 22_basic_course_on_R_programming1.Rnw:644-656
###################################################
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


###################################################
### code chunk number 29: 22_basic_course_on_R_programming1.Rnw:674-679 (eval = FALSE)
###################################################
## &&             # "And" for logical scalars
## ||             # "Or" for logical scalars
## !              # "Not" (for logical scalars or vectors)
## &              # "And" for logical vectors
## |              # "Or" for logical vectors


###################################################
### code chunk number 30: 22_basic_course_on_R_programming1.Rnw:711-713
###################################################
TRUE && TRUE
TRUE && FALSE


###################################################
### code chunk number 31: 22_basic_course_on_R_programming1.Rnw:719-721
###################################################
FALSE || TRUE
FALSE || FALSE


###################################################
### code chunk number 32: 22_basic_course_on_R_programming1.Rnw:729-730 (eval = FALSE)
###################################################
## x > 60 && x < 70


###################################################
### code chunk number 33: 22_basic_course_on_R_programming1.Rnw:734-735 (eval = FALSE)
###################################################
## x < 60 || x > 70


###################################################
### code chunk number 34: 22_basic_course_on_R_programming1.Rnw:740-747
###################################################
x <- 3
y <- 5
if(x < 10 && y < 10) {
  print("Both less than 10")
} else {
  print("Not both less than 10")
}


###################################################
### code chunk number 35: 22_basic_course_on_R_programming1.Rnw:753-754 (eval = FALSE)
###################################################
## x > 60 && x < 70


###################################################
### code chunk number 36: 22_basic_course_on_R_programming1.Rnw:758-759 (eval = FALSE)
###################################################
## x < 60 || x > 70


###################################################
### code chunk number 37: 22_basic_course_on_R_programming1.Rnw:764-771
###################################################
x <- 3
y <- 5
if(x < 10 && y < 10) {
  print("Both less than 10")
} else {
  print("Not both less than 10")
}


###################################################
### code chunk number 38: 22_basic_course_on_R_programming1.Rnw:776-779
###################################################
!TRUE
!FALSE
!(5 < 6)


###################################################
### code chunk number 39: 22_basic_course_on_R_programming1.Rnw:786-787 (eval = FALSE)
###################################################
## ?Syntax


###################################################
### code chunk number 40: 22_basic_course_on_R_programming1.Rnw:796-797
###################################################
c(TRUE, FALSE, TRUE) && c(TRUE, TRUE, FALSE)


###################################################
### code chunk number 41: 22_basic_course_on_R_programming1.Rnw:814-815
###################################################
c(TRUE, FALSE, TRUE) & c(TRUE, TRUE, FALSE)


###################################################
### code chunk number 42: 22_basic_course_on_R_programming1.Rnw:823-825
###################################################
systolic <- c(110, 119, 111, 113, 128)
diastolic <- c(70, 74, 88, 74, 83)


###################################################
### code chunk number 43: 22_basic_course_on_R_programming1.Rnw:831-835
###################################################
classification <- ifelse(systolic < 120 & diastolic < 80, 
                         yes = "Normal",
                         no = "Abnormal")
classification


###################################################
### code chunk number 44: 22_basic_course_on_R_programming1.Rnw:841-846
###################################################
bpData <- data.frame(
  name = c("Joe", "Katy", "Bill", "Kim", "Mark"),
  systolic = c(110, 119, 111, 113, 128),
  diastolic = c(70, 74, 88, 74, 83))
bpData


###################################################
### code chunk number 45: 22_basic_course_on_R_programming1.Rnw:849-850
###################################################
rm(systolic, diastolic)


###################################################
### code chunk number 46: 22_basic_course_on_R_programming1.Rnw:853-856
###################################################
attach(bpData)
bpData[systolic < 120 & diastolic < 80, ]
detach(bpData)


###################################################
### code chunk number 47: 22_basic_course_on_R_programming1.Rnw:876-879
###################################################
meanOfAll <- function(...) {
  return(mean(c(...)))
}


###################################################
### code chunk number 48: 22_basic_course_on_R_programming1.Rnw:884-885 (eval = FALSE)
###################################################
## meanOfAll(usSales, europeSales, otherSales)


###################################################
### code chunk number 49: 22_basic_course_on_R_programming1.Rnw:900-901 (eval = FALSE)
###################################################
## source()       # Read R commands from a text file.


###################################################
### code chunk number 50: 22_basic_course_on_R_programming1.Rnw:915-916 (eval = FALSE)
###################################################
## source("C:/myRcode.txt")


###################################################
### code chunk number 51: 22_basic_course_on_R_programming1.Rnw:919-920
###################################################
source('C:/Users/emcclel3/Dropbox/MSU/MTH2520/NelsMTH2520_stuff/class_notes_mth2520/myRcode.txt')


