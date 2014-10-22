clear
fid = fopen('data_from_TC9905.txt','r');
%13 columns of data, (string, integer, string, string, 9 floating points.)
C = textscan(fid,'%s %d %s %s %f %f %f %f %f %f %f %f %f','HeaderLines',11);
fclose(fid);

%This loads in a cell wrapper with each column of information from the
%original file in a cell. So 13 original columns of data, C now has 13
%cells each representing a column of data. We have to pull out numbers to
%matrix.

%Numbers are in columns 2,5-13


t = C{2};
sta = unique(t);
s = size(sta);
len = s(1);
presstemp = C{8};

a = ones(len,3);
for i = 1:len
    ptemp = presstemp(find(t==sta(i)));
    a(i,:) = [sta(i) min(ptemp) max(ptemp)];
end
llim=max(a(:,2));
ulim=min(a(:,3));
rsize = ulim-llim+1;
csize = len;

ind = find(presstemp>=llim&presstemp<=ulim);
p1 = presstemp(ind);
press = reshape(p1,rsize,csize);

TC9905 = ([]);
TC9905.cruise = C{1}(1);
TC9905.stations = sta;

lon = reshape(C{5}(ind),rsize,csize);
TC9905.longitude = lon(1,:);

lat = reshape(C{6}(ind),rsize,csize);
TC9905.latitude = lat(1,:);

time = reshape(C{4}(ind),rsize,csize);
TC9905.times = datenum(time(1,:),'yyyy-mm-ddTHH:MM');

TC9905.pressure = press;
TC9905.temperature = reshape(C{9}(ind),rsize,csize);
TC9905.salinity = reshape(C{10}(ind),rsize,csize);
TC9905.density = reshape(C{11}(ind),rsize,csize);
TC9905.oxygen = reshape(C{12}(ind),rsize,csize);
TC9905.fluorescence = reshape(C{13}(ind),rsize,csize);
TC9905.fluorcorrected = 1.1121 * TC9905.fluorescence + 0.0318;

%NUTRIENTS
no3 = load('/Volumes/EOD/Megan/TZCF Cruises/TC-99-05/Nutrients/NO2NO3.txt'); %nitrate+nitrite
po4 = load('/Volumes/EOD/Megan/TZCF Cruises/TC-99-05/Nutrients/PO4.txt'); %Phosphate
sio4 = load('/Volumes/EOD/Megan/TZCF Cruises/TC-99-05/Nutrients/SiO4.txt'); %Silicate

NUTS = {}; %Using DK1199_nuts-EAH.xlsx
NUTS.stations = 1:42;
NUTS.pressure = repmat(no3(:,1),1,42);
NUTS.nitrate = no3(:,2:43);
NUTS.phosphate = po4(:,2:43);
NUTS.silicate = sio4(:,2:43);
NUTS.latitude = repmat(22.75:0.25:33,10,1);
NUTS.longitude = repmat(202,10,42);

TC9905.NUTS = NUTS;

%Regular Potential Temperature and Potential density
TC9905.potentialtemperature = sw_ptmp(TC9905.salinity, TC9905.temperature,TC9905.pressure,0);
TC9905.potentialdensity = sw_pden(TC9905.salinity, TC9905.temperature,TC9905.pressure,0)-1000;

%New Absolute Salinity Scale! Gibbs seawater toolbox
TC9905.absolutesalinity = gsw_SA_from_SP(TC9905.salinity,TC9905.pressure,TC9905.longitude,TC9905.latitude);
TC9905.conservativetemperature = gsw_CT_from_t(TC9905.absolutesalinity,TC9905.temperature,TC9905.pressure);
TC9905.TEOSpotentialdensity = gsw_rho_CT(TC9905.absolutesalinity,TC9905.conservativetemperature,0)-1000; %with 0 ref pressure get pot dens.

save('TC9905Data.mat','TC9905');

plot(TC9905.temperature(:,1),TC9905.pressure(:,1)) %plot first station
set(gca,'ydir','reverse') %flip Y axis
hold on % add more to current plot
plot(TC9905.temperature(:,2),TC9905.pressure(:,2),'r-') %overplot 2nd sta in red
