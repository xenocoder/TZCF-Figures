%Make a barplot of the available HPLC for 2-degree bins. Just do total, prokaryotes, and eukaryotes
XI = 1:150; %Make spline based on pressure 0-175
% We will make 3 final bins based on 7 spline fits:
% Chla total
% SEXX02.HPLC.pigrats.chlapro (prochlorococcus)
% SEXX02.HPLC.pigrats.chlaprym (prymnesiophytes)
% SEXX02.HPLC.pigrats.chlapel (pelagophytes)
% SEXX02.HPLC.pigrats.chladiat (diatoms)
% SEXX02.HPLC.pigrats.chladino (dinoflagellates)
% SEXX02.HPLC.pigrats.chlaother (all other)
% SEXX02.HPLC.pigrats.chlatotal (total)

picopro = zeros(3,2);
picoeuk = zeros(3,2);
nanoeuk = zeros(3,2);

prochl = zeros(3,2);
prymchl = zeros(3,2);
pelchl = zeros(3,2);
diatchl = zeros(3,2);
dinochl = zeros(3,2);
otherchl = zeros(3,2);
totalchl = zeros(3,2);

%Calculate 2008
ssta = stationlistHPLC.STFZ(1,1);
esta = stationlistHPLC.STFZ(1,2);
x = SE0802.HPLC.pigrats.pressure(:,ssta);

[prochl(1,1), ~] = calcspline(SE0802.HPLC.pigrats.chlapro, x, XI, ssta, esta);
[prymchl(1,1), ~] = calcspline(SE0802.HPLC.pigrats.chlaprym, x, XI, ssta, esta);
[pelchl(1,1), ~] = calcspline(SE0802.HPLC.pigrats.chlapel, x, XI, ssta, esta);
[diatchl(1,1), ~] = calcspline(SE0802.HPLC.pigrats.chladiat, x, XI, ssta, esta);
[dinochl(1,1), ~] = calcspline(SE0802.HPLC.pigrats.chladino, x, XI, ssta, esta);
[otherchl(1,1), ~] = calcspline(SE0802.HPLC.pigrats.chlaothers, x, XI, ssta, esta);
[totalchl(1,1), ~] = calcspline(SE0802.HPLC.pigrats.chlatotal, x, XI, ssta, esta);

picopro(1,1) = prochl(1,1) + otherchl(1,1);
picoeuk(1,1) = prymchl(1,1) + pelchl(1,1);
nanoeuk(1,1) = diatchl(1,1) + dinochl(1,1);

%2008 TZCF
ssta = stationlistHPLC.TZCF(1,1);
esta = stationlistHPLC.TZCF(1,2);
x = SE0802.HPLC.pigrats.pressure(:,ssta);

[prochl(1,2), ~] = calcspline(SE0802.HPLC.pigrats.chlapro, x, XI, ssta, esta);
[prymchl(1,2), ~] = calcspline(SE0802.HPLC.pigrats.chlaprym, x, XI, ssta, esta);
[pelchl(1,2), ~] = calcspline(SE0802.HPLC.pigrats.chlapel, x, XI, ssta, esta);
[diatchl(1,2), ~] = calcspline(SE0802.HPLC.pigrats.chladiat, x, XI, ssta, esta);
[dinochl(1,2), ~] = calcspline(SE0802.HPLC.pigrats.chladino, x, XI, ssta, esta);
[otherchl(1,2), ~] = calcspline(SE0802.HPLC.pigrats.chlaothers, x, XI, ssta, esta);
[totalchl(1,2), ~] = calcspline(SE0802.HPLC.pigrats.chlatotal, x, XI, ssta, esta);

picopro(1,2) = prochl(1,2) + otherchl(1,2);
picoeuk(1,2) = prymchl(1,2) + pelchl(1,2);
nanoeuk(1,2) = diatchl(1,2) + dinochl(1,2);

%Calculate 2009
%2009 STFZ
ssta = stationlistHPLC.STFZ(2,1);
esta = stationlistHPLC.STFZ(2,2);
x = SE0902.HPLC.pigrats.pressure(:,ssta);

[prochl(2,1), ~] = calcspline(SE0902.HPLC.pigrats.chlapro, x, XI, ssta, esta);
[prymchl(2,1), ~] = calcspline(SE0902.HPLC.pigrats.chlaprym, x, XI, ssta, esta);
[pelchl(2,1), ~] = calcspline(SE0902.HPLC.pigrats.chlapel, x, XI, ssta, esta);
[diatchl(2,1), ~] = calcspline(SE0902.HPLC.pigrats.chladiat, x, XI, ssta, esta);
[dinochl(2,1), ~] = calcspline(SE0902.HPLC.pigrats.chladino, x, XI, ssta, esta);
[otherchl(2,1), ~] = calcspline(SE0902.HPLC.pigrats.chlaothers, x, XI, ssta, esta);
[totalchl(2,1), ~] = calcspline(SE0902.HPLC.pigrats.chlatotal, x, XI, ssta, esta);

