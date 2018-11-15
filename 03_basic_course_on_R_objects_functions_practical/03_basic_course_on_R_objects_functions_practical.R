## 1.1 FUnction Arguments

## (a)  Look at the help le for the function mean(). How many arguments does function
##      have? What types of vectors are accepted?
## (b) Use the function mean() to calculate the mean of the following values 
##     (note the NA and use named arugment matching):
##      1 2 NA 6
## (c) Do (b) again but rearrange the arguments.
## (d) Do (b) again using positional matching.
## (e) Determine the class of mean() using class().
## (f) Determine the class of mean() using str().
## (g) Determine the class of the value output in part (d) using class().
## (h) Determine the class of the value output in part (d) using str().

## 1.2 Use R as a calculator to calculate the following values:
##     17 raised to the 4th, 45 minus (2 times 3) , (45 minus 2) times 3

## 1.3 Use the operators \%\% and \%/\% to do the following:
  
## (a) Calculate the remainder after dividing 29,079 into 184,277,809.
## (b) How many times does 29,079 go into 184,277,809 (i.e. what's the 
##     integer divide?

## 1.4 Do the last calculation from Q1.4 in another way, like this:
a <- 45
b <- 2
c <- 3
d <- (a - b) * c 

## Now check what a, b, c, and d are. 
## You can just type the variable name (e.g. a) and hit 
## `Control' then `Return' or use the command print(a).

## 1.5 Do the following to practice saving and opening files in R.
  
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
      