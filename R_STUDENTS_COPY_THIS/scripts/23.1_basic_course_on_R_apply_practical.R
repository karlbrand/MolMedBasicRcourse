##Part D: Using the apply family of functions

#1. Use apply() to turn the following code into something shorter:

#This function determines if a number is a prime number
isPrime <- function(num){
  if (num == 2) {
    return(TRUE)
  }
  if(num > 1) {
    for(i in 2:(num-1)) {
      if ((num %% i) == 0) {
        return(FALSE)
      }
    }
  } else {
    return(FALSE)
  }
  
  return(TRUE)
}

#The matrix with numbers to be checked:
mat <- matrix(1:100, nrow=10)
#The matrix with answers (TRUE/FALSE)
answer <- matrix(rep(x = TRUE,100), nrow=10)

for (x in 1:10) {
  for (y in 1:10) {
    answer[x,y] <- isPrime(mat[x,y])
  }
}

#The resulting prime numbers:
mat[answer]

#2. Answer question 2.3 again using the lapply() function.

#3. Answer question 2.3 again using the sapply() function. What is the class of the output?

#4. Read in the diamonds.txt dataset using read.table, make sure the headers are correctly loaded. Calculate the average price of diamonds by color and clarity using the tapply function.
