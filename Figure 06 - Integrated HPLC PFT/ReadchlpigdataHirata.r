# This is an R script to read in the data written from the Matlab script FigXIntSizeClasses.m to file chlpigdata.csv
#
# Need the libraries reshape and ggplot2
library(reshape)
library(ggplot2)

# Read in the file that Matlab wrote out (CSV). chlpigdata.csv is actual values
#pig = read.csv('chlpigdatahirata.csv',header=T)
pig = read.csv('chlpigdatahirata-100m.csv',header=T)


#Change 1,2 to '1-STFZ','2-TZCF' since Matlab only writes numbers
pig$zone[pig$zone==1]='1-STFZ'
pig$zone[pig$zone==2]='2-TZCF'

repig.all = melt(pig[,c(1:2,4:10)],id=c('year','zone')) #Reshape to columns only taking chloropigments (e.g. pro, prym, diat, etc)
repig.size = melt(pig[,c(1:2,11:13)],id=c('year','zone')) # Reshape but only pico, nano, micro groups

# Barplot of all groups in all areas grouped by year and zone
ggplot() + geom_bar(data=repig.all, aes(y = value, x = zone, fill = variable), stat="identity", position='stack') + theme_bw() + facet_grid( ~ year)

# Barplot of pico, nano, micro in all areas grouped by year and zone
ggplot() + geom_bar(data=repig.size, aes(y = value, x = zone, fill = variable), stat="identity", position='stack') + theme_bw() + facet_grid( ~ year)

# Do same thing but as percentage
pigperc = cbind(pig[,1:2],pig[4:10]/rowSums(pig[4:10]))

repigperc.all = melt(pigperc,id=c('year','zone')) #Reshape to columns only taking chloropigments (e.g. pro, prym, diat, etc)

# Barplot of all groups in all areas grouped by year and zone
ggplot() + geom_bar(data=repigperc.all, aes(y = value, x = zone, fill = variable), stat="identity", position='stack') + theme_bw() + facet_grid( ~ year)

# Now do the size classes
pigperc = cbind(pig[,1:2],pig[11:13]/rowSums(pig[11:13]))

repigperc.size = melt(pigperc,id=c('year','zone')) #Reshape to columns only taking chloropigments (e.g. pro, prym, diat, etc)

# Barplot of pico, nano, micro in all areas grouped by year and zone
ggplot() + geom_bar(data=repigperc.size, aes(y = value, x = zone, fill = variable), stat="identity", position='stack') + theme_bw() + facet_grid( ~ year)

###############FOR SURFACE DATA###################
pigsurf = read.csv('chlpigdatahirata-surface.csv', header=T)
pigsurf$zone[pigsurf$zone==1]='1-STFZ'
pigsurf$zone[pigsurf$zone==2]='2-TZCF'

repigsurf.all = melt(pigsurf[,c(1:2,4:10)],id=c('year','zone')) #Reshape to columns only taking chloropigments (e.g. pro, prym, diat, etc)
repigsurf.size = melt(pigsurf[,c(1:2,11:13)],id=c('year','zone')) # Reshape but only pico, nano, micro groups

# Barplot of pico, nano, micro in all areas grouped by year and zone
ggplot() + geom_bar(data=repigsurf.size, aes(y = value, x = zone, fill = variable), stat="identity", position='stack') + theme_bw() + facet_grid( ~ year)

# Barplot of all groups in all areas grouped by year and zone
ggplot() + geom_bar(data=repigsurf.all, aes(y = value, x = zone, fill = variable), stat="identity", position='stack') + theme_bw() + facet_grid( ~ year)

# Do same thing but as percentage
pigsurfperc = cbind(pigsurf[,1:2],pigsurf[4:10]/rowSums(pigsurf[4:10]))

repigsurfperc.all = melt(pigsurfperc,id=c('year','zone')) #Reshape to columns only taking chloropigments (e.g. pro, prym, diat, etc)

# Barplot of pico, nano, micro in all areas grouped by year and zone
ggplot() + geom_bar(data=repigsurfperc.all, aes(y = value, x = zone, fill = variable), stat="identity", position='stack') + theme_bw() + facet_grid( ~ year)

# Now do the size classes
pigsurfperc = cbind(pigsurf[,1:2],pigsurf[11:13]/rowSums(pigsurf[11:13]))

repigsurfperc.size = melt(pigsurfperc,id=c('year','zone')) #Reshape to columns only taking chloropigments (e.g. pro, prym, diat, etc)

# Barplot of pico, nano, micro in all areas grouped by year and zone
ggplot() + geom_bar(data=repigsurfperc.size, aes(y = value, x = zone, fill = variable), stat="identity", position='stack') + theme_bw() + facet_grid( ~ year)
