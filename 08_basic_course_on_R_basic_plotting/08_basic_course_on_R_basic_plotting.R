## ------------------------------------------------------------------------
data(ToothGrowth)
str(ToothGrowth)

## ----out.width="3.2in"---------------------------------------------------
plot(ToothGrowth$len)

## ----out.width="3.2in"---------------------------------------------------
plot(ToothGrowth$dose, ToothGrowth$len)

## ----out.width="3.2in"---------------------------------------------------
plot(ToothGrowth$dose, ToothGrowth$len, xlab = "Dose", 
     ylab = "Tooth Length")

## ----out.width="3.2in"---------------------------------------------------
plot(ToothGrowth$dose, ToothGrowth$len, xlab = "Dose", 
     ylab = "Tooth Length", main = "Guinea Pig Tooth Growth by Dosage")

## ----out.width="3.2in"---------------------------------------------------
plot(ToothGrowth$dose, ToothGrowth$len, xlab = "Dose", 
     ylab = "Tooth Length", main = "Guinea Pig Tooth Growth by Dosage",
     col = ToothGrowth$supp, pch = as.numeric(ToothGrowth$supp))

## ----out.width="3.2in"---------------------------------------------------
plot(ToothGrowth$dose, ToothGrowth$len, xlab = "Dose", 
     ylab = "Tooth Length", main = "Guinea Pig Tooth Growth by Dosage",
     col = ToothGrowth$supp, pch = as.numeric(ToothGrowth$supp))
legend(1.5, 15, c("OJ", "VC"), col = 1:2, 
       pch = 1:2)

## ----out.width="3.2in"---------------------------------------------------
plot(ToothGrowth$dose, ToothGrowth$len, xlab = "Dose", 
     ylab = "Tooth Length", main = "Guinea Pig Tooth Growth by Dosage",
     col = ToothGrowth$supp, pch = as.numeric(ToothGrowth$supp), 
     cex = 2)
legend(1.5, 15, c("OJ", "VC"), col = 1:2, 
       pch = as.numeric(ToothGrowth$supp), cex=2)

## ----out.width="3.2in"---------------------------------------------------
plot(ToothGrowth$len, type = "l") # note type is the letter l for "line"

## ----out.width="3.2in"---------------------------------------------------
plot(ToothGrowth$len, type = "b") # note type is the letter b for "both"

## ----out.width="3.2in"---------------------------------------------------
plot(ToothGrowth$len, type = "l")
lines(ToothGrowth$len + 2)

## ----out.width="3.2in"---------------------------------------------------
plot(ToothGrowth$len, type = "l")
lines(ToothGrowth$len + 2, lty = 3, lwd = 3, col = "darkgreen")

## ----out.width="3.2in"---------------------------------------------------
plot(ToothGrowth$dose)

## ------------------------------------------------------------------------
table(ToothGrowth$dose)

## ----out.width="3.2in"---------------------------------------------------
barplot(table(ToothGrowth$dose))

## ------------------------------------------------------------------------
props <- table(ToothGrowth$dose)/nrow(ToothGrowth)
props

## ----out.width="3.2in"---------------------------------------------------
barplot(props)

## ----out.width="3.2in"---------------------------------------------------
barplot(props, ylim = c(0, .4))

## ----out.width="3.2in"---------------------------------------------------
barplot(props, ylim = c(0, .4),
        width = .2, col = c("blue", "white", "red"))

## ----out.width="3.2in"---------------------------------------------------
barplot(props, xlim = c(0, .4),
        width = .2, col = c("blue", "white", "red"),
        horiz = TRUE)

## ----out.width="3.2in"---------------------------------------------------
hist(ToothGrowth$len)

## ----out.width="3.2in"---------------------------------------------------
hist(ToothGrowth$len, freq = FALSE)

## ----out.width="3.2in"---------------------------------------------------
hist(ToothGrowth$len, freq = FALSE, breaks = seq(0, 35, 2))

## ----out.width="3.2in"---------------------------------------------------
hist(ToothGrowth$len, freq = FALSE, breaks = 25)

## ----out.width="3.2in"---------------------------------------------------
hist(ToothGrowth$len, freq = FALSE, breaks = seq(0, 35, 2), 
     main = "Histogram of Tooth Growth", xlab = "Tooth Length", 
     ylim = c(0, .07), col = "orange")

## ----out.width="3.2in"---------------------------------------------------
boxplot(ToothGrowth$len)

## ----out.width="3.2in"---------------------------------------------------
boxplot(ToothGrowth$len~ToothGrowth$supp)

## ----out.width="3.2in"---------------------------------------------------
boxplot(ToothGrowth$len~ToothGrowth$supp, 
        col = c("darkgreen", "purple"),
        ylab = "Supplement Type", xlab = "Tooth Length",
        ylim = c(0, 40), horizontal = TRUE)

## ----out.width="3.2in"---------------------------------------------------
par(mfrow = c(1, 2))
boxplot(ToothGrowth$len~ToothGrowth$supp, main = "Boxplot",
        xlab = "Supplement Type")
hist(ToothGrowth$len, main = "Histogram", xlab = "Tooth Length")

## ----eval=TRUE, echo=TRUE------------------------------------------------
# note: run getwd() to see the working directory - 
# that is the directory to which files will be written
pdf("plot1.pdf", width = 6, height = 9)
boxplot(ToothGrowth$len~ToothGrowth$supp, 
        col = c("darkgreen", "purple"),
        xlab = "Supplement Type", ylab = "Tooth Length",
        ylim = c(0, 40), horizontal = TRUE)
dev.off()
pdf("plot2.pdf", width = 4, height = 8)
boxplot(ToothGrowth$len~ToothGrowth$supp, 
        col = c("darkgreen", "purple"),
        xlab = "Supplement Type", ylab = "Tooth Length",
        ylim = c(0, 40), horizontal = TRUE)
dev.off()

## ----eval=TRUE, echo=TRUE------------------------------------------------
png("plot1.png", units = "in", res = 300,
    width = 6, height = 9)
boxplot(ToothGrowth$len~ToothGrowth$supp, 
        col = c("darkgreen", "purple"),
        xlab = "Supplement Type", ylab = "Tooth Length",
        ylim = c(0, 40), horizontal = TRUE)
dev.off()

