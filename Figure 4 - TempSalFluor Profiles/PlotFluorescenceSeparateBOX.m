%MATLAB script to plot 2008, 2009, and 2011 fluorcorrected at BOX locations
%BOX-fluorescence.png

%2008
clf
subplot(1,3,1)
ssta = stationlist.BOX(1,1);
esta = stationlist.BOX(1,2);
plot(SE0802.fluorcorrected(1:196,ssta:esta),SE0802.pressure(1:196,ssta:esta))
axis ij
legend('35','36','37','38','39','40','41')
title('2008 Fluorescence - BOX')
xlabel('Fluorescence (mg m-3)')
ylabel('Pressure (db)')

%2009
subplot(1,3,2)
ssta = stationlist.BOX(2,1);
esta = stationlist.BOX(2,2);
plot(SE0902.fluorcorrected(1:188,ssta:esta),SE0902.pressure(1:188,ssta:esta))
legend('33','34','35','36')
axis ij
title('2009 Fluorescence - BOX')
xlabel('Fluorescence (mg m-3)')
ylabel('Pressure (db)')

%2011
subplot(1,3,3)
ssta = stationlist.BOX(3,1);
esta = stationlist.BOX(3,2);
plot(SE1102.fluorcorrected(1:196,ssta:esta),SE1102.pressure(1:196,ssta:esta))
axis ij
legend('26','27','28','29','30')
title('2011 Fluorescence - BOX')
xlabel('Fluorescence (mg m-3)')
ylabel('Pressure (db)')