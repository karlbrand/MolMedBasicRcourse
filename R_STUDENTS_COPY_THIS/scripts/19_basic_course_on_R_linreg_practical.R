## Basic Course on R:
## Linear Regression
## (Practical)

## 1. Read in the data R_data_January2015.csv with a header and row names from the first column. 
## Assign it to the object {\tt babydata} and allow strings be converted to factors. 
## Attach the data to the environment.

## 2. We previously saw that there was an association between vitaminB12 and homocysteine. 
## We will now quantify the magnitude of this relationship and see if we can explain the variabiliy of homocysteine with values of vitaminB12. 
## Answer the following questions:
  
  ## 2(a) First plot the data: a scatterplot to visualize the association (should be linear) and a histogram of the dependent variable to check for 
  ## normality (normal errors are required - checking the distribution of the dependent variable is good enough for now). 
  ## Do these particular assumptions appear to hold? 

  ## 2(b) You should have noticed that the dependent variable homocysteine is right-skewed. We need to see if a log-transformation of the data is more normally distributed.
  ## Assign the log of homocysteine to loghc and make a histogram of loghc. Check that it is normal by plotting it against a normal distribution (use qqnorm()).
  ## How does it look? More normal? 

  ## 2(c) We'll just assume everything looks good. 
  ## Set up (i.e. write down) the linear regression model for modeling loghc against vitaminB12 and then run it in R. 
  ## Check the assumptions by plotting the residuals (should be no patterns) versus the fitted values and looking at a QQ plot of the residuals (should be straight line). 
  ## Do the assumptions hold?

  ## 2(d) Assuming the assumptions hold (even if they don't), we'll make inference on the slope. 
  ## Is vitaminB12 statistically significant in the model?
  ## What percent variability does it explain in loghc? Write down the model with the estimates. 

  ## 2(e) What is the predicted loghc level for a person with vitaminB12 equal to 650? 
  ## What is this value when unlogged (exponentiated)? 
  ## Does it fall within the original range of values of homocysteine (can you guess what the name of the function is to find the range of a vector?)?

## 3. Now let's consider a framework where we want to use more than one predictor. 
## We want to build a regression model for SAM using vitaminB12, cholesterol, homocysteine and folicacid_erys (folic acid red blood cells). 
## Answer the following questions: 

  ## 3(a) Set up (i.e. write down) the linear regression model and then run it in R. 
  ## Check the assumptions by plotting the residuals versus the fitted values and looking at a QQ plot of the residuals. Do the assumptions hold?

  ## 3(b) Assuming the assumptions hold (even if they don't), we'll make inference on the slopes. 
  ## Are any of the variables statistically significant in the model?
  ## What percent variability do the variables explain in SAM? 
  ## Write down the model with the estimates.

  ## 3(c) What is the predicted SAM level for a person with the following:
  ## vitaminB12 = 650
  ## cholesterol = 17
  ## homocysteine = 16
  ## folicacid_erys = 1340
