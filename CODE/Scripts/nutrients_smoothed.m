%plot nutrients_smoothed.m
%uses plotnitrate.m to smooth the nutrient plots to determine the nutricline

%Nitrate Smoothed Plots
%figure(1);    %cannot use if plotting plotnitrate.m with figures in the script
clear
load TC9704Data
subplot(4,2,1);
plotnitrate(TC9704.NUTS);
xlabel('Latitude (\circN)');
ylabel('Pressure [dbars]');
title (horzcat('Smoothed Nitrate TC9704'));

clear
load TC9805Data
subplot(4,2,3);
plotnitrate(TC9805.NUTS);
xlabel('Latitude (\circN)');
ylabel('Pressure [dbars]');
title (horzcat('Smoothed Nitrate TC9805'));

clear
load TC9905Data
subplot(4,2,5);
plotnitrate(TC9905.NUTS);
xlabel('Latitude (\circN)');
ylabel('Pressure [dbars]');
title (horzcat('Smoothed Nitrate TC9905'));

clear
load TC0004Data
subplot(4,2,7);
plotnitrate(TC0004.NUTS);
xlabel('Latitude (\circN)');
ylabel('Pressure [dbars]');
title (horzcat('Smoothed Nitrate TC0004'));

clear
load SE0802Data
subplot(4,2,4);
plotnitrate(SE0802.NUTS);
xlabel('Latitude (\circN)');
ylabel('Pressure [dbars]');
title (horzcat('Smoothed Nitrate SE0802'));

clear
load SE0902Data
subplot(4,2,6);
plotnitrate(SE0902.NUTS);
xlabel('Latitude (\circN)');
ylabel('Pressure [dbars]');
title (horzcat('Smoothed Nitrate SE0902'));

clear
load SE1102Data
subplot(4,2,8);
plotnitrate(SE1102.NUTS);
xlabel('Latitude (\circN)');
ylabel('Pressure [dbars]');
title (horzcat('Smoothed Nitrate SE1102'));

% Phosphate Smoothed Plots
figure(2);
clear
load TC9704Data
subplot(4,2,1);
plotphosphate(TC9704.NUTS);
xlabel('Latitude (\circN)');
ylabel('Pressure [dbars]');
title (horzcat('Smoothed Phosphate TC9704'));

clear
load TC9805Data
subplot(4,2,3);
plotphosphate(TC9805.NUTS);
xlabel('Latitude (\circN)');
ylabel('Pressure [dbars]');
title (horzcat('Smoothed Phosphate TC9805'));

clear
load TC9905Data
subplot(4,2,5);
plotphosphate(TC9905.NUTS);
xlabel('Latitude (\circN)');
ylabel('Pressure [dbars]');
title (horzcat('Smoothed Phosphate TC9905'));

clear
load TC0004Data
subplot(4,2,7);
plotphosphate(TC0004.NUTS);
xlabel('Latitude (\circN)');
ylabel('Pressure [dbars]');
title (horzcat('Smoothed Phosphate TC0004'));

clear
load SE0802Data
subplot(4,2,4);
plotphosphate(SE0802.NUTS);
xlabel('Latitude (\circN)');
ylabel('Pressure [dbars]');
title (horzcat('Smoothed Phosphate SE0802'));

clear
load SE0902Data
subplot(4,2,6);
plotphosphate(SE0902.NUTS);
xlabel('Latitude (\circN)');
ylabel('Pressure [dbars]');
title (horzcat('Smoothed Phosphate SE0902'));

clear
load SE1102Data
subplot(4,2,8);
plotphosphate(SE1102.NUTS);
xlabel('Latitude (\circN)');
ylabel('Pressure [dbars]');
title (horzcat('Smoothed Phosphate SE1102'));

% Silicate Smoothed Plots
figure(3);
clear
load TC9704Data
subplot(4,2,1);
plotsilicate(TC9704.NUTS);
xlabel('Latitude (\circN)');
ylabel('Pressure [dbars]');
title (horzcat('Smoothed Silicate TC9704'));

clear
load TC9805Data
subplot(4,2,3);
plotsilicate(TC9805.NUTS);
xlabel('Latitude (\circN)');
ylabel('Pressure [dbars]');
title (horzcat('Smoothed Silicate TC9805'));

clear
load TC9905Data
subplot(4,2,5);
plotsilicate(TC9905.NUTS);
xlabel('Latitude (\circN)');
ylabel('Pressure [dbars]');
title (horzcat('Smoothed Silicate TC9905'));

clear
load TC0004Data
subplot(4,2,7);
plotsilicate(TC0004.NUTS);
xlabel('Latitude (\circN)');
ylabel('Pressure [dbars]');
title (horzcat('Smoothed Silicate TC0004'));

clear
load SE0802Data
subplot(4,2,4);
plotsilicate(SE0802.NUTS);
xlabel('Latitude (\circN)');
ylabel('Pressure [dbars]');
title (horzcat('Smoothed Silicate SE0802'));

clear
load SE0902Data
subplot(4,2,6);
plotsilicate(SE0902.NUTS);
xlabel('Latitude (\circN)');
ylabel('Pressure [dbars]');
title (horzcat('Smoothed Silicate SE0902'));

clear
load SE1102Data
subplot(4,2,8);
plotsilicate(SE1102.NUTS);
xlabel('Latitude (\circN)');
ylabel('Pressure [dbars]');
title (horzcat('Smoothed Silicate SE1102'));