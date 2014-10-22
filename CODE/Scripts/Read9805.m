clear

sal = load('/Volumes/EOD/Megan/TZCF Cruises/TC-98-05/CTD/SAL158.DAT'); %salinity
temp = load('/Volumes/EOD/Megan/TZCF Cruises/TC-98-05/CTD/TEMP158.DAT'); % temperature
sigt = load('/Volumes/EOD/Megan/TZCF Cruises/TC-98-05/CTD/SIGT158.DAT'); %sigma-theta
o2 = load('/Volumes/EOD/Megan/TZCF Cruises/TC-98-05/CTD/DOX158.DAT'); %dissolved oxygen
turner = load('/Volumes/EOD/Megan/TZCF Cruises/TC-98-05/CTD/TURNCHL.DAT'); %Turner extracted Chla

%Saving data from 26-33 north only

TC9805 = ([]);
TC9805.cruise = '98-05';
TC9805.stations = 13:41;;
TC9805.longitude = repmat(188,1,29);
TC9805.latitude = 26:0.25:33;
TC9805.times = NaN(1,29);

TC9805.pressure = repmat(5:5:500,29,1)';
TC9805.temperature = temp(:,14:42); %first column is pressure
TC9805.salinity = sal(:,14:42);

TC9805.density = sigt(:,14:42);
TC9805.oxygen = o2(:,14:42);

TC9805.fluorescence = zeros(100,29); %Make zero array the same size as others
TC9805.fluorescence(1:40,:) = chl(:,13:41); %no pressure first column
TC9805.fluorcorrected = 0.0968+(0.6088.*TC9805.fluorescence); %correction factor from Turner

%NUTRIENTS
no3 = load('/Volumes/EOD/Megan/TZCF Cruises/TC-98-05/CTD/NITRATE.DAT'); %nitrate+nitrite
po4 = load('/Volumes/EOD/Megan/TZCF Cruises/TC-98-05/CTD/PO4.DAT'); %Phosphate
chl = load('/Volumes/EOD/Megan/TZCF Cruises/TC-98-05/CTD/CHLA158.DAT'); %chlorophyll
sio4 = load('/Volumes/EOD/Megan/TZCF Cruises/TC-98-05/CTD/SILICATE.DAT'); %Silicate


NUTS = {};
NUTS.stations = 13:41;
NUTS.pressure = repmat([0 35 50 65 80 100 150 300]',1,29);
NUTS.pressure(:,14) = [0 35 50 65 80 100 125 200]';
NUTS.nitrate = no3(:,2:30);
NUTS.phosphate = po4(:,2:30);
NUTS.silicate = sio4(:,2:30);
NUTS.latitude = repmat(26:0.25:33,8,1);
NUTS.longitude = repmat(202,8,29);

TC9805.NUTS = NUTS;

%HPLC
HPLC = {};
%load('/Volumes/EOD/Megan/TZCF Cruises/TC-98-05/HPLC/HPLC98.mat')
a=load('/Volumes/EOD/Megan/TZCF Cruises/TC-98-05/HPLC/HPLC-formatlab-EAH.txt');
hsta = 13;
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

TC9805.HPLC = HPLC;

%Regular Potential Temperature and Potential density
TC9805.potentialtemperature = sw_ptmp(TC9805.salinity, TC9805.temperature,TC9805.pressure,0);
TC9805.potentialdensity = sw_pden(TC9805.salinity, TC9805.temperature,TC9805.pressure,0)-1000;

%New Absolute Salinity Scale! Gibbs seawater toolbox
TC9805.absolutesalinity = gsw_SA_from_SP(TC9805.salinity,TC9805.pressure,TC9805.longitude,TC9805.latitude);
TC9805.conservativetemperature = gsw_CT_from_t(TC9805.absolutesalinity,TC9805.temperature,TC9805.pressure);
TC9805.TEOSpotentialdensity = gsw_rho_CT(TC9805.absolutesalinity,TC9805.conservativetemperature,0)-1000; %with 0 ref pressure get pot dens.

save('TC9805Data.mat','TC9805');

clf
plot(TC9805.temperature(:,1),TC9805.pressure(:,1)) %plot first station
set(gca,'ydir','reverse') %flip Y axis
hold on % add more to current plot
plot(TC9805.temperature(:,2),TC9805.pressure(:,2),'r-') %overplot 2nd sta in red