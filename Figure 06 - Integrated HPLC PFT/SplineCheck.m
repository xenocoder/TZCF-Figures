ssta = stationlistHPLC.STFZ(1,1);
esta = stationlistHPLC.STFZ(1,2);
x = SE0802.HPLC.pigrats.pressure(:,ssta);

clf
plot(nanmean(SE0802.HPLC.hirata.galgae(:,ssta:esta),2), x,'ko')
axis ij
hold on
plot(galgaespline, XI)

plot(nanmean(SE0802.HPLC.hirata.C(:,ssta:esta),2), x,'ko')
axis ij
hold on
plot(totalspline, XI)