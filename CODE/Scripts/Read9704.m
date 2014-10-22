clear
fid = fopen('data_from_TC9704.txt','r');
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

TC9704 = ([]);
TC9704.cruise = C{1}(1);
TC9704.stations = sta;

lon = reshape(C{5}(ind),rsize,csize);
TC9704.longitude = lon(1,:);

lat = reshape(C{6}(ind),rsize,csize);
TC9704.latitude = lat(1,:);

time = reshape(C{4}(ind),rsize,csize);
TC9704.times = datenum(time(1,:),'yyyy-mm-ddTHH:MM');

TC9704.pressure = press;
TC9704.temperature = reshape(C{9}(ind),rsize,csize);
TC9704.salinity = reshape(C{10}(ind),rsize,csize);
TC9704.density = reshape(C{11}(ind),rsize,csize);
TC9704.oxygen = reshape(C{12}(ind),rsize,csize);
TC9704.fluorescence = reshape(C{13}(ind),rsize,csize);
TC9704.fluorcorrected = 0.6558 * TC9704.fluorescence + 0.0836; %from Turner correction in CHL9704-EAH.xlsx

%Regular Potential Temperature and Potential density
TC9704.potentialtemperature = sw_ptmp(TC9704.salinity, TC9704.temperature,TC9704.pressure,0);
TC9704.potentialdensity = sw_pden(TC9704.salinity, TC9704.temperature,TC9704.pressure,0)-1000;

%New Absolute Salinity Scale! Gibbs seawater toolbox
TC9704.absolutesalinity = gsw_SA_from_SP(TC9704.salinity,TC9704.pressure,TC9704.longitude,TC9704.latitude);
TC9704.conservativetemperature = gsw_CT_from_t(TC9704.absolutesalinity,TC9704.temperature,TC9704.pressure);
TC9704.TEOSpotentialdensity = gsw_rho_CT(TC9704.absolutesalinity,TC9704.conservativetemperature,0)-1000; %with 0 ref pressure get pot dens.

save('TC9704Data.mat','TC9704');

plot(TC9704.temperature(:,1),TC9704.pressure(:,1)) %plot first station
set(gca,'ydir','reverse') %flip Y axis
hold on % add more to current plot
plot(TC9704.temperature(:,2),TC9704.pressure(:,2),'r-') %overplot 2nd sta in red