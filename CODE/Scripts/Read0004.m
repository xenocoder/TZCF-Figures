clear
fid = fopen('data_from_TC0004.txt','r');
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
rsize = (ulim-llim)/2+1;
csize = len;

ind = find(presstemp>=llim&presstemp<=ulim);
p1 = presstemp(ind);
press = reshape(p1,rsize,csize);

TC0004 = ([]);
TC0004.cruise = C{1}(1);
TC0004.stations = sta;

lon = reshape(C{5}(ind),rsize,csize);
TC0004.longitude = lon(1,:);

lat = reshape(C{6}(ind),rsize,csize); %Watch that latitude 28.05 is not here! Should be 28.50N!
TC0004.latitude = lat(1,:);

time = reshape(C{4}(ind),rsize,csize);
TC0004.times = datenum(time(1,:),'yyyy-mm-ddTHH:MM');

TC0004.pressure = press;
TC0004.temperature = reshape(C{9}(ind),rsize,csize);
TC0004.salinity = reshape(C{10}(ind),rsize,csize);
TC0004.density = reshape(C{11}(ind),rsize,csize);
TC0004.oxygen = reshape(C{12}(ind),rsize,csize);
TC0004.fluorescence = reshape(C{13}(ind),rsize,csize); %Seapoint!
TC0004.fluorcorrected = 1.786 * TC0004.fluorescence + 0.063;

rawnuts = load('/Volumes/EOD/Megan/TZCF Cruises/TC-00-04/Nutrients/NO3-PO4-SiO4.txt');

NUTS = {};
NUTS.stations = unique(rawnuts(:,2))';
NUTS.pressure = unique(rawnuts(:,3));
NUTS.nitrate = reshape(rawnuts(:,4),7,29);
NUTS.phosphate = reshape(rawnuts(:,5),7,29);
NUTS.silicate = reshape(rawnuts(:,6),7,29);
NUTS.latitude = repmat(unique(rawnuts(:,7))',7,1);
NUTS.longitude = repmat(202,7,29);

TC0004.NUTS = NUTS;

%Regular Potential Temperature and Potential density
TC0004.potentialtemperature = sw_ptmp(TC0004.salinity, TC0004.temperature,TC0004.pressure,0);
TC0004.potentialdensity = sw_pden(TC0004.salinity, TC0004.temperature,TC0004.pressure,0)-1000;

%New Absolute Salinity Scale! Gibbs seawater toolbox
TC0004.absolutesalinity = gsw_SA_from_SP(TC0004.salinity,TC0004.pressure,TC0004.longitude,TC0004.latitude);
TC0004.conservativetemperature = gsw_CT_from_t(TC0004.absolutesalinity,TC0004.temperature,TC0004.pressure);
TC0004.TEOSpotentialdensity = gsw_rho_CT(TC0004.absolutesalinity,TC0004.conservativetemperature,0)-1000; %with 0 ref pressure get pot dens.

save('TC0004Data.mat','TC0004');

plot(TC0004.temperature(:,1),TC0004.pressure(:,1)) %plot first station
set(gca,'ydir','reverse') %flip Y axis
hold on % add more to current plot
plot(TC0004.temperature(:,2),TC0004.pressure(:,2),'r-') %overplot 2nd sta in red