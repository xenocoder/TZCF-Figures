%MATLAB script to plot 2008, 2009, and 2011 temperature

%2008
%Southern STFZ
clf
subplot(2,3,1)
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
subplot(2,3,4)
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

% %Oxygen
% subplot(2,3,2)
% ssta = stationlist.STFZ(1,1);
% esta = stationlist.STFZ(1,2);
% x = nanmean(SE0802.oxygen(:,ssta:esta),2);
% y = SE0802.pressure(:,ssta);
% plot(x,y,'b-','linewidth',5);
% set(gca, 'xlim',[0 12])
% axis ij
% hold on
% 
% ssta = stationlist.STFZ(2,1);
% esta = stationlist.STFZ(2,2);
% x = nanmean(SE0902.oxygen(:,ssta:esta),2);
% y = SE0902.pressure(:,ssta);
% plot(x,y,'r-','linewidth',5)
% 
% ssta = stationlist.STFZ(3,1);
% esta = stationlist.STFZ(3,2);
% x = nanmean(SE1102.oxygen(:,ssta:esta),2);
% y = SE1102.pressure(:,ssta);
% plot(x,y,'k-','linewidth',5)
% 
% legend('2008','2009','2011','Location','northeast')
% title('Mean Oxygen at STFZ')
% xlabel('oxygen (mmol kg-1)')
% ylabel('Pressure (db)')
% 
% %TZCF%
% subplot(2,3,5)
% ssta = stationlist.TZCF(1,1);
% esta = stationlist.TZCF(1,2);
% x = nanmean(SE0802.oxygen(:,ssta:esta),2);
% y = SE0802.pressure(:,ssta);
% plot(x,y,'b-','linewidth',5)
% set(gca, 'xlim',[0 12])
% axis ij
% hold on
% 
% ssta = stationlist.TZCF(2,1);
% esta = stationlist.TZCF(2,2);
% x = nanmean(SE0902.oxygen(:,ssta:esta),2);
% y = SE0902.pressure(:,ssta);
% plot(x,y,'r-','linewidth',5)
% 
% ssta = stationlist.TZCF(3,1);
% esta = stationlist.TZCF(3,2);
% x = nanmean(SE1102.oxygen(:,ssta:esta),2);
% y = SE1102.pressure(:,ssta);
% plot(x,y,'k-','linewidth',5)
% 
% legend('2008','2009','2011','Location','northeast')
% title('Mean Oxygen at TZCF')
% xlabel('Oxygen (umol kg-1)')
% ylabel('Pressure (db)')
% 
%Fluorescence

subplot(2,3,2)
ssta = stationlist.STFZ(1,1);
esta = stationlist.STFZ(1,2);
x = mean(SE0802.fluorcorrected(1:196,ssta:esta),2);
y = SE0802.pressure(1:196,ssta);
plot(x,y,'b-','linewidth',5)
set(gca, 'xlim', [0 0.8])
axis ij
hold on

%2009
ssta = stationlist.STFZ(2,1);
esta = stationlist.STFZ(2,2);
x = mean(SE0902.fluorcorrected(1:188,ssta:esta),2);
y = SE0902.pressure(1:188,ssta);
plot(x,y,'r-','linewidth',5)

%2011
ssta = stationlist.STFZ(3,1);
esta = stationlist.STFZ(3,2);
x = mean(SE1102.fluorcorrected(1:196,ssta:esta),2);
y = SE1102.pressure(1:196,ssta);
plot(x,y,'k-','linewidth',5)

legend('2008','2009','2011','Location','southeast')
title('Mean Fluorescence at STFZ')
xlabel('fluorcorrected (°C)')
ylabel('Pressure (db)')

%%%TZCF%%%
subplot(2,3,5)
ssta = stationlist.TZCF(1,1);
esta = stationlist.TZCF(1,2);
x = mean(SE0802.fluorcorrected(1:196,ssta:esta),2);
y = SE0802.pressure(1:196,ssta);
plot(x,y,'b-','linewidth',5)
axis ij
hold on

%2009
ssta = stationlist.TZCF(2,1);
esta = stationlist.TZCF(2,2);
x = mean(SE0902.fluorcorrected(1:188,ssta:esta),2);
y = SE0902.pressure(1:188,ssta);
plot(x,y,'r-','linewidth',5)

%2011
ssta = stationlist.TZCF(3,1);
esta = stationlist.TZCF(3,2);
x = mean(SE1102.fluorcorrected(1:196,ssta:esta),2);
y = SE1102.pressure(1:196,ssta);
plot(x,y,'k-','linewidth',5)
set(gca, 'xlim', [0 0.8])

legend('2008','2009','2011','Location','southeast')
title('Mean Fluorescence at TZCF')
xlabel('fluorcorrected (°C)')
ylabel('Pressure (db)')