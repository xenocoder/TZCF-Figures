#Script to plot latitudes of fronts and fits

marchdata = read.csv('MarchFrontsMedCell.csv',header=T) #Frontal positions and Median cell estimates
years = seq(2003,2014,1)

#First do STFZ median cell size by year
plot(years, marchdata$STFZMedCell,xlab='Year',ylab='Median Cell Size (uM)',type='l',ylim=c(0.8,1.6))
medyear.stfz.fit = lm(marchdata$STFZMedCell~years)
abline(medyear.stfz.fit)
#> summary(med.year.fit)
#Coefficients:
#            Estimate Std. Error t value Pr(>|t|)
#(Intercept) 28.62325   20.13896   1.421    0.186
#years       -0.01373    0.01003  -1.369    0.201

#Residual standard error: 0.1199 on 10 degrees of freedom
#Multiple R-squared:  0.1579,	Adjusted R-squared:  0.07371 
#F-statistic: 1.875 on 1 and 10 DF,  p-value: 0.2008

#Now Plot TZCF by year
lines(years, marchdata$TZCFMedCell,xlab='Year',ylab='Median Cell Size (uM)',type='l',lty=2,col='grey')
medyear.tzcf.fit = lm(marchdata$TZCFMedCell~years)
abline(medyear.tzcf.fit,lty=2,col='grey')
legend('topleft',lty=c(1,2),col=c('black','grey'),legend=c('STFZ','TZCF'))
#> summary(medyear.tzcf.fit)
#Coefficients:
#             Estimate Std. Error t value Pr(>|t|)
#(Intercept) -2.815606   9.699082  -0.290    0.778
#years        0.002034   0.004829   0.421    0.682
#
#Residual standard error: 0.05775 on 10 degrees of freedom
#Multiple R-squared:  0.01744,	Adjusted R-squared:  -0.08082 
#F-statistic: 0.1775 on 1 and 10 DF,  p-value: 0.6825

#Now look at median cell size as a function of Frontal Separation
plot(marchdata$FrontalDiff,marchdata$STFZMedCell,pch=21,bg='grey',ylab='Median Cell Size (uM)',xlab='Frontal Separation (°N)')
abline(medcell.frontsep.fit)
#> summary(medcell.frontsep.fit)
#Coefficients:
#                      Estimate Std. Error t value Pr(>|t|)    
#(Intercept)            1.18446    0.03430  34.532 9.82e-12 ***
#marchdata$FrontalDiff -0.09159    0.01820  -5.033 0.000512 ***
#---
#Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
#
#Residual standard error: 0.06951 on 10 degrees of freedom
#Multiple R-squared:  0.717,	Adjusted R-squared:  0.6887 
#F-statistic: 25.34 on 1 and 10 DF,  p-value: 0.0005115

#OLD CODE FOLLOWS
#Get slopes from linear fits
#stfz.fit = lm(SST~Year,data=lats)
#tzcf.fit = lm(TZCF~Year,data=lats)

#Plot Frontal latitude
#plot(lats$Year, lats$SST,type="l",lty=1,col='black',ylim=c(30,37),xlab='Year',ylab='Latitude (°N)')
#abline(stfz.fit)
#points(lats$Year, lats$TZCF,type="l",lty=2,col='grey')
#abline(tzcf.fit,lty=2)

#legend('topleft',lty=c(1,1,2,2),col=c('black','black','grey','grey'),legend=c('17.5°C','17.5°C fit','0.2 Chl-a','0.2 Chl-a fit'))