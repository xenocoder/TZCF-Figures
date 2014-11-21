%Script plotmediancell.m
% Plot the output from mediancell function given input SST and Chl-a
%
%
% READ IN SATELLITE DATA IF NO mediansatdata STRUCTURE
%readsatdata;

%latitude, CHECK to make sure still valid
latitude = transpose(30:0.1:36);

%Take nanmean for calculations
%2008
sst08 = nanmean(mediansatdata.sst08,2);
chla08 = nanmean(mediansatdata.chla08,2);
md5008 = [latitude mediancell(sst08,chla08)];

%2009
sst09 = nanmean(mediansatdata.sst09,2);
chla09 = nanmean(mediansatdata.chla09,2);
md5009 = [latitude mediancell(sst09,chla09)];

%2011
sst11 = nanmean(mediansatdata.sst11,2);
chla11 = nanmean(mediansatdata.chla11,2);
md5011 = [latitude mediancell(sst11,chla11)];

%subplot(3,1,1)
plot(md5008(:,1),md5008(:,2),'b-')
set(gca, 'Ylim', [0.5 2.5])
xlabel('Latitude °N')
ylabel('Cell diameter (uM)')
text(30.5, 2.2, '2008')
title('Average of Mar-Apr weekly median cell size for 30°-36°N')
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
md50array(1,1) = mean(md5008(23:29,2)); %2008 STFZ (32.25-32.75)
md50array(2,1) = mean(md5009(13:24,2)); %2009 STFZ (31.25-32.25)
md50array(3,1) = mean(md5011(13:24,2)); %2011 STFZ (31.25-32.25)

md50array(4,1) = mean(md5008(43:54,2)); %2008 TZCF (34.25-35.75)
md50array(5,1) = mean(md5009(51:61,2)); %2009 TZCF (35-36)
md50array(6,1) = mean(md5011(26:36,2)); %2011 TZCF (32.50-33.50)

%[percpicopl md50array]
plot(percpicopl, md50array,'b*')
