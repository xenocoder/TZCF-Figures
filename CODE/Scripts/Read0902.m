clear
fid = fopen('data_from_SE0902CTD.txt','r');
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

SE0902 = ([]);
SE0902.cruise = C{1}(1);
SE0902.stations = sta;

lon = reshape(C{5}(ind),rsize,csize);
SE0902.longitude = lon(1,:);

lat = reshape(C{6}(ind),rsize,csize);
SE0902.latitude = lat(1,:);

time = reshape(C{4}(ind),rsize,csize);
SE0902.times = datenum(time(1,:),'yyyy-mm-ddTHH:MM');

SE0902.pressure = press;
SE0902.temperature = reshape(C{9}(ind),rsize,csize);
SE0902.salinity = reshape(C{10}(ind),rsize,csize);
SE0902.density = reshape(C{11}(ind),rsize,csize);
SE0902.oxygen = reshape(C{12}(ind),rsize,csize);
SE0902.fluorescence = reshape(C{13}(ind),rsize,csize);
SE0902.fluorcorrected = 1.0293 * SE0902.fluorescence - 0.0518;

rawnuts = load('/Volumes/EOD/Megan/TZCF Cruises/SE-09-02/Nutrients/NO3-PO4-SiO4.txt');

NUTS = {};
NUTS.stations = unique(rawnuts(:,1))';
NUTS.pressure = unique(rawnuts(:,4));
NUTS.nitrate = reshape(rawnuts(:,5),9,16);
NUTS.phosphate = reshape(rawnuts(:,6),9,16);
NUTS.silicate = reshape(rawnuts(:,7),9,16);
NUTS.latitude = reshape(rawnuts(:,3),9,16);
NUTS.longitude = reshape(rawnuts(:,2),9,16);

SE0902.NUTS = NUTS;

%HPLC
HPLC = {};
a=load('/Volumes/EOD/Megan/TZCF Cruises/SE-09-02/HPLC/HPLC-SE0902-formatlab-EAH.txt');
hsta = 17;
hdep = 9;
HPLC.pressure = reshape(a(:,3),hdep,hsta);
HPLC.stations = reshape(a(:,2),hdep,hsta);
HPLC.latitude = reshape(a(:,1),hdep,hsta);
HPLC.longitude = repmat(202,hsta,1);
HPLC.chlda = reshape(a(:,4),hdep,hsta);
HPLC.chlc = reshape(a(:,5),hdep,hsta);
HPLC.per = reshape(a(:,6),hdep,hsta);
HPLC.but = reshape(a(:,7),hdep,hsta);
HPLC.fuco = reshape(a(:,8),hdep,hsta);
HPLC.hex = reshape(a(:,9),hdep,hsta);
HPLC.pras = reshape(a(:,10),hdep,hsta);
HPLC.viola = reshape(a(:,11),hdep,hsta);
HPLC.ddx = reshape(a(:,12),hdep,hsta);
HPLC.allox = reshape(a(:,13),hdep,hsta);
HPLC.dtx = reshape(a(:,14),hdep,hsta);
HPLC.lut = reshape(a(:,15),hdep,hsta);
HPLC.zeax = reshape(a(:,16),hdep,hsta);
HPLC.mvb = reshape(a(:,17),hdep,hsta);
HPLC.acar = reshape(a(:,18),hdep,hsta);
HPLC.bcar = reshape(a(:,19),hdep,hsta);
HPLC.dva = reshape(a(:,20),hdep,hsta);
HPLC.mva = reshape(a(:,21),hdep,hsta);
HPLC.totalchla = reshape(a(:,22),hdep,hsta);

HPLC.abbrev = {'pressure','stations','latitude','CHLDA','CHLC','PER','BUT','FUCO','HEX','PRAS','VIOLA','DDX','ALLOX','DTX','LUT','ZEAX','MV-CHLB','A-CAR','B-CAR','DV-CHLA','MV-CHLA','TOTCHLA,'};
HPLC.fullnames = {'pressure','stations','latitude','chlorophyllide a','chlorophyll c','peridinin','19''-butanoyloxyfucoxanthin','fucoxanthin','19''-hexanoyloxyfucoxanthin','prasinoxanthin','violaxanthin','diadinoxanthin','alloxanthin','diatoxanthin','lutein','zeaxanthin','chlorophyll b','alpha carotene','beta carotene','divinyl chlorophyll a','monovinyl chlorophyll a','total chlorophyll a,'};

SE0902.HPLC = HPLC;

%Regular Potential Temperature and Potential density
SE0902.potentialtemperature = sw_ptmp(SE0902.salinity, SE0902.temperature,SE0902.pressure,0);
SE0902.potentialdensity = sw_pden(SE0902.salinity, SE0902.temperature,SE0902.pressure,0)-1000;

%New Absolute Salinity Scale! Gibbs seawater toolbox
SE0902.absolutesalinity = gsw_SA_from_SP(SE0902.salinity,SE0902.pressure,SE0902.longitude,SE0902.latitude);
SE0902.conservativetemperature = gsw_CT_from_t(SE0902.absolutesalinity,SE0902.temperature,SE0902.pressure);
SE0902.TEOSpotentialdensity = gsw_rho_CT(SE0902.absolutesalinity,SE0902.conservativetemperature,0)-1000; %with 0 ref pressure get pot dens.

save('SE0902Data.mat','SE0902');

plot(SE0902.temperature(:,1),SE0902.pressure(:,1)) %plot first station
set(gca,'ydir','reverse') %flip Y axis
hold on % add more to current plot
plot(SE0902.temperature(:,2),SE0902.pressure(:,2),'r-') %overplot 2nd sta in red