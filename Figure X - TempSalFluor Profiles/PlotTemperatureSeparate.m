%MATLAB script to plot 2008, 2009, and 2011 temperature

%2008
clf
subplot(1,3,1)
ssta = 27;
esta = 29;
plot(SE0802.temperature(1:196,ssta:esta),SE0802.pressure(1:196,ssta:esta))
axis ij
legend('27','28','29')
title('2008 Temperature')
xlabel('Temperature (°C)')
ylabel('Pressure (db)')

%2009
subplot(1,3,2)
ssta = 17; %18
esta = 22;
plot(SE0902.temperature(1:188,ssta:esta),SE0902.pressure(1:188,ssta:esta))
legend('17','18','19','20','21','22')
axis ij
title('2009 Temperature')
xlabel('Temperature (°C)')
ylabel('Pressure (db)')

%2011
subplot(1,3,3)
ssta = 21; %21
esta = 25; 
plot(SE1102.temperature(1:196,ssta:esta),SE1102.pressure(1:196,ssta:esta))
axis ij
legend('21','22','23','24','25')
title('2011 Temperature')
xlabel('Temperature (°C)')
ylabel('Pressure (db)')