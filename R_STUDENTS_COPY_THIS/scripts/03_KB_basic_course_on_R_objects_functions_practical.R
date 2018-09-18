## 1.1 Create the following objects:

## (a)  A vector of letters called lettervec, of class character, 
##      from a to d, using the function c()

## (b) A matrix of numbers called numbersmat, using the function 
##     matrix(), that looks like this when printed:
# 5 9  13
# 6 10 14
# 7 11 15
# 8 12 16

## (c) A vector of class factor called pets, that looks approximately 
##     like this when printed: cat dog NA cat

## 1.2 Create a list called {myFirstList} that has elements {lettervec}, 
##    {numbersmat}, and {pets} (from Q1.1 above).

## 1.3 Create a data frame called myDF from the data generated in 
##     Q1.1 with the column names: (a) lettervec and (b) pets.

## 1.4 Use R as a calculator to calculate the following values:
##     17 raised to the 4th, 45 minus (2 times 3) , (45 minus 2) times 3

## 1.5 Use the operators \%\% and \%/\% to do the following:
  
## (a) Calculate the remainder after dividing 29,079 into 184,277,809.
## (b) How many times does 29,079 go into 184,277,809 (i.e. what's the 
##     integer divide?

## 1.6 Do the last calculation from Q1.4 in another way, like this:
a <- 45
b <- 2
c <- 3
d <- (a - b) * c 

## Now check what a, b, c, and d are. 
## You can just type the variable name (e.g. a) and hit 
## `Control' then `Return' or use the command print(a).

## 1.7 Do the following to practice saving and opening files in R.
  
## (a) Look at the variables (or other objects) that are stored in 
##     your Workspace by typing either objects() or ls().
## (b) Check your working directory by typing getwd(). Now change 
##     it to a different directory - preferably your own flash drive - 
##     by using the function setwd(), for example: 
setwd("C:/Users/Elizabeth/My Documents/R Course")
## (c) Use the function ``save.image()'' to save your R session to a 
##     file called {YourLastName\_practical1.RData} (replace YourLastName 
##     with your last name). Note that this will save a .RData file that 
##     contains only those objects you see when you run {ls()}. It does 
##     not save any code you typed into the console or into the source pane.
## (d) Use the RStudio ``File'' drop-down menu to save your R source code 
##     to a file called YourLastName_practical1.R (replace YourLastName 
##     with your last name). Note that this will only save the text you've 
##     typed into the source pane. It does not save any objects or anything 
##     typed into or ran through the console.
## (e) Use the function ``save()'' to save only the objects {myFirstList} 
##     and {pets} to a file called YourLastName_objects.RData (replace 
##     YourLastName with your last name).
## (f) Now close out RStudio entirely, select ``Save'' or ``Yes'' in any 
##     dialog boxes that pop up, and then reopen RStudio. Is your source 
##     code still there? 
## (g) Run ls(); are your objects still there? 
## (h) You can change these kinds of options by going to ``Tools - Global 
##     Options''. Go there and deselect ``Restore .RData into workspace at 
##     startup''. Then close RStudio and choose to save the .RData file.  
## (i) Reopen RStudio; your environment should be empty. Load your objects 
##     back in using load() (e.g. load("Ribble_practical1.RData")) and then 
##     run ls() again. Do you see your objects now? 
## (j) Check what the working directory is by again running getwd() 
##     - has it been reset? 
      