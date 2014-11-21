%Script plotmediancell.m
% Plot the output from mediancell function given input SST and Chl-a
%
%
sst08 = load('sst08.txt');
sst09 = load('sst09.txt');
sst11 = load('sst11.txt');

chla08 = load('chla08.txt');
chla09 = load('chla09.txt');
chla11 = load('chla11.txt');

md5008 = [sst08(:,1) mediancell(sst08(:,2),chla08(:,2))];
md5009 = [sst09(:,1) mediancell(sst09(:,2),chla09(:,2))];
md5011 = [sst11(:,1) mediancell(sst11(:,2),chla11(:,2))];

%subplot(3,1,1)
plot(md5008(:,1),md5008(:,2),'b-')
set(gca, 'Ylim', [0.5 2.5])
xlabel('Latitude °N')
ylabel('Cell diameter (uM)')
text(30.5, 2.2, '2008')
title('Average of Mar-Apr monthly median cell size for 30°-36°N')
hold on

%subplot(3,1,2)
plot(md5009(:,1),md5009(:,2),'g-')
set(gca, 'Ylim', [0.5 2.5])
%xlabel('Latitude °N')
%ylabel('Cell diameter (uM)')
%text(30.5, 2.2, '2009')

%subplot(3,1,3)
plot(md5011(:,1),md5011(:,2),'r-')
set(gca, 'Ylim', [0.5 2.5])
%xlabel('Latitude °N')
%ylabel('Cell diameter (uM)')
%text(30.5, 2.2, '2011')

legend('location','northwest','2008','2009','2011')

%Load in filename = 'chlpigdatahirata-surface.csv';
a = csvread('chlpigdatahirata-surface.csv',1);
percpicopl = sum(a(:,4:5),2)./a(:,14); %CHECK THIS ALWAYS BEFORE %1-3=STFZ 08-11, 4-6=TZCF 08-11

md50array = ones(6,1); %1-3=STFZ 08-11, 4-6=TZCF 08-11
md50array(1,1) = mean(md5008(33:39,2)); %2008 STFZ
md50array(2,1) = mean(md5009(38:49,2)); %2009 STFZ
md50array(3,1) = mean(md5011(38:49,2)); %2011 STFZ

md50array(4,1) = mean(md5008(3:9,2)); %2008 TZCF
md50array(5,1) = mean(md5009(1:11,2)); %2009 TZCF
md50array(6,1) = mean(md5011(26:36,2)); %2011 TZCF
