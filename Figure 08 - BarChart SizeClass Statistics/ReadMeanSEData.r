# This is an R script to read in the data written from the Matlab script FigXIntSizeClasses.m to file chlpigdata.csv
#
# Need the libraries reshape and ggplot2
library(reshape)
library(ggplot2)

# Clean up if needed
rm(list=ls())

# Read in the file that Matlab wrote out (CSV). chlpigdata.csv is actual values
dat = read.csv('meanphyto-werror.csv',header=T)
pig = read.csv('pigmeanplussem.csv',header=T)

ggplot() + geom_bar(data=pig, aes(y = mnval, x = Zone), stat="identity", fill = I("grey50")) + theme_bw() + facet_grid( ~ PSC) + geom_errorbar(data=pig, aes(x=Zone, ymin=mnval-sem,ymax=mnval+sem))

pico = dat[dat$PSC=="pico",]
nano = dat[dat$PSC=="nano",]
micro = dat[dat$PSC=="micro",]
interaction.plot(pico$year,pico$zone,pico$mn)
interaction.plot(pico$zone,pico$year,pico$mn)


summary(aov(mn ~ year + zone + PSC + year*zone + PSC*zone + PSC*year, data=dat))
            Df Sum Sq Mean Sq F value   Pr(>F)    
year         1   13.1   13.07   1.586 0.243379    
zone         1   57.0   56.96   6.914 0.030204 *  
PSC          2  487.9  243.97  29.612 0.000201 ***
year:zone    1    2.9    2.94   0.357 0.566697    
zone:PSC     2  108.0   54.01   6.555 0.020625 *  
year:PSC     2    6.0    3.00   0.364 0.705870    
Residuals    8   65.9    8.24                     
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1