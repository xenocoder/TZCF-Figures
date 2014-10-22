clear

s = load('../TC-96-06/CTD/s172_96.dat'); %salinity
t = load('../TC-96-06/CTD/t172_96.dat'); % temperature
%c = load('../TC-96-06/CTD/CHL96.DAT'); %integrated chl
%cnew = load('../TC-96-06/CTD/CHL96NEW.DAT'); %recalculated int chl
chl = load('../TC-96-06/CTD/chl172z96.dat'); %chlorophyll

TC9606 = ([]);
TC9606.cruise = '96-06';
TC9606.stations = 1:24;;
TC9606.longitude = repmat(188,1,24);
TC9606.latitude = 26:0.25:31.75;
TC9606.times = repmat(NaN,1,24);

TC9606.pressure = repmat(6:2:500,24,1)';
TC9606.temperature = t(:,2:25);
TC9606.salinity = s(:,2:25);
TC9606.density = repmat(NaN,248,24);
TC9606.oxygen = repmat(NaN,248,24);

TC9606.fluorescence = zeros(248,24); %Make zero array the same size as others
TC9606.fluorescence(1:96,:) = chl(:,2:25); %chl is 96x24 depths x stations

save('TC9606Data.mat','TC9606');

clf
plot(TC9606.temperature(:,1),TC9606.pressure(:,1)) %plot first station
set(gca,'ydir','reverse') %flip Y axis
hold on % add more to current plot
plot(TC9606.temperature(:,2),TC9606.pressure(:,2),'r-') %overplot 2nd sta in red