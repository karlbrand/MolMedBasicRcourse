# Practical: Object Oriented Programming and Performance Enhancement
# 
# Part A: Object Oriented Programming
# 
# 1. The geometric mean can be defined as the nth root 
# of the product of n positive numbers x_1, x_2, ..., x_n.
# 
# Write a function gm() that takes a vector argument
# x containing positive numbers and returns their geometric mean.
# Your function should include a stop() statement that returns an
# error message if any of the values in x are nonpositive. Hint: The
# function prod() can be used to compute the product of the values
# in x.
# 
# 2. Determine the class of your output by running the following:
# class(gm(1:4))
# 
# 3. Modify your geometric mean function, using class(), so that the return value has the 
# class "geometric".  
# 
# 4.  Verify the new class of your output is correct by running the following
# class(gm(1:4))
# 
# Part B: Performance Enhancement:  Speed
# 
# 1. This problem concerns efficiency and timing code.
# 
# Using system.time(expression),
# explore how time changes with size of the inputs (e.g. use sizes 1, 10, 100, 1000, 10000, and 100000). Plot time versus input size and see if algorithm
# is linear, polynomial, or exponential.
# 
# Move expressions within loops that are invariant to compute just once and assigned to a variable.
# Avoid concatenating vectors by pre-allocating and assigning to the ith element.
# i.e. 
# 
# x <- c(); for(i in seq(along = y)) x = c(x, g(y[i]))
# 
# What are your conclusions?
# 
