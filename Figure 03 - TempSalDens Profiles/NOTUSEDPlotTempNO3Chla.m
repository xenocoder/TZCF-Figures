%MATLAB script to plot 2008, 2009, and 2011 temperature

%%%%%%%%%%%%%  TEMPERATURE %%%%%%%%%%%%%%%%%%%%
%2008
%Subtropical Front (18-19°C)
clf
subplot(2,3,1)
ssta = stationlist.STFZ(1,1);
esta = stationlist.STFZ(1,2);
x = mean(SE0802.temperature(1:196,ssta:esta),2);
y = SE0802.pressure(1:196,ssta);
plot(x,y,'b-','linewidth',5);
set(gca, 'xlim',[11 19])
axis ij
hold on

ssta = stationlist.STFZ(2,1);
esta = stationlist.STFZ(2,2);
x = mean(SE0902.temperature(1:188,ssta:esta),2);
y = SE0902.pressure(1:188,ssta);
plot(x,y,'r-','linewidth',5)

ssta = stationlist.STFZ(3,1);
esta = stationlist.STFZ(3,2);
x = mean(SE1102.temperature(1:196,ssta:esta),2);
y = SE1102.pressure(1:196,ssta);
plot(x,y,'k-','linewidth',5)

legend('2008','2009','2011','Location','southeast')
title('Mean Temperature at STFZ')
xlabel('Temperature (°C)')
ylabel('Pressure (db)')

%TZCF%
subplot(2,3,4)
ssta = stationlist.TZCF(1,1);
esta = stationlist.TZCF(1,2);
x = mean(SE0802.temperature(1:196,ssta:esta),2);
y = SE0802.pressure(1:196,ssta);
plot(x,y,'b-','linewidth',5)
set(gca, 'xlim',[11 19])
axis ij
hold on

ssta = stationlist.TZCF(2,1);
esta = stationlist.TZCF(2,2);
x = mean(SE0902.temperature(1:188,ssta:esta),2);
y = SE0902.pressure(1:188,ssta);
plot(x,y,'r-','linewidth',5)

ssta = stationlist.TZCF(3,1);
esta = stationlist.TZCF(3,2);
x = mean(SE1102.temperature(1:196,ssta:esta),2);
y = SE1102.pressure(1:196,ssta);
plot(x,y,'k-','linewidth',5)

legend('2008','2009','2011','Location','southeast')
title('Mean Temperature at TZCF')
xlabel('Temperature (°C)')
ylabel('Pressure (db)')

%MATLAB script to plot 2008, 2009, and 2011 temperature

%%%%%%%%%%%%%  NITRATE %%%%%%%%%%%%%%%%%%%%
%Nitrate STFZ
subplot(2,3,2)
ssta = stationlistNUTS.STFZ(1,1);
esta = stationlistNUTS.STFZ(1,2);
x = nanmean(SE0802.NUTS.nitrate(:,ssta:esta),2);
y = SE0802.NUTS.pressure(:,ssta);
plot(x,y,'b-','linewidth',5);
set(gca, 'xlim',[0 12])
axis ij
hold on

ssta = stationlistNUTS.STFZ(2,1);
esta = stationlistNUTS.STFZ(2,2);
x = nanmean(SE0902.NUTS.nitrate(:,ssta:esta),2);
y = SE0902.NUTS.pressure(:,ssta);
plot(x,y,'r-','linewidth',5)

ssta = stationlistNUTS.STFZ(3,1);
esta = stationlistNUTS.STFZ(3,2);
x = nanmean(SE1102.NUTS.nitrate(:,ssta:esta),2);
y = SE1102.NUTS.pressure(:,ssta);
plot(x,y,'k-','linewidth',5)

plot(ones(201),0:200,'k--') %Plot Nutricline

legend('2008','2009','2011','Location','northeast')
title('Mean Nitrate at STFZ')
xlabel('Nitrate (umol kg-1)')
ylabel('Pressure (db)')

%TZCF%
subplot(2,3,5)
ssta = stationlistNUTS.TZCF(1,1);
esta = stationlistNUTS.TZCF(1,2);
x = nanmean(SE0802.NUTS.nitrate(:,ssta:esta),2);
y = SE0802.NUTS.pressure(:,ssta);
plot(x,y,'b-','linewidth',5)
set(gca, 'xlim',[0 12])
axis ij
hold on

ssta = stationlistNUTS.TZCF(2,1);
esta = stationlistNUTS.TZCF(2,2);
x = nanmean(SE0902.NUTS.nitrate(:,ssta:esta),2);
y = SE0902.NUTS.pressure(:,ssta);
plot(x,y,'r-','linewidth',5)

ssta = stationlistNUTS.TZCF(3,1);
esta = stationlistNUTS.TZCF(3,2);
x = nanmean(SE1102.NUTS.nitrate(:,ssta:esta),2);
y = SE1102.NUTS.pressure(:,ssta);
plot(x,y,'k-','linewidth',5)

plot(ones(201),0:200,'k--') %Plot Nutricline

legend('2008','2009','2011','Location','northeast')
title('Mean Nitrate at TZCF')
xlabel('Nitrate (umol kg-1)')
ylabel('Pressure (db)')

%%%%%%%%%%%%%  CHLOROPHYLL %%%%%%%%%%%%%%%%%%%%

subplot(2,3,3)
ssta = stationlist.STFZ(1,1);
esta = stationlist.STFZ(1,2);
x = mean(SE0802.fluorcorrected(1:196,ssta:esta),2);
y = SE0802.pressure(1:196,ssta);
plot(x./max(x),y,'b-','linewidth',5)
set(gca, 'xlim', [0 1.2])
axis ij
hold on

%2009
ssta = stationlist.STFZ(2,1);
esta = stationlist.STFZ(2,2);
x = mean(SE0902.fluorcorrected(1:188,ssta:esta),2);
y = SE0902.pressure(1:188,ssta);
plot(x./max(x),y,'r-','linewidth',5)

%2011
ssta = stationlist.STFZ(3,1);
esta = stationlist.STFZ(3,2);
x = mean(SE1102.fluorcorrected(1:196,ssta:esta),2);
y = SE1102.pressure(1:196,ssta);
plot(x./max(x),y,'k-','linewidth',5)

legend('2008','2009','2011','Location','southeast')
title('Mean Fluorescence at STFZ')
xlabel('Fluorescence (mg m^-3)')
ylabel('Pressure (db)')

%%%TZCF%%%
subplot(2,3,6)
ssta = stationlist.TZCF(1,1);
esta = stationlist.TZCF(1,2);
x = mean(SE0802.fluorcorrected(1:196,ssta:esta),2);
y = SE0802.pressure(1:196,ssta);
plot(x./max(x),y,'b-','linewidth',5)
axis ij
hold on

%2009
ssta = stationlist.TZCF(2,1);
esta = stationlist.TZCF(2,2);
x = mean(SE0902.fluorcorrected(1:188,ssta:esta),2);
y = SE0902.pressure(1:188,ssta);
plot(x./max(x),y,'r-','linewidth',5)

%2011
ssta = stationlist.TZCF(3,1);
esta = stationlist.TZCF(3,2);
x = mean(SE1102.fluorcorrected(1:196,ssta:esta),2);
y = SE1102.pressure(1:196,ssta);
plot(x./max(x),y,'k-','linewidth',5)
set(gca, 'xlim', [0 1.2])

legend('2008','2009','2011','Location','southeast')
title('Mean Fluorescence at TZCF')
xlabel('Fluorescence (mg m^-3)')
ylabel('Pressure (db)')
