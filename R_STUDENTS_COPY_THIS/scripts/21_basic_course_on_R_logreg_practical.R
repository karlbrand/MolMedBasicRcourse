## ----echo=FALSE----------------------------------------------------------
babydata <- read.csv("R_data_January2015.csv",header=T,row.names=1)
attach(babydata)

## ------------------------------------------------------------------------
levels(Status)

## ------------------------------------------------------------------------
table(Status)
newstatus <- factor(3-as.numeric(Status), 
                    labels=c("normal brain development",
                             "intellectual disability"))

## ------------------------------------------------------------------------
levels(newstatus)
table(newstatus)

