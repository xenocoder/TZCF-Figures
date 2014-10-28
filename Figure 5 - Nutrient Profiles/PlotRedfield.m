%MATLAB script to plot 2008, 2009, and 2011 temperature

ratiosSTFZ = ones(3,1);
ratiosTZCF = ones(3,1);
%2008
clf
subplot(1,2,1)
ssta = stationlistNUTS.STFZ(1,1);
esta = stationlistNUTS.STFZ(1,2);
x = SE0802.NUTS.phosphate(:,ssta:esta);
y = SE0802.NUTS.nitrate(:,ssta:esta);
p = polyfit(x,y,1);
ratiosSTFZ(1,1) = p(1);
plot(x,y,'b.');
hold on

ssta = stationlistNUTS.STFZ(2,1);
esta = stationlistNUTS.STFZ(2,2);
y = nanmean(SE0802.NUTS.phosphate(:,ssta:esta),2);
x = nanmean(SE0802.NUTS.nitrate(:,ssta:esta),2);
plot(x,y,'b.');
p = polyfit(x,y,1);
ratiosSTFZ(2,1) = p(1);

ssta = stationlistNUTS.STFZ(3,1);
esta = stationlistNUTS.STFZ(3,2);
y = nanmean(SE0802.NUTS.phosphate(:,ssta:esta),2);
x = nanmean(SE0802.NUTS.nitrate(:,ssta:esta),2);
plot(x,y,'b.');
p = polyfit(x,y,1);
ratiosSTFZ(3,1) = p(1);

title('Nutrient Ratios at STFZ')
xlabel('Phosphate (mmol kg-1)')
ylabel('Nitrate (mmol kg-1)')

%TZCF%
subplot(1,2,2)
ssta = stationlistNUTS.TZCF(1,1);
esta = stationlistNUTS.TZCF(1,2);
x = nanmean(SE0802.NUTS.phosphate(:,ssta:esta),2);
x = nanmean(SE0802.NUTS.nitrate(:,ssta:esta),2);
plot(x,x,'b.');
p = polyfit(x,x,1);
ratiosTZCF(1,1) = p(1);
hold on

ssta = stationlistNUTS.TZCF(2,1);
esta = stationlistNUTS.TZCF(2,2);
x = nanmean(SE0802.NUTS.phosphate(:,ssta:esta),2);
x = nanmean(SE0802.NUTS.nitrate(:,ssta:esta),2);
p = plot(x,x,'b.');
p = polyfit(x,x,1);
ratiosTZCF(2,1) = p(1);

ssta = stationlistNUTS.TZCF(3,1);
esta = stationlistNUTS.TZCF(3,2);
x = nanmean(SE0802.NUTS.phosphate(:,ssta:esta),2);
x = nanmean(SE0802.NUTS.nitrate(:,ssta:esta),2);
plot(x,x,'b.');
p = polyfit(x,x,1);
ratiosTZCF(3,1) = p(1);

title('Nutrient Ratios at TZCF')
xlabel('Phosphate (mmol kg-1)')
ylabel('Nitrate (mmol kg-1)')