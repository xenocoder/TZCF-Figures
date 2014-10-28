%MATLAB script to plot 2008, 2009, and 2011 fluorcorrected

%%%STFZ%%%
%2008
clf
subplot(1,2,1)
ssta = stationlist.STFZ(1,1);
esta = stationlist.STFZ(1,2);
x = mean(SE0802.fluorcorrected(1:196,ssta:esta),2);
y = SE0802.pressure(1:196,ssta);
%err = std(SE0802.fluorcorrected(1:196,ssta:esta),0,2);
plot(x,y,'b-','linewidth',5)
set(gca, 'xlim', [0 0.6])
axis ij
hold on
%plot(x-err,y,'b--','linewidth',1)
%plot(x+err,y,'b--','linewidth',1)

%2009
ssta = stationlist.STFZ(2,1);
esta = stationlist.STFZ(2,2);
x = mean(SE0902.fluorcorrected(1:188,ssta:esta),2);
y = SE0902.pressure(1:188,ssta);
%err = std(SE0802.fluorcorrected(1:188,ssta:esta),0,2);
plot(x,y,'r-','linewidth',5)
%plot(x-err,y,'r--','linewidth',1)
%plot(x+err,y,'r--','linewidth',1)

%2011
ssta = stationlist.STFZ(3,1);
esta = stationlist.STFZ(3,2);
x = mean(SE1102.fluorcorrected(1:196,ssta:esta),2);
y = SE1102.pressure(1:196,ssta);
%err = std(SE0802.fluorcorrected(1:196,ssta:esta),0,2);
plot(x,y,'k-','linewidth',5)
%plot(x-err,y,'k--','linewidth',1)
%plot(x+err,y,'k--','linewidth',1)

legend('2008','2009','2011','Location','southeast')
title('Mean Fluorescence at STFZ')
xlabel('fluorcorrected (�C)')
ylabel('Pressure (db)')

%%%TZCF%%%
subplot(1,2,2)
ssta = stationlist.TZCF(1,1);
esta = stationlist.TZCF(1,2);
x = mean(SE0802.fluorcorrected(1:196,ssta:esta),2);
y = SE0802.pressure(1:196,ssta);
%err = std(SE0802.fluorcorrected(1:196,ssta:esta),0,2);
plot(x,y,'b-','linewidth',5)
axis ij
hold on
%plot(x-err,y,'b--','linewidth',1)
%plot(x+err,y,'b--','linewidth',1)

%2009
ssta = stationlist.TZCF(2,1);
esta = stationlist.TZCF(2,2);
x = mean(SE0902.fluorcorrected(1:188,ssta:esta),2);
y = SE0902.pressure(1:188,ssta);
%err = std(SE0802.fluorcorrected(1:188,ssta:esta),0,2);
plot(x,y,'r-','linewidth',5)
%plot(x-err,y,'r--','linewidth',1)
%plot(x+err,y,'r--','linewidth',1)

%2011
ssta = stationlist.TZCF(3,1);
esta = stationlist.TZCF(3,2);
x = mean(SE1102.fluorcorrected(1:196,ssta:esta),2);
y = SE1102.pressure(1:196,ssta);
%err = std(SE0802.fluorcorrected(1:196,ssta:esta),0,2);
plot(x,y,'k-','linewidth',5)
set(gca, 'xlim', [0 0.6])
%plot(x-err,y,'k--','linewidth',1)
%plot(x+err,y,'k--','linewidth',1)

legend('2008','2009','2011','Location','southeast')
title('Mean Fluorescence at TZCF')
xlabel('fluorcorrected (�C)')
ylabel('Pressure (db)')