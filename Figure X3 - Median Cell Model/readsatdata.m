mediansatdata = {};

mediansatdata.sst08 = csvread('sst08.csv',8,1); %File has 8 line header and 3 descript columns
mediansatdata.sst09 = csvread('sst09.csv',8,1);
mediansatdata.sst11 = csvread('sst11.csv',8,1);
mediansatdata.latitude = transpose(30:0.1:36); %latitude, CHECK to make sure still valid

mediansatdata.chla08 = csvread('chla08.csv',9,1);
mediansatdata.chla08(mediansatdata.chla08<0) = NaN;
mediansatdata.chla09 = csvread('chla09.csv',9,1);
mediansatdata.chla09(mediansatdata.chla09<0) = NaN;
mediansatdata.chla11 = csvread('chla11.csv',9,1);
mediansatdata.chla11(mediansatdata.chla11<0) = NaN;

%Plots
% subplot(2,1,1, 'replace')
% plot(mediansatdata.latitude,nanmean(mediansatdata.sst08,2),'b-')
% hold on
% plot(mediansatdata.latitude,nanmean(mediansatdata.sst09,2),'g-')
% plot(mediansatdata.latitude,nanmean(mediansatdata.sst11,2),'r-')
% xlabel('Latitude °N')
% ylabel('SST (°C)')
% legend('location','northeast','2008 (3/30-4/14)','2009 (3/15-4/1)','2011 (3/15-4/1)')
% title('Mean SST (158.5°-157.°W) for closest two weeks to cruise with data')
% 
% subplot(2,1,2,'replace')
% semilogy(mediansatdata.latitude,nanmean(mediansatdata.chla08,2),'b-')
% hold on
% plot(mediansatdata.latitude,nanmean(mediansatdata.chla09,2),'g-')
% plot(mediansatdata.latitude,nanmean(mediansatdata.chla11,2),'r-')
% xlabel('Latitude °N')
% ylabel('Chl-a (mg m^-3)')
% legend('location','northeast','2008 (3/30-4/14)','2009 (3/15-4/1)','2011 (3/15-4/1)')
% title('Mean Chl-a (158.5°-157.°W)')