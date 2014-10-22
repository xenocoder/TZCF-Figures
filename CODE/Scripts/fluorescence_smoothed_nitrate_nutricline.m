%Fluorescence Smoothed Plots
figure(1);
clear
load TC9704Data
subplot(4,2,1);
plotfluorcorrected(TC9704);
hold on;
plotnitrate(TC9704.NUTS);
xlabel('Latitude (\circN)');
ylabel('Pressure [dbars]');
title (horzcat('Smoothed Fluorescence with 0.1 Nitrate TC9704'));
set(gca,'YDir','Reverse');

clear
load TC9805Data
subplot(4,2,3);
plotfluorcorrected(TC9805);
hold on;
plotnitrate(TC9805.NUTS);
xlabel('Latitude (\circN)');
ylabel('Pressure [dbars]');
title (horzcat('Smoothed Fluorescence with 0.1 Nitrate TC9805'));
set(gca,'YDir','Reverse');

clear
load TC9905Data
subplot(4,2,5);
plotfluorcorrected(TC9905);
hold on;
plotnitrate(TC9905.NUTS);
xlabel('Latitude (\circN)');
ylabel('Pressure [dbars]');
title (horzcat('Smoothed Fluorescence with 0.1 Nitrate TC9905'));
set(gca,'YDir','Reverse');

clear
load TC0004Data
subplot(4,2,7);
plotfluorcorrected(TC0004);
hold on;
plotnitrate(TC0004.NUTS);
xlabel('Latitude (\circN)');
ylabel('Pressure [dbars]');
title (horzcat('Smoothed Fluorescence with 0.1 Nitrate TC0004'));
set(gca,'YDir','Reverse');

clear
load SE0802Data
subplot(4,2,4);
plotfluorcorrected(SE0802);
hold on;
plotnitrate(SE0802.NUTS);
xlabel('Latitude (\circN)');
ylabel('Pressure [dbars]');
title (horzcat('Smoothed Fluorescence with 0.1 Nitrate SE0802'));
set(gca,'YDir','Reverse');

clear
load SE0902Data
subplot(4,2,6);
plotfluorcorrected(SE0902);
hold on;
plotnitrate(SE0902.NUTS);
xlabel('Latitude (\circN)');
ylabel('Pressure [dbars]');
title (horzcat('Smoothed Fluorescence with 0.1 Nitrate SE0902'));
set(gca,'YDir','Reverse');

clear
load SE1102Data
subplot(4,2,8);
plotfluorcorrected(SE1102);
hold on;
plotnitrate(SE1102.NUTS);
xlabel('Latitude (\circN)');
ylabel('Pressure [dbars]');
title (horzcat('Smoothed Fluorescence with 0.1 Nitrate SE1102'));
set(gca,'YDir','Reverse');
