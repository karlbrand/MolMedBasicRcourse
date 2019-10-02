## ------------------------------------------------------------------------
color <- c("purple", "yellow", "red", "brown", "green", 
           "purple", "red", "purple")

## ------------------------------------------------------------------------
color[2]

## ------------------------------------------------------------------------
weight <- c(23, 21, 18, 26, 25, 22, 26, 19)

## ------------------------------------------------------------------------
length(color)
length(weight)

## ------------------------------------------------------------------------
micecbind <- cbind(color = color, weight = weight)

## ------------------------------------------------------------------------
micecbind
str(micecbind)
dim(micecbind)

## ------------------------------------------------------------------------
micedf <- data.frame(color = color, weight = weight, stringsAsFactors = FALSE)

## ------------------------------------------------------------------------
micedf
str(micedf)
dim(micedf)

## ------------------------------------------------------------------------
micedf[3, ]

## ----eval=FALSE----------------------------------------------------------
## micedf[, 2]
## micedf[, -1]
## micedf[, "weight"]
## micedf[[2]]
## micedf$weight
## micedf["weight"]

## ------------------------------------------------------------------------
dim(micedf)

## ------------------------------------------------------------------------
row.names(micedf) <- paste("mouse", 1:8, sep = "")

## ------------------------------------------------------------------------
mylist <- list(micedf, 
               data.frame(micedf, double = 2 * micedf$weight), 
               names(micedf))

## ------------------------------------------------------------------------
names(mylist) <- c("first", "second", "third")

## ------------------------------------------------------------------------
mylist

## ----eval=FALSE----------------------------------------------------------
## mylist[[2]] ## extract
## mylist$second ## extract
## mylist[2] ## subset
## mylist[-c(1, 3)] ## subset
## mylist["second"] ## subset

## ------------------------------------------------------------------------
write.csv(micedf, "micedf1.csv")

## ----eval=TRUE,echo=TRUE-------------------------------------------------
write.csv(micedf, "micedf2.csv", row.names = FALSE)

## ------------------------------------------------------------------------
newmice1 <- read.csv("micedf1.csv")
newmice2 <- read.csv("micedf2.csv")
str(newmice1)
str(newmice2)
newmice1
newmice2

## ----eval=TRUE,echo=FALSE------------------------------------------------
newmice3 <- read.csv("micedf1.csv", 
                     row.names = 1, stringsAsFactors = F)

## ----eval=FALSE,echo=TRUE------------------------------------------------
## newmice3 <- read.csv(paste(mydir, "micedf1.csv", sep="/"),
##                      row.names = 1, stringsAsFactors = F)

## ------------------------------------------------------------------------
str(newmice3)
newmice3

## ------------------------------------------------------------------------
data(Puromycin)

## ------------------------------------------------------------------------
str(Puromycin)

## ------------------------------------------------------------------------
names(Puromycin)

## ------------------------------------------------------------------------
levels(Puromycin$state) 

## ------------------------------------------------------------------------
Puromycin[Puromycin$conc < .10 & Puromycin$state == "treated", "rate"]
## or 
Puromycin$rate[Puromycin$conc < .10 & Puromycin$state == "treated"]
## or 
Puromycin[["rate"]][Puromycin$conc < .10 & Puromycin$state == "treated"]

## ------------------------------------------------------------------------
which(Puromycin$conc == 0.22)

