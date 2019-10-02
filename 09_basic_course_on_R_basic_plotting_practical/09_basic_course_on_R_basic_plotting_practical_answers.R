## ------------------------------------------------------------------------
BOD

## ------------------------------------------------------------------------
str(BOD)

## ------------------------------------------------------------------------
names(BOD)

## ----out.width="3.2in"---------------------------------------------------
plot(BOD$Time, BOD$demand, type = "l", lty = 4, 
     col = "pink", ylim = c(0, 25))
lines(BOD$Time, 1.1 * BOD$demand, lwd = 2, col = "blue")

## ----eval=FALSE----------------------------------------------------------
## chickwts

## ------------------------------------------------------------------------
str(chickwts)

## ------------------------------------------------------------------------
names(chickwts)

## ------------------------------------------------------------------------
levels(chickwts$feed)

## ----out.width="3.2in"---------------------------------------------------
par(mfrow = c(2, 2))
barplot(table(chickwts$feed), 
        col = c("red", "orange", "yellow", 
                "green", "blue", "purple"))
barplot(table(chickwts$feed)/length(chickwts$feed), 
        col = c("red", "orange", "yellow", 
                "green", "blue", "purple"))
boxplot(chickwts$weight~chickwts$feed, 
        col = c("red", "orange", "yellow", 
                "green", "blue", "purple"))
boxplot(chickwts$weight~chickwts$feed, 
        col = c("red", "orange", "yellow", 
                "green", "blue", "purple"),
        horizontal = TRUE)

## ----eval=FALSE----------------------------------------------------------
## Puromycin

## ----out.width="3.2in"---------------------------------------------------
plot(Puromycin$conc, Puromycin$rate)

## ----out.width="3.2in"---------------------------------------------------
plot(log(Puromycin$conc), Puromycin$rate)

## ----out.width="3.2in"---------------------------------------------------
plot(log(Puromycin$conc), Puromycin$rate, col = Puromycin$state)

## ----out.width="3.2in"---------------------------------------------------
plot(log(Puromycin$conc), Puromycin$rate, col = Puromycin$state, 
     xlab = "Concentration", ylab = "Rate", main = "Puromycin")

## ----out.width="3.2in"---------------------------------------------------
plot(log(Puromycin$conc), Puromycin$rate, col = Puromycin$state, 
     xlab = "Concentration", ylab = "Rate", main = "Puromycin")
legend("topleft",c("Treated", "Untreated"), col = 1:2, pch = 1)

## ------------------------------------------------------------------------
pdf("puromycin.pdf",width = 7, height = 7)
boxplot(Puromycin$rate~Puromycin$state)
dev.off()

## ----out.width="3.2in"---------------------------------------------------
hist(Puromycin$conc)

## ----out.width="3.2in"---------------------------------------------------
hist(Puromycin$conc, breaks = seq(0, 1.2, .10))

## ----out.width="3.2in"---------------------------------------------------
par(mfrow = c(1, 2))
hist(Puromycin$conc, ylim = c(0, 12))
hist(Puromycin$conc, breaks = seq(0, 1.2, .10), ylim = c(0, 12))

