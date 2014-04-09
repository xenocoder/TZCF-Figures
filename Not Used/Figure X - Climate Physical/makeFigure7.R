table2 = read.csv('table2params.csv')
d15c.pdo.fit = lm(depth15c~pdo.febmar,data=table2)
ncline.d15c.fit = lm(nutricline~depth15c,data=table2)

par(mfrow=c(2,1))

plot(table2$pdo.febmar,table2$depth15c,pch=21,bg='grey',ylim=c(40,130))
abline(d15c.pdo.fit)
text(-1, 50,'r2=0.75,p=0.02')

plot(table2$depth15c,table2$nutricline,pch=21,bg='grey',xlim=c(40,130))
abline(ncline.d15c.fit)
text(60, 100,'r2=0.93,p<0.01')