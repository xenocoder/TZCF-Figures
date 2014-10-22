%Fluorescence Smoothed Plots
figure(1);
clear
load TC9704Data
subplot(4,2,1);
plotfluorcorrected(TC9704);
xlabel('Latitude (\circN)');
ylabel('Pressure [dbars]');
title (horzcat('Smoothed Fluorescence TC9704'));
set(gca,'YDir','Reverse');

clear
load TC9805Data
subplot(4,2,3);
plotfluorcorrected(TC9805);
xlabel('Latitude (\circN)');
ylabel('Pressure [dbars]');
title (horzcat('Smoothed Fluorescence TC9805'));
set(gca,'YDir','Reverse');

clear
load TC9905Data
subplot(4,2,5);
plotfluorcorrected(TC9905);
xlabel('Latitude (\circN)');
ylabel('Pressure [dbars]');
title (horzcat('Smoothed Fluorescence TC9905'));
set(gca,'YDir','Reverse');

clear
load TC0004Data
subplot(4,2,7);
plotfluorcorrected(TC0004);
xlabel('Latitude (\circN)');
ylabel('Pressure [dbars]');
title (horzcat('Smoothed Fluorescence TC0004'));
set(gca,'YDir','Reverse');

clear
load SE0802Data
subplot(4,2,4);
plotfluorcorrected(SE0802);
xlabel('Latitude (\circN)');
ylabel('Pressure [dbars]');
title (horzcat('Smoothed Fluorescence SE0802'));
set(gca,'YDir','Reverse');

clear
load SE0902Data
subplot(4,2,6);
plotfluorcorrected(SE0902);
xlabel('Latitude (\circN)');
ylabel('Pressure [dbars]');
title (horzcat('Smoothed Fluorescence SE0902'));
set(gca,'YDir','Reverse');

clear
load SE1102Data
subplot(4,2,8);
plotfluorcorrected(SE1102);
xlabel('Latitude (\circN)');
ylabel('Pressure [dbars]');
title (horzcat('Smoothed Fluorescence SE1102'));
set(gca,'YDir','Reverse');