picopro(2,1) = prochl(2,1) + otherchl(2,1);
picoeuk(2,1) = prymchl(2,1) + pelchl(2,1);
nanoeuk(2,1) = diatchl(2,1) + dinochl(2,1);

%2009 TZCF
ssta = stationlistHPLC.TZCF(2,1);
esta = stationlistHPLC.TZCF(2,2);
x = SE0902.HPLC.pigrats.pressure(:,ssta);

[prochl(2,2), ~] = calcspline(SE0902.HPLC.pigrats.chlapro, x, XI, ssta, esta);
[prymchl(2,2), ~] = calcspline(SE0902.HPLC.pigrats.chlaprym, x, XI, ssta, esta);
[pelchl(2,2), ~] = calcspline(SE0902.HPLC.pigrats.chlapel, x, XI, ssta, esta);
[diatchl(2,2), ~] = calcspline(SE0902.HPLC.pigrats.chladiat, x, XI, ssta, esta);
[dinochl(2,2), ~] = calcspline(SE0902.HPLC.pigrats.chladino, x, XI, ssta, esta);
[otherchl(2,2), ~] = calcspline(SE0902.HPLC.pigrats.chlaothers, x, XI, ssta, esta);
[totalchl(2,2), ~] = calcspline(SE0902.HPLC.pigrats.chlatotal, x, XI, ssta, esta);

picopro(2,2) = prochl(2,2) + otherchl(2,2);
picoeuk(2,2) = prymchl(2,2) + pelchl(2,2);
nanoeuk(2,2) = diatchl(2,2) + dinochl(2,2);

%2011 Southern STFZ
ssta = stationlistHPLC.STFZ(3,1);
esta = stationlistHPLC.STFZ(3,2);
x = SE1102.HPLC.pigrats.pressure(:,ssta);

[prochl(3,1), ~] = calcspline(SE1102.HPLC.pigrats.chlapro, x, XI, ssta, esta);
[prymchl(3,1), ~] = calcspline(SE1102.HPLC.pigrats.chlaprym, x, XI, ssta, esta);
[pelchl(3,1), ~] = calcspline(SE1102.HPLC.pigrats.chlapel, x, XI, ssta, esta);
[diatchl(3,1), ~] = calcspline(SE1102.HPLC.pigrats.chladiat, x, XI, ssta, esta);
[dinochl(3,1), ~] = calcspline(SE1102.HPLC.pigrats.chladino, x, XI, ssta, esta);
[otherchl(3,1), ~] = calcspline(SE1102.HPLC.pigrats.chlaothers, x, XI, ssta, esta);
[totalchl(3,1), ~] = calcspline(SE1102.HPLC.pigrats.chlatotal, x, XI, ssta, esta);

picopro(3,1) = prochl(3,1) + otherchl(3,1);
picoeuk(3,1) = prymchl(3,1) + pelchl(3,1);
nanoeuk(3,1) = diatchl(3,1) + dinochl(3,1);

%2011 TZCF
ssta = stationlistHPLC.TZCF(3,1);
esta = stationlistHPLC.TZCF(3,2);
x = SE1102.HPLC.pigrats.pressure(:,ssta);

[prochl(3,2), ~] = calcspline(SE1102.HPLC.pigrats.chlapro, x, XI, ssta, esta);
[prymchl(3,2), ~] = calcspline(SE1102.HPLC.pigrats.chlaprym, x, XI, ssta, esta);
[pelchl(3,2), ~] = calcspline(SE1102.HPLC.pigrats.chlapel, x, XI, ssta, esta);
[diatchl(3,2), ~] = calcspline(SE1102.HPLC.pigrats.chladiat, x, XI, ssta, esta);
[dinochl(3,2), ~] = calcspline(SE1102.HPLC.pigrats.chladino, x, XI, ssta, esta);
[otherchl(3,2), ~] = calcspline(SE1102.HPLC.pigrats.chlaothers, x, XI, ssta, esta);
[totalchl(3,2), ~] = calcspline(SE1102.HPLC.pigrats.chlatotal, x, XI, ssta, esta);


picopro(3,2) = prochl(3,2) + otherchl(3,2);
picoeuk(3,2) = prymchl(3,2) + pelchl(3,2);
nanoeuk(3,2) = diatchl(3,2) + dinochl(3,2);


years = [2008 2008;2009 2009;2011 2011];
zones = [1 2; 1 2; 1 2];
fid = fopen('chlpigdata.csv','w+');
fprintf(fid,'year,zone, Pro, Prym, Pel, Diat, Dino, Other, Total, Pico, Nano, Micro\n');
dlmwrite('chlpigdata.csv',[reshape(years,6,1),reshape(zones,6,1),reshape(prochl,6,1),reshape(prymchl,6,1),reshape(pelchl,6,1),reshape(diatchl,6,1),reshape(dinochl,6,1),reshape(otherchl,6,1),reshape(totalchl,6,1),reshape(picopro,6,1),reshape(picoeuk,6,1),reshape(nanoeuk,6,1)],'-append');
fclose(fid);

clear ssta esta x XI 