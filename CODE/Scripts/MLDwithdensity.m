 
 %SE0802
% Plot Depth v. Density
%This may not be a working script (10/1/2012)
clear
load SE0802Data
subplot(3,1,1)
mld = calcMLD(SE0802.potentialtemperature,SE0802.potentialdensity,SE0802.pressure);
x2 = SE0802.latitude(1:42);
plot(x2,mld,'x--');
set(gca,'YDIR','reverse');
% axis([22.76 36 0 160]);
set(gca,'YLim',[0 160]);
% set(gca,'XTickLabel',SE0802.latitude(1:42));
xlabel('Latitdue (\circN)');
ylabel('Depth (m)');
title (horzcat('MLD (\Delta\rho=0.03 kg/m^3) for SE0802 '));
legend('Temperature-based','Density-based','x--','Location','SouthWest')


%SE0802
% Plot Depth v. Density
clear
subplot(3,1,2)
load SE0802Data
x=SE0802.potentialdensity(1:200,1:42);
y=SE0802.pressure(1:200);
y1=y';
plot(x,y1);
set(gca,'YDIR','reverse')
xlabel('Potential Density (\sigma_{t})');
ylabel('Depth (m)');
set(gca,'YLim',[0,200]);
sday = datestr(SE0802.times(1),2);
eday = datestr(SE0802.times(42),2);
title (horzcat('Depth (m) vs. Potential Density (\sigma_{t}) for SE0802, ',sday,'-',eday));

clear
load SE0802Data
subplot(3,1,3)
x1 = SE0802.latitude(1:42); 
y1 = SE0802.pressure(1:200); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
z1 = SE0802.potentialdensity(1:200,1:42);
z2 = interp2(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([23.8 26.5]);
colorbar('vertical')
hold on;
v=(23.8:0.2:26.5);
% c=contour(x,z,T,v,'w');
[c,h]=contour(x2,y2,z2,v,'k');
clabel(c,h,'color','k') %make labels white

hold on
clear
load SE0802Data
mld = calcMLD(SE0802.potentialtemperature,SE0802.potentialdensity,SE0802.pressure);
x2 = SE0802.latitude(1:42);
plot(x2,mld,'x--','MarkerSize',10,'LineWidth',2)
%plot(x2,mld,'x--','MarkerSize',10,'LineWidth',3,'Color',[0.749019622802734 0 0.749019622802734]);
set(gca,'YDIR','reverse');
% axis([22.76 36 0 160]);
set(gca,'YLim',[0 160]);
% set(gca,'XTickLabel',SE0802.latitude(1:42));
xlabel('Latitdue (\circN)');
ylabel('Depth (m)');
title (horzcat('MLD (\Delta\rho=0.03 kg/m^3) for SE0802 '));
%legend('Density Contours','Temperature-based','Density-based','x--','Location','SouthWestOutside')
