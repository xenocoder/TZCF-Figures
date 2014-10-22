clear
fid = fopen('data_from_SE0802CTD.txt','r');
%13 columns of data, (string, integer, string, string, 9 floating points.)
C = textscan(fid,'%s %d %s %s %f %f %f %f %f %f %f %f %f','HeaderLines',11);
fclose(fid);

%This loads in a cell wrapper with each column of information from the
%original file in a cell. So 13 original columns of data, C now has 13
%cells each representing a column of data. We have to pull out numbers to
%matrix.

%Numbers are in columns 2,5-13

%%NOTE%%
% The data from these cruises is NOT in order for the northernmost stations
% This data was sorted by hand in Excel first. You MUST make sure that the
% last few stations are in the correect longitudinal order!!! Same for
% SE0902 and SE1102.

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

SE0802 = ([]);
SE0802.cruise = C{1}(1);
SE0802.stations = sta;

lon = reshape(C{5}(ind),rsize,csize);
SE0802.longitude = lon(1,:);

lat = reshape(C{6}(ind),rsize,csize);
SE0802.latitude = lat(1,:);

time = reshape(C{4}(ind),rsize,csize);
SE0802.times = datenum(time(1,:),'yyyy-mm-ddTHH:MM');

SE0802.pressure = press;
SE0802.temperature = reshape(C{9}(ind),rsize,csize);
SE0802.salinity = reshape(C{10}(ind),rsize,csize);
SE0802.density = reshape(C{11}(ind),rsize,csize);
SE0802.oxygen = reshape(C{12}(ind),rsize,csize);
SE0802.fluorescence = reshape(C{13}(ind),rsize,csize);
SE0802.fluorcorrected = 1.9105 * SE0802.fluorescence - 0.0845;

rawnuts = load('/Volumes/EOD/Megan/TZCF Cruises/SE-08-02/Nutrients/NO3-PO4-SiO4.txt');

NUTS = {};
NUTS.stations = unique(rawnuts(:,1))';
NUTS.pressure = unique(rawnuts(:,4));
NUTS.nitrate = reshape(rawnuts(:,5),10,30);
NUTS.phosphate = reshape(rawnuts(:,6),10,30);
NUTS.silicate = reshape(rawnuts(:,7),10,30);
NUTS.latitude = reshape(rawnuts(:,3),10,30);
NUTS.longitude = reshape(rawnuts(:,2),10,30);

SE0802.NUTS = NUTS;

%Regular Potential Temperature and Potential density
SE0802.potentialtemperature = sw_ptmp(SE0802.salinity, SE0802.temperature,SE0802.pressure,0);
SE0802.potentialdensity = sw_pden(SE0802.salinity, SE0802.temperature,SE0802.pressure,0)-1000;

%New Absolute Salinity Scale! Gibbs seawater toolbox
SE0802.absolutesalinity = gsw_SA_from_SP(SE0802.salinity,SE0802.pressure,SE0802.longitude,SE0802.latitude);
SE0802.conservativetemperature = gsw_CT_from_t(SE0802.absolutesalinity,SE0802.temperature,SE0802.pressure);
SE0802.TEOSpotentialdensity = gsw_rho_CT(SE0802.absolutesalinity,SE0802.conservativetemperature,0)-1000; %with 0 ref pressure get pot dens.

save('SE0802Data.mat','SE0802');

plot(SE0802.temperature(:,1),SE0802.pressure(:,1)) %plot first station
set(gca,'ydir','reverse') %flip Y axis
hold on % add more to current plot
plot(SE0802.temperature(:,2),SE0802.pressure(:,2),'r-') %overplot 2nd sta in red