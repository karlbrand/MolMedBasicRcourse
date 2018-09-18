## ---- eval=FALSE---------------------------------------------------------
## install.packages("ggplot2")
## library(ggplot2)

## ---- echo=FALSE---------------------------------------------------------
library(ggplot2)

## ---- eval=FALSE---------------------------------------------------------
## ?Indometh

## ---- echo=F-------------------------------------------------------------
head(Indometh)

## ---- eval=FALSE---------------------------------------------------------
## ?ldeaths

## ---- echo=F-------------------------------------------------------------
ldeaths

## ---- echo=F-------------------------------------------------------------
deaths <- c(fdeaths,mdeaths)
sex <- rep(c("female","male"),each=72)
years <- rep(c("1974","1975","1976","1977","1978","1979"),each=12)
months <- rep(c("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"),6)
data <- data.frame("Deaths"=deaths,"Year"=years,"Month"=months,"Sex"=sex)
head(data)

## ---- fig.align="center"-------------------------------------------------
ggplot(data, aes(x=Month, y=Deaths, color=Sex)) + geom_point()

## ---- fig.align="center", eval=F-----------------------------------------
## ggplot(data) + geom_point(aes(x=Month, y=Deaths, color=Sex))

## ---- fig.align="center"-------------------------------------------------
ggplot(data, aes(x=Month, y=Deaths, color=Sex)) + geom_point(size=3)

## ---- fig.align="center"-------------------------------------------------
#Basic graphics:
plot(ToothGrowth$len)

## ---- fig.align="center"-------------------------------------------------
p <- ggplot(ToothGrowth)
p + geom_point(aes(x=as.numeric(rownames(ToothGrowth)), y=len), size=2)

## ------------------------------------------------------------------------
ToothGrowth$index <- as.numeric(rownames(ToothGrowth))

## ---- fig.align="center"-------------------------------------------------
p <- ggplot(ToothGrowth)

## ---- fig.align="center"-------------------------------------------------
#Basic graphics:
plot(ToothGrowth$len, type = "l")

p + geom_line(aes(x=index, y=len))

## ---- fig.align="center"-------------------------------------------------
#Basic graphics:
barplot(table(ToothGrowth$dose))

p + geom_bar(aes(x=dose))

## ---- fig.align="center"-------------------------------------------------
p + geom_bar(aes(x=as.factor(dose)))

## ---- fig.align="center"-------------------------------------------------
#Basic graphics:
hist(ToothGrowth$len,breaks = 50)
p + geom_histogram(aes(x=len), binwidth = 0.5)

## ---- fig.align="center"-------------------------------------------------
#Basic graphics:
boxplot(ToothGrowth$len~ToothGrowth$supp)

## ---- fig.align="center"-------------------------------------------------
p + geom_boxplot(aes(x=supp,y=len))

## ---- eval=F-------------------------------------------------------------
## p + geom_errorbar(aes(x=supp, ymin=..., ymax=...),width=0.5)

## ---- echo=F, fig.align="center"-----------------------------------------
p + stat_boxplot(aes(x=supp,y=len), geom="errorbar", width=0.5)

## ---- fig.align="center"-------------------------------------------------
p + stat_boxplot(aes(x=supp,y=len), geom="errorbar", width=0.5) + 
	geom_boxplot(aes(x=supp,y=len))

## ---- eval=F-------------------------------------------------------------
## p <- ggplot(ToothGrowth, aes(x=supp,y=len))
## p + stat_boxplot(geom="errorbar", width=0.5) + geom_boxplot()

## ---- fig.align="center"-------------------------------------------------
p <- ggplot(ToothGrowth)

p + geom_tile(aes(x = supp, y = as.factor(dose), fill = len), color="black")


## ---- fig.align="center"-------------------------------------------------
par(mfrow = c(1, 3))

low <- ToothGrowth[which(ToothGrowth$dose==0.5),]
med <- ToothGrowth[which(ToothGrowth$dose==1),]
high <- ToothGrowth[which(ToothGrowth$dose==2),]

boxplot(low$len~low$supp, main = "Low dose", xlab = "Supplement Type")
boxplot(med$len~med$supp, main = "Medium dose", xlab = "Supplement Type")
boxplot(high$len~high$supp, main = "High dose", xlab = "Supplement Type")

## ---- fig.align="center"-------------------------------------------------
ggplot(ToothGrowth, aes(x=supp,y=len)) + 
	stat_boxplot(geom="errorbar", width=0.5) + 
	geom_boxplot() + geom_point(color="red") + 
	facet_grid(. ~ as.factor(dose))

## ---- fig.align="center"-------------------------------------------------
ggplot(ToothGrowth, aes(x=len)) + 
	geom_histogram(bins = 5) + 
	facet_grid(dose ~ as.factor(supp))

## ---- fig.align="center"-------------------------------------------------
ggplot(ToothGrowth, aes(x=index, y=as.factor(dose), color=len)) + 
	geom_point() + 
	scale_x_continuous(limits=c(1,100), trans = "log2", 
		breaks=c(2,4,8,16,32,64), 
		label=c("two","four","eight","sixteen","thirtytwo","sixtyfour")) + 
	scale_y_discrete(label=c("low","medium","high")) + 
	scale_color_gradient2(limits=c(0,40), low = "green", mid = "black", high = "red", 
		midpoint = 20)

## ---- fig.align="center"-------------------------------------------------
p <- ggplot(ToothGrowth)
p + geom_point(aes(x = index, y = len, color = supp, size = dose)) + theme_light()

## ---- fig.align="center"-------------------------------------------------
p <- ggplot(ToothGrowth)
p + geom_point(aes(x = index, y = len, color = supp, size = dose)) + 
	theme(text = element_text(family = "Bookman", colour = "#6f898e"), 
	  line = element_line(color = "#163f47"), 
	  rect = element_rect(fill = "#163f47", color = "#163f47"),
		axis.text.x = element_text(color="black"), 
		axis.text.y = element_text(color="white"), 
	  axis.ticks = element_line(color = "#6f898e"), 
	  axis.line = element_line(color = "#163f47", linetype = 1),
		legend.background = element_blank(), 
		legend.key = element_blank(), 
		panel.background = element_rect(fill = "#215c68", colour = "#163f47"), 
		panel.border = element_blank(), 
	  panel.grid = element_line(color = "#163f47"), 
	  panel.grid.major = element_line(color = "#163f47"), 
	  panel.grid.minor = element_line(color = "#163f47"), 
	  plot.background = element_rect(fill = NULL, colour = NA, linetype = 0)
	) + 
	labs(title="Toothgrowth", 
		subtitle = "Orange juice or Vitamin C?", x="Index", y="Toothlength", 
		size="Dose", color="Supplement") +
	scale_color_manual(label=c("Orange juice","Vitamin C"), 
		values = c("VC"="green","OJ"="orange"))

## ---- eval=F-------------------------------------------------------------
## p <- ggplot(ToothGrowth)
## 
## myplot <- p + geom_point(aes(x = index, y = len, color = supp, size = dose))
## 
## ggsave("my_plot.pdf",myplot)

