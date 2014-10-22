clear
fid = fopen('data_from_SE1102L2CTD_26to36N.txt','r');
%26 columns of data, (string, integer, string, string, 9 floating points.)
C = textscan(fid,'%s %d %s %s %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f','HeaderLines',11);
fclose(fid);

%This loads in a cell wrapper with each column of information from the
%original file in a cell. So 13 original columns of data, C now has 13
%cells each representing a column of data. We have to pull out numbers to
%matrix.

%Numbers are in columns 2,5-13


t = C{2};
sta = flipud(unique(t)); %We went North-South this leg
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

SE1102 = ([]);
SE1102.cruise = C{1}(1);
SE1102.stations = sta;

lon = reshape(C{5}(ind),rsize,csize);
SE1102.longitude = lon(1,:);

lat = reshape(C{6}(ind),rsize,csize);
SE1102.latitude = lat(1,:);

time = reshape(C{4}(ind),rsize,csize);
SE1102.times = datenum(time(1,:),'yyyy-mm-ddTHH:MM');

SE1102.pressure = press;
SE1102.temperature = reshape(C{9}(ind),rsize,csize);
SE1102.salinity = reshape(C{21}(ind),rsize,csize);
SE1102.density = reshape(C{23}(ind),rsize,csize);
SE1102.oxygen = reshape(C{19}(ind),rsize,csize);
SE1102.fluorescence = reshape(C{18}(ind),rsize,csize); %Use welabs to match 2008,2009 and also as Seapoint seems to lag with depth!!!

SE1102.fluorcorrected = 0.4131 * SE1102.fluorescence + 0.0568;

rawnuts=load('/Volumes/EOD/Megan/TZCF Cruises/SE-11-02/Nutrients/NO3PO4SiO4-SE1102-EAH.txt');
NUTS = {};
NUTS.stations = reshape(rawnuts(:,1),10,23);
NUTS.pressure = reshape(rawnuts(:,5),10,23);
NUTS.nitrate = reshape(rawnuts(:,6),10,23);
NUTS.phosphate = reshape(rawnuts(:,7),10,23);
NUTS.silicate = reshape(rawnuts(:,8),10,23);
NUTS.latitude = reshape(rawnuts(:,3),10,23);
NUTS.longitude = reshape(rawnuts(:,4),10,23);

SE1102.NUTS = NUTS;

%HPLC
HPLC = {};
a=load('/Volumes/EOD/Megan/TZCF Cruises/SE-11-02/HPLC/HPLC-SE1102-formatlab-EAH.txt');
hsta = 21;
hdep = 10;
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

SE1102.HPLC = HPLC;

%Regular Potential Temperature and Potential density
SE1102.potentialtemperature = sw_ptmp(SE1102.salinity, SE1102.temperature,SE1102.pressure,0);
SE1102.potentialdensity = sw_pden(SE1102.salinity, SE1102.temperature,SE1102.pressure,0)-1000;

%New Absolute Salinity Scale! Gibbs seawater toolbox
SE1102.absolutesalinity = gsw_SA_from_SP(SE1102.salinity,SE1102.pressure,SE1102.longitude,SE1102.latitude);
SE1102.conservativetemperature = gsw_CT_from_t(SE1102.absolutesalinity,SE1102.temperature,SE1102.pressure);
SE1102.TEOSpotentialdensity = gsw_rho_CT(SE1102.absolutesalinity,SE1102.conservativetemperature,0)-1000; %with 0 ref pressure get pot dens.

save('SE1102Data.mat','SE1102');

%plot(SE1102.temperature(:,1),SE1102.pressure(:,1)) %plot first station
%set(gca,'ydir','reverse') %flip Y axis
%hold on % add more to current plot
%plot(SE1102.temperature(:,2),SE1102.pressure(:,2),'r-') %overplot 2nd sta in red

imagesc(SE1102.latitude(21:60),press(:,1),SE1102.temperature(:,21:60))
hold on
contour(SE1102.latitude(21:60),press(:,1),SE1102.temperature(:,21:60),'w')