%MATLAB script to plot 2008, 2009, and 2011 salinity

%2008
%Southern STFZ
clf
subplot(1,3,1)
ssta = stationlist.SSTFZ(1,1);
esta = stationlist.SSTFZ(1,2);
x = mean(SE0802.salinity(1:196,ssta:esta),2);
y = SE0802.pressure(1:196,ssta);
plot(x,y,'b-','linewidth',5);
set(gca, 'xlim',[34 35.4])
axis ij
hold on

ssta = stationlist.SSTFZ(2,1);
esta = stationlist.SSTFZ(2,2);
x = mean(SE0902.salinity(1:188,ssta:esta),2);
y = SE0902.pressure(1:188,ssta);
plot(x,y,'r-','linewidth',5)

ssta = stationlist.SSTFZ(3,1);
esta = stationlist.SSTFZ(3,2);
x = mean(SE1102.salinity(1:196,ssta:esta),2);
y = SE1102.pressure(1:196,ssta);
plot(x,y,'k-','linewidth',5)

legend('2008','2009','2011','Location','southeast')
title('Mean Salinity at Southern STFZ')
xlabel('Salinity (PSU)')
ylabel('Pressure (db)')

subplot(1,3,2)
ssta = stationlist.STFZ(1,1);
esta = stationlist.STFZ(1,2);
x = mean(SE0802.salinity(1:196,ssta:esta),2);
y = SE0802.pressure(1:196,ssta);
plot(x,y,'b-','linewidth',5);
set(gca, 'xlim',[34 35.4])
axis ij
hold on

ssta = stationlist.STFZ(2,1);
esta = stationlist.STFZ(2,2);
x = mean(SE0902.salinity(1:188,ssta:esta),2);
y = SE0902.pressure(1:188,ssta);
plot(x,y,'r-','linewidth',5)

ssta = stationlist.STFZ(3,1);
esta = stationlist.STFZ(3,2);
x = mean(SE1102.salinity(1:196,ssta:esta),2);
y = SE1102.pressure(1:196,ssta);
plot(x,y,'k-','linewidth',5)

legend('2008','2009','2011','Location','southeast')
title('Mean Salinity at STFZ')
xlabel('Salinity (PSU)')
ylabel('Pressure (db)')

%TZCF%
subplot(1,3,3)
ssta = stationlist.TZCF(1,1);
esta = stationlist.TZCF(1,2);
x = mean(SE0802.salinity(1:196,ssta:esta),2);
y = SE0802.pressure(1:196,ssta);
plot(x,y,'b-','linewidth',5)
set(gca, 'xlim',[34 35.4])
axis ij
hold on

ssta = stationlist.TZCF(2,1);
esta = stationlist.TZCF(2,2);
x = mean(SE0902.salinity(1:188,ssta:esta),2);
y = SE0902.pressure(1:188,ssta);
plot(x,y,'r-','linewidth',5)

ssta = stationlist.TZCF(3,1);
esta = stationlist.TZCF(3,2);
x = mean(SE1102.salinity(1:196,ssta:esta),2);
y = SE1102.pressure(1:196,ssta);
plot(x,y,'k-','linewidth',5)

legend('2008','2009','2011','Location','southeast')
title('Mean Salinity at TZCF')
xlabel('Salinity (PSU)')
ylabel('Pressure (db)')