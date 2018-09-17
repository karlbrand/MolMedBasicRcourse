#################################
## Entering and Importing Data ##
#################################

######                                 #######
## 1.1 Use R to do the following exercises. ##
######                                 #######

## 1.1.1 Enter the following into a data structure with the name color: 
    #   purple
    #   yellow
    #   red
    #   brown
    #   green
    #   purple
    #   red
    #   purple

## 1.1.2 Display the 2nd element of color. 
  
## 1.1.3 Enter the following into a data structure with then name weight:
    
    #   23
    #   21
    #   18
    #   26
    #   25
    #   22
    #   26
    #   19
      
## 1.1.4 What are the lengths of color and weight? Use a function to answer this. 
  
## 1.1.5 Join color and weight together using cbind() and assign it to the object micecbind. 
  
## 1.1.6 What is the data structure of micecbind? What are the dimensions? Are the weights still numbers (num) or were they converted to characters (chr)?
  
## 1.1.7 Now join color and weight together using data.frame() with argument stringsAsFactors = FALSE and assign it to the object micedf.

## 1.1.8 What is the data structure of micedf? What are the dimensions? Are the weights still numbers (num) or were they converted to characters (chr)?

## 1.1.9 Display only the 3rd row of mice.
  
## 1.1.10 Display only the 2nd column ("weight") of mice. Do so in two different ways.
  
## 1.1.11 Display the dimensions of micedf. 
  
## 1.1.12 Assign the following strings to the row names of micedf: 
    
    #   mouse1
    #   mouse2
    #   mouse3
    #   mouse4
    #   mouse5
    #   mouse6
    #   mouse7
    #   mouse8
    
   ##  Hint: try using paste.
  
## 1.1.13 Create a list containing three elements and assign it to mylist: 
    
    #   micedf
    #   A data frame of micedf with a new column called double that is 2 times the second column of micedf (weight). (Did you get an error? Make sure that the second column is numeric and if it isn't, change it!)
    #   The names of micedf.
      
## 1.1.14 Assign these names to mylist: first, second, third.
  
## 1.1.15 Display mylist. What does it look like? 

## 1.1.16 Display only the second element of mylist. Do so in two different ways. 
  
## 1.1.17 Write micedf to a file called "micedf1.csv". 
  
## 1.1.18 Open "micedf1.csv" in Excel and describe what you see. Repeat the step above but do not include row names and call the file "micedf2.csv". How is the output different from "micedf1.csv"?

## 1.1.19 Now read in "micedf1.csv" and "micedf2.csv" into R in two new objects (newmice1 and newmice2, respectively). Describe any differences between the two objects. What are the dimensions of each object?

## 1.1.20 Read in "micedf1.csv" into R (assign to object newmice3). Use the argument row.names to indicate that the first column should be row names and do not allow strings to be turned into factors. Display the object and the structure of the object and describe how it is different from newmice1 and micedf. What are the dimensions of newmice3?

######                                                        ######
## 1.2 Use R to do the following exercises on the Puromycin data. ##
######                                                        ######

## 1.2.1 Load the Puromycin data using the data() function.
  
## 1.2.2 What is the data structure of Puromycin? What are the dimensions (use a function other than str)?
  
## 1.2.3 What are the names of Puromycin? Use a function other than str.
  
## 1.2.4 What are the levels of the state variable? Use a function other than str.
  
## 1.2.5 Display the rate for all concentrations less than 0.10 in the treated group.
  
## 1.2.6 What are the row indices for the concentrations of 0.22? 
  
