library(scales)

setwd('C:\\Users\\Msun\\@WPI\\CS-480x\\02-DataVis-5Ways\\3-R-ggplot2')
cars <- read.csv('cars-r.csv')

# Size
symbols(x=cars$Weight,
        y=cars$MPG,
        circles=cars$Weight,
        inches=.06,
        ann=F,
        bg=ifelse(cars$Manufacturer=='bmw', alpha('red',.5),
                  ifelse(cars$Manufacturer=='ford', alpha('#c1b200',.5),
                  ifelse(cars$Manufacturer=='honda', alpha('lightgreen',.5),
                  ifelse(cars$Manufacturer=='mercedes', alpha('blue',.5),
                         alpha('purple',.5))))),
        fg=NULL,
        xlim=c(1600,5000),ylim=c(8,45),
        xaxt='n')
xTx <- c(2000,3000,4000,5000)
xNums <- c("2000","3000","4000","5000")
axis(side = 1, 
     at = xTx, 
     labels = xNums,
     tck=-.05)
title(main='R plot',xlab='Weight',ylab='MPG')

