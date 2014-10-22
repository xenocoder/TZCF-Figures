%Oxygen Smoothed Plots
figure(1);
clear
load TC9704Data
subplot(4,2,1);
plotoxygen(TC9704);
xlabel('Latitude (\circN)');
ylabel('Pressure [dbars]');
title (horzcat('Smoothed Oxygen TC9704'));

clear
load TC9805Data
subplot(4,2,3);
plotoxygen(TC9805);
xlabel('Latitude (\circN)');
ylabel('Pressure [dbars]');
title (horzcat('Smoothed Oxygen TC9805'));

clear
load TC9905Data
subplot(4,2,5);
plotoxygen(TC9905);
xlabel('Latitude (\circN)');
ylabel('Pressure [dbars]');
title (horzcat('Smoothed Oxygen TC9905'));

clear
load TC0004Data
subplot(4,2,7);
plotoxygen(TC0004);
xlabel('Latitude (\circN)');
ylabel('Pressure [dbars]');
title (horzcat('Smoothed Oxygen TC0004'));

clear
load SE0802Data
subplot(4,2,4);
plotoxygen(SE0802);
xlabel('Latitude (\circN)');
ylabel('Pressure [dbars]');
title (horzcat('Smoothed Oxygen SE0802'));

clear
load SE0902Data
subplot(4,2,6);
plotoxygen(SE0902);
xlabel('Latitude (\circN)');
ylabel('Pressure [dbars]');
title (horzcat('Smoothed Oxygen SE0902'));

clear
load SE1102Data
subplot(4,2,8);
plotoxygen(SE1102);
xlabel('Latitude (\circN)');
ylabel('Pressure [dbars]');
title (horzcat('Smoothed Oxygen SE1102'));
