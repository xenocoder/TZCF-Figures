# This is an R script to read in the data written from the Matlab script FigXIntSizeClasses.m to file chlpigdata.csv
#
# Need the libraries reshape and ggplot2
library(reshape)
library(ggplot2)

# Read in the file that Matlab wrote out (CSV). chlpigdata.csv is actual values
pig = read.csv('chlpigdata.csv',header=T)

#Change 1,2 to '1-STFZ','2-TZCF' since Matlab only writes numbers
pig$zone[pig$zone==1]='1-STFZ'
pig$zone[pig$zone==2]='2-TZCF'

repig.all = melt(pig[,1:8],id=c('year','zone')) #Reshape to columns only taking chloropigments (e.g. pro, prym, diat, etc)
repig.size = melt(pig[,c(1:2,10:12)],id=c('year','zone')) # Reshape but only pico, nano, micro groups

# Barplot of pico, nano, micro in all areas grouped by year and zone
ggplot() + geom_bar(data=repig.size, aes(y = value, x = zone, fill = variable), stat="identity", position='stack') + theme_bw() + facet_grid( ~ year)

# Barplot of all groups in all areas grouped by year and zone
 ggplot() + geom_bar(data=repig.all, aes(y = value, x = zone, fill = variable), stat="identity", position='stack') + theme_bw() + facet_grid( ~ year)

# Do same thing but as percentage
pigperc = cbind(pig[,1:2],pig[3:8]/rowSums(pig[3:8]))

repigperc.all = melt(pigperc,id=c('year','zone')) #Reshape to columns only taking chloropigments (e.g. pro, prym, diat, etc)

# Barplot of pico, nano, micro in all areas grouped by year and zone
ggplot() + geom_bar(data=repigperc.all, aes(y = value, x = zone, fill = variable), stat="identity", position='stack') + theme_bw() + facet_grid( ~ year)

# Now do the size classes
pigperc = cbind(pig[,1:2],pig[10:12]/rowSums(pig[10:12]))

repigperc.size = melt(pigperc,id=c('year','zone')) #Reshape to columns only taking chloropigments (e.g. pro, prym, diat, etc)

# Barplot of pico, nano, micro in all areas grouped by year and zone
ggplot() + geom_bar(data=repigperc.size, aes(y = value, x = zone, fill = variable), stat="identity", position='stack') + theme_bw() + facet_grid( ~ year)
