### Code chunk number 1
#Run this only if you cannot load the ggplot2 with "library()":
#install.packages("ggplot2")

### Code chunk number 2
library(ggplot2)

### Code chunk number 3
?Indometh

### Code chunk number 4
head(Indometh)

### Code chunk number 5
?ldeaths

### Code chunk number 6
ldeaths

### Code chunk number 7
deaths <- c(fdeaths,mdeaths)
sex <- rep(c("female","male"),each=72)
years <- rep(c("1974","1975","1976","1977","1978","1979"),each=12)
months <- rep(c("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"),6)
data <- data.frame("Deaths"=deaths,"Year"=years,"Month"=months,"Sex"=sex)
head(data)

### Code chunk number 8
ggplot(data, aes(x=Month, y=Deaths, color=Sex)) + geom_point()

### Code chunk number 9
ggplot(data) + geom_point(aes(x=Month, y=Deaths, color=Sex))

### Code chunk number 10
ggplot(data, aes(x=Month, y=Deaths, color=Sex)) + geom_point(size=3)

### Code chunk number 11
plot(ToothGrowth$len)

### Code chunk number 12
p <- ggplot(ToothGrowth)
p + geom_point(aes(x=as.numeric(rownames(ToothGrowth)), y=len), size=2)

### Code chunk number 13
ToothGrowth$index <- as.numeric(rownames(ToothGrowth))

### Code chunk number 14
p <- ggplot(ToothGrowth)

### Code chunk number 15
plot(ToothGrowth$len, type = "l")

p + geom_line(aes(x=index, y=len))

### Code chunk number 16
barplot(table(ToothGrowth$dose))

p + geom_bar(aes(x=dose))

### Code chunk number 17
p + geom_bar(aes(x=as.factor(dose)))

### Code chunk number 18
hist(ToothGrowth$len,breaks = 50)
p + geom_histogram(aes(x=len), binwidth = 0.5)

### Code chunk number 19
boxplot(ToothGrowth$len~ToothGrowth$supp)

### Code chunk number 20
p + geom_boxplot(aes(x=supp,y=len))

### Code chunk number 21
#!This does not work:
p + geom_errorbar(aes(x=supp, ymin=..., ymax=...),width=0.5)

### Code chunk number 22
p + stat_boxplot(aes(x=supp,y=len), geom="errorbar", width=0.5)

### Code chunk number 23
p + stat_boxplot(aes(x=supp,y=len), geom="errorbar", width=0.5) + 
	geom_boxplot(aes(x=supp,y=len))

### Code chunk number 24
p <- ggplot(ToothGrowth, aes(x=supp,y=len))
p + stat_boxplot(geom="errorbar", width=0.5) + geom_boxplot()

### Code chunk number 25
p <- ggplot(ToothGrowth)

p + geom_tile(aes(x = supp, y = as.factor(dose), fill = len), color="black")


### Code chunk number 26
par(mfrow = c(1, 3))

low <- ToothGrowth[which(ToothGrowth$dose==0.5),]
med <- ToothGrowth[which(ToothGrowth$dose==1),]
high <- ToothGrowth[which(ToothGrowth$dose==2),]

boxplot(low$len~low$supp, main = "Low dose", xlab = "Supplement Type")
boxplot(med$len~med$supp, main = "Medium dose", xlab = "Supplement Type")
boxplot(high$len~high$supp, main = "High dose", xlab = "Supplement Type")

### Code chunk number 27
ggplot(ToothGrowth, aes(x=supp,y=len)) + 
	stat_boxplot(geom="errorbar", width=0.5) + 
	geom_boxplot() + geom_point(color="red") + 
	facet_grid(. ~ as.factor(dose))

### Code chunk number 28
ggplot(ToothGrowth, aes(x=len)) + 
	geom_histogram(bins = 5) + 
	facet_grid(dose ~ as.factor(supp))

### Code chunk number 29
ggplot(ToothGrowth, aes(x=index, y=as.factor(dose), color=len)) + 
	geom_point() + 
	scale_x_continuous(limits=c(1,100), trans = "log2", 
		breaks=c(2,4,8,16,32,64), 
		label=c("two","four","eight","sixteen","thirtytwo","sixtyfour")) + 
	scale_y_discrete(label=c("low","medium","high")) + 
	scale_color_gradient2(limits=c(0,40), low = "green", mid = "black", high = "red", 
		midpoint = 20)

### Code chunk number 30
p <- ggplot(ToothGrowth)
p + geom_point(aes(x = index, y = len, color = supp, size = dose)) + theme_light()

### Code chunk number 31
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

### Code chunk number 32
p <- ggplot(ToothGrowth)

myplot <- p + geom_point(aes(x = index, y = len, color = supp, size = dose))

ggsave("my_plot.pdf",myplot)
