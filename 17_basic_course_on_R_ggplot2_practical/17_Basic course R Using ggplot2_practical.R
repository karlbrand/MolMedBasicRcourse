
#Using ggplot: Practicals
## 1. Load the ggplot2 library (install it if you have to) and the diamonds dataset using data()
  
## 2. Explore the dataset using dim(), str() and help(), which variables are continuous, which variables are discrete? 
##    Is this dataset ready for plotting with ggplot?
  
## 3. Use ggplot to plot a scatterplot of the relationship between the diamonds' carat and their price

## 4. Make all dots darkblue and set the alpha value to 0.1

## 5. Visualize the influence of the color of a diamond on its price by mapping the diamond color to the color aesthetic

## 6. Use a ggplot barplot to visualize diamond clarity depending on color, map diamond color to x and diamond clarity to fill

## 7. Create a boxplot of the carat of a diamond based on its clarity and add whiskers using stat_boxplot

## 8. Add a geom_point layer to the previous plot mapping the diamonds price to the color

## 9. Create a histogram of the price of the diamonds and separate the histograms into facets using diamond color, choose a good binwith or number of bins

## 10. Create a grid of facets of the same histogram by comparing both color and cut

## 11. Use 'aggregate(diamonds, by = list(cut = diamonds$cut, color = diamonds$color), mean)' to calculate the mean of all variables by cut and color. 
##     Create a heatmap of the mean prices by cut and color using geom_tile

## 12. Change the title of the heatmap to "Average prices"

## 13. Change the gradient of the fill scale using 'scale_fill_gradient2'. Have it go from darkblue to white to darkred, set the midpoint to 4500

## 14. Choose and add a theme to the heatmap, or create a theme yourself using the options listed at <http://ggplot2.tidyverse.org/reference/theme.html>
