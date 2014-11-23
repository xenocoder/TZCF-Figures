#Script to plot latitudes of fronts and fits

#lats = read.csv('SSTFrontLatmodis.csv',header=T) #MODIS only
lats = read.csv('SSTFrontLatboth.csv',header=T) #both (spliced from modis/seawifs files by hand r2=0.92 2003-2010

#Get slopes from linear fits
stfz.fit = lm(SST~Year,data=lats)
tzcf.fit = lm(TZCF~Year,data=lats)

#Plot Frontal latitude
plot(lats$Year, lats$SST,type="l",lty=1,col='black',ylim=c(30,37),xlab='Year',ylab='Latitude (°N)')
abline(stfz.fit)
points(lats$Year, lats$TZCF,type="l",lty=2,col='grey')
abline(tzcf.fit,lty=2)

legend('topleft',lty=c(1,1,2,2),col=c('black','black','grey','grey'),legend=c('17.5°C','17.5°C fit','0.2 Chl-a','0.2 Chl-a fit'))