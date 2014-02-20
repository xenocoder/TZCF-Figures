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