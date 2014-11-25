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
