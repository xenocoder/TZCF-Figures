dat = read.csv('latpositions98-14.csv')

# Latitude of 18C at 157.5-158.5W average
par(mfrow=c(1,3))
plot(dat$NPI,dat$S18,pch=21,bg='grey',xlab='NPI',ylab='Latitude (N)',main='18C Latitude (157.5-158.5W AVG)')
S.fit = lm(S18~NPI,data=dat)
abline(S.fit)
text(1011.5, 29, sprintf('r2=%5.2f, p=%s', summary(S.fit)$adj.r.squared, sprintf('%6.4f',summary(S.fit)$coeff[8])))

# Latitude of 0.2 mg m-3 at 157.5-158.5W average
plot(dat$NPI,dat$CP2,pch=21,bg='grey',xlab='NPI',ylab='Latitude (N)',main='0.2 mg m-3 Latitude (157.5-158.5W AVG)')
C.fit = lm(CP2~NPI,data=dat)
abline(C.fit)
text(1011.5, 30.5, sprintf('r2=%5.2f, p=%s', summary(C.fit)$adj.r.squared, sprintf('%6.4f',summary(C.fit)$coeff[8])))

# Latitude of 0.2 mg m-3 minus latitude of 18C at 157.5-158.5W average
plot(dat$NPI,dat$FrontDiff,pch=21,bg='grey',xlab='NPI',ylab=' D Latitude',main='0.2 Lat - 18 Lat (157.5-158.5W AVG)')
D.fit = lm(FrontDiff~NPI,data=dat)
abline(D.fit)
text(1011.5, 0.75, sprintf('r2=%5.2f, p=%s', summary(D.fit)$adj.r.squared, sprintf('%6.4f',summary(D.fit)$coeff[8])))

