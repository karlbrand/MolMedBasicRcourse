## ---- eval=F-------------------------------------------------------------
## # if needed install.packages("ggplot2")
## library(ggplot2)
## data("diamonds")

## ---- eval=F-------------------------------------------------------------
## dim(diamonds)
## str(diamonds)
## help(diamonds)

## ---- eval=F-------------------------------------------------------------
## ggplot() + geom_point(data=diamonds, aes(x=carat, y=price))
## 
## #or
## 
## ggplot(diamonds) + geom_point(aes(x=carat, y=price))
## 
## #or
## 
## ggplot(diamonds, aes(x=carat, y=price)) + geom_point()

## ---- eval=F-------------------------------------------------------------
## ggplot(diamonds, aes(x=carat, y=price)) + geom_point(color="darkblue", alpha=0.1)

## ---- eval=F-------------------------------------------------------------
## #The color of the dots will be overwritten if we specify it statically
## #in the geom_point function itself
## ggplot(diamonds, aes(x=carat, y=price, color=color)) + geom_point(alpha=0.1)

## ---- eval=F-------------------------------------------------------------
## ggplot(diamonds, aes(x=color, fill=clarity)) + geom_bar()

## ---- eval=F-------------------------------------------------------------
## ggplot(diamonds, aes(x=clarity, y=carat)) +
## 	stat_boxplot(geom="errorbar", width=0.5) +
## 	geom_boxplot()

## ---- eval=F-------------------------------------------------------------
## ggplot(diamonds, aes(x=clarity, y=carat)) +
## 	stat_boxplot(geom="errorbar", width=0.5) +
## 	geom_boxplot() +
## 	geom_point(aes(color=price))

## ---- eval=F-------------------------------------------------------------
## ggplot(diamonds, aes(x=price)) +
## 	geom_histogram(binwidth = 100) +
## 	facet_grid(color ~ .)

## ---- eval=F-------------------------------------------------------------
## ggplot(diamonds, aes(x=price)) +
## 	geom_histogram(binwidth = 100) +
## 	facet_grid(color ~ cut)

## ---- eval=F-------------------------------------------------------------
## #Aggregate uses a function (in this case mean) to aggregate all variables
## #in a given data.frame by a list of variables given in "by".
## #Note: excluding columns 2,3,4 since they are factors
## #and therefore don't have means
## mean.price <- aggregate(diamonds[, -c(2,3,4)],
## 	by = list(cutAgg = diamonds$cut, colorAgg = diamonds$color),
## 	mean)
## ggplot(mean.price, aes(x=cutAgg, y=colorAgg, fill=price)) +
## 	geom_tile()

## ---- eval=F-------------------------------------------------------------
## ggplot(mean.price, aes(x=cut, y=color, fill=price)) +
## 	geom_tile() +
## 	labs(title="Average prices")

## ---- eval=F-------------------------------------------------------------
## ggplot(mean.price, aes(x=cut, y=color, fill=price)) +
## 	geom_tile() +
## 	labs(title="Average prices") +
## 	scale_fill_gradient2(low="darkblue", mid="white", high="darkred", midpoint = 4500)

## ---- eval=F-------------------------------------------------------------
## ggplot(mean.price, aes(x=cut, y=color, fill=price)) +
## 	geom_tile() +
## 	labs(title="Average prices") +
## 	scale_fill_gradient2(low="darkblue", mid="white", high="darkred", midpoint = 4500) +
## 	theme_minimal()

