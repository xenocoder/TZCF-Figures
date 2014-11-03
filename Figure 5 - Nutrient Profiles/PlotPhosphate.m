%MATLAB script to plot 2008, 2009, and 2011 temperature

%2008
%Southern STFZ
clf
subplot(1,3,1)
ssta = stationlistNUTS.SSTFZ(1,1);
esta = stationlistNUTS.SSTFZ(1,2);
x = mean(SE0802.NUTS.phosphate(:,ssta:esta),2);
y = SE0802.NUTS.pressure(:,ssta);
plot(x,y,'b-','linewidth',5);
set(gca, 'xlim',[0 1])
axis ij
hold on

ssta = stationlistNUTS.SSTFZ(2,1);
esta = stationlistNUTS.SSTFZ(2,2);
x = mean(SE0902.NUTS.phosphate(:,ssta:esta),2);
y = SE0902.NUTS.pressure(:,ssta);
plot(x,y,'r-','linewidth',5)

ssta = stationlistNUTS.SSTFZ(3,1);
esta = stationlistNUTS.SSTFZ(3,2);
x = mean(SE1102.NUTS.phosphate(:,ssta:esta),2);
y = SE1102.NUTS.pressure(:,ssta);
plot(x,y,'k-','linewidth',5)

legend('2008','2009','2011','Location','northeast')
title('Mean Phosphate at Southern STFZ')
xlabel('Phosphate (mmol kg-1)')
ylabel('Pressure (db)')

subplot(1,3,2)
ssta = stationlistNUTS.STFZ(1,1);
esta = stationlistNUTS.STFZ(1,2);
x = mean(SE0802.NUTS.phosphate(:,ssta:esta),2);
y = SE0802.NUTS.pressure(:,ssta);
plot(x,y,'b-','linewidth',5);
set(gca, 'xlim',[0 1])
axis ij
hold on

ssta = stationlistNUTS.STFZ(2,1);
esta = stationlistNUTS.STFZ(2,2);
x = mean(SE0902.NUTS.phosphate(:,ssta:esta),2);
y = SE0902.NUTS.pressure(:,ssta);
plot(x,y,'r-','linewidth',5)

ssta = stationlistNUTS.STFZ(3,1);
esta = stationlistNUTS.STFZ(3,2);
x = mean(SE1102.NUTS.phosphate(:,ssta:esta),2);
y = SE1102.NUTS.pressure(:,ssta);
plot(x,y,'k-','linewidth',5)

legend('2008','2009','2011','Location','northeast')
title('Mean Phosphate at STFZ')
xlabel('Phosphate (mmol kg-1)')
ylabel('Pressure (db)')

%TZCF%
subplot(1,3,3)
ssta = stationlistNUTS.TZCF(1,1);
esta = stationlistNUTS.TZCF(1,2);
x = mean(SE0802.NUTS.phosphate(:,ssta:esta),2);
y = SE0802.NUTS.pressure(:,ssta);
plot(x,y,'b-','linewidth',5)
set(gca, 'xlim',[0 1])
axis ij
hold on

ssta = stationlistNUTS.TZCF(2,1);
esta = stationlistNUTS.TZCF(2,2);
x = mean(SE0902.NUTS.phosphate(:,ssta:esta),2);
y = SE0902.NUTS.pressure(:,ssta);
plot(x,y,'r-','linewidth',5)

ssta = stationlistNUTS.TZCF(3,1);
esta = stationlistNUTS.TZCF(3,2);
x = mean(SE1102.NUTS.phosphate(:,ssta:esta),2);
y = SE1102.NUTS.pressure(:,ssta);
plot(x,y,'k-','linewidth',5)

legend('2008','2009','2011','Location','northeast')
title('Mean Phosphate at TZCF')
xlabel('Phosphate (mmol kg-1)')
ylabel('Pressure (db)')