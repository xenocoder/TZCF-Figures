%MATLAB script to plot 2008, 2009, and 2011 fluorcorrected

%2008
clf
ssta = stationlist.STFZ(1,1);
esta = stationlist.STFZ(1,2);
x = mean(SE0802.fluorcorrected(1:196,ssta:esta),2);
y = SE0802.pressure(1:196,ssta);
err = std(SE0802.fluorcorrected(1:196,ssta:esta),0,2);
plot(x,y,'b-','linewidth',5)
axis ij
hold on
plot(x-err,y,'b--','linewidth',1)
plot(x+err,y,'b--','linewidth',1)

ssta = stationlist.STFZ(2,1);
esta = stationlist.STFZ(2,2);
x = mean(SE0902.fluorcorrected(1:188,ssta:esta),2);
y = SE0902.pressure(1:188,ssta);
err = std(SE0802.fluorcorrected(1:188,ssta:esta),0,2);
plot(x,y,'r-','linewidth',5)
plot(x-err,y,'r--','linewidth',1)
plot(x+err,y,'r--','linewidth',1)

ssta = stationlist.STFZ(3,1);
esta = stationlist.STFZ(3,2);
x = mean(SE1102.fluorcorrected(1:196,ssta:esta),2);
y = SE1102.pressure(1:196,ssta);
err = std(SE0802.fluorcorrected(1:196,ssta:esta),0,2);
plot(x,y,'k-','linewidth',5)
plot(x-err,y,'k--','linewidth',1)
plot(x+err,y,'k--','linewidth',1)

legend('2008','2009','2011')
title('Mean fluorcorrected')
xlabel('fluorcorrected (°C)')
ylabel('Pressure (db)')