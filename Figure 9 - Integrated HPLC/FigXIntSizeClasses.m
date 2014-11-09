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

picopro = zeros(3,3);
picoeuk = zeros(3,3);
nanoeuk = zeros(3,3);
otherchl = zeros(3,3);
totalchl = zeros(3,3);

%Calculate 2008
ssta = stationlistHPLC.SSTFZ(1,1);
esta = stationlistHPLC.SSTFZ(1,2);
x = SE0802.HPLC.pigrats.pressure(:,ssta);

[proint, ~] = calcspline(SE0802.HPLC.pigrats.chlapro, x, XI, ssta, esta);
[prymint, ~] = calcspline(SE0802.HPLC.pigrats.chlaprym, x, XI, ssta, esta);
[pelint, ~] = calcspline(SE0802.HPLC.pigrats.chlapel, x, XI, ssta, esta);
[diatint, ~] = calcspline(SE0802.HPLC.pigrats.chladiat, x, XI, ssta, esta);
[dinoint, ~] = calcspline(SE0802.HPLC.pigrats.chladino, x, XI, ssta, esta);
[otherint, ~] = calcspline(SE0802.HPLC.pigrats.chlaothers, x, XI, ssta, esta);
[totalint, ~] = calcspline(SE0802.HPLC.pigrats.chlatotal, x, XI, ssta, esta);

picopro(1,1) = proint + otherint;
picoeuk(1,1) = prymint + pelint;
nanoeuk(1,1) = diatint + dinoint;
otherchl(1,1) = otherint;
totalchl(1,1) = totalint;

%2008 STFZ
ssta = stationlistHPLC.STFZ(1,1);
esta = stationlistHPLC.STFZ(1,2);
x = SE0802.HPLC.pigrats.pressure(:,ssta);

[proint, ~] = calcspline(SE0802.HPLC.pigrats.chlapro, x, XI, ssta, esta);
[prymint, ~] = calcspline(SE0802.HPLC.pigrats.chlaprym, x, XI, ssta, esta);
[pelint, ~] = calcspline(SE0802.HPLC.pigrats.chlapel, x, XI, ssta, esta);
[diatint, ~] = calcspline(SE0802.HPLC.pigrats.chladiat, x, XI, ssta, esta);
[dinoint, ~] = calcspline(SE0802.HPLC.pigrats.chladino, x, XI, ssta, esta);
[otherint, ~] = calcspline(SE0802.HPLC.pigrats.chlaothers, x, XI, ssta, esta);
[totalint, ~] = calcspline(SE0802.HPLC.pigrats.chlatotal, x, XI, ssta, esta);

picopro(1,2) = proint + otherint;
picoeuk(1,2) = prymint + pelint;
nanoeuk(1,2) = diatint + dinoint;
otherchl(1,2) = otherint;
totalchl(1,2) = totalint;

%2008 TZCF
ssta = stationlistHPLC.TZCF(1,1);
esta = stationlistHPLC.TZCF(1,2);
x = SE0802.HPLC.pigrats.pressure(:,ssta);

[proint, ~] = calcspline(SE0802.HPLC.pigrats.chlapro, x, XI, ssta, esta);
[prymint, ~] = calcspline(SE0802.HPLC.pigrats.chlaprym, x, XI, ssta, esta);
[pelint, ~] = calcspline(SE0802.HPLC.pigrats.chlapel, x, XI, ssta, esta);
[diatint, ~] = calcspline(SE0802.HPLC.pigrats.chladiat, x, XI, ssta, esta);
[dinoint, ~] = calcspline(SE0802.HPLC.pigrats.chladino, x, XI, ssta, esta);
[otherint, ~] = calcspline(SE0802.HPLC.pigrats.chlaothers, x, XI, ssta, esta);
[totalint, ~] = calcspline(SE0802.HPLC.pigrats.chlatotal, x, XI, ssta, esta);

picopro(1,3) = proint + otherint;
picoeuk(1,3) = prymint + pelint;
nanoeuk(1,3) = diatint + dinoint;
otherchl(1,3) = otherint;
totalchl(1,3) = totalint;

%Calculate 2009
%2009 SSTFZ
ssta = stationlistHPLC.SSTFZ(2,1);
esta = stationlistHPLC.SSTFZ(2,2);
x = SE0902.HPLC.pigrats.pressure(:,ssta);

[proint, ~] = calcspline(SE0902.HPLC.pigrats.chlapro, x, XI, ssta, esta);
[prymint, ~] = calcspline(SE0902.HPLC.pigrats.chlaprym, x, XI, ssta, esta);
[pelint, ~] = calcspline(SE0902.HPLC.pigrats.chlapel, x, XI, ssta, esta);
[diatint, ~] = calcspline(SE0902.HPLC.pigrats.chladiat, x, XI, ssta, esta);
[dinoint, ~] = calcspline(SE0902.HPLC.pigrats.chladino, x, XI, ssta, esta);
[otherint, ~] = calcspline(SE0902.HPLC.pigrats.chlaothers, x, XI, ssta, esta);
[totalint, ~] = calcspline(SE0902.HPLC.pigrats.chlatotal, x, XI, ssta, esta);

picopro(2,1) = proint + otherint;
picoeuk(2,1) = prymint + pelint;
nanoeuk(2,1) = diatint + dinoint;
otherchl(2,1) = otherint;
totalchl(2,1) = totalint;

%2009 STFZ
ssta = stationlistHPLC.STFZ(2,1);
esta = stationlistHPLC.STFZ(2,2);
x = SE0902.HPLC.pigrats.pressure(:,ssta);

[proint, ~] = calcspline(SE0902.HPLC.pigrats.chlapro, x, XI, ssta, esta);
[prymint, ~] = calcspline(SE0902.HPLC.pigrats.chlaprym, x, XI, ssta, esta);
[pelint, ~] = calcspline(SE0902.HPLC.pigrats.chlapel, x, XI, ssta, esta);
[diatint, ~] = calcspline(SE0902.HPLC.pigrats.chladiat, x, XI, ssta, esta);
[dinoint, ~] = calcspline(SE0902.HPLC.pigrats.chladino, x, XI, ssta, esta);
[otherint, ~] = calcspline(SE0902.HPLC.pigrats.chlaothers, x, XI, ssta, esta);
[totalint, ~] = calcspline(SE0902.HPLC.pigrats.chlatotal, x, XI, ssta, esta);

picopro(2,2) = proint + otherint;
picoeuk(2,2) = prymint + pelint;
nanoeuk(2,2) = diatint + dinoint;
otherchl(2,2) = otherint;
totalchl(2,2) = totalint;

%2009 TZCF
ssta = stationlistHPLC.TZCF(2,1);
esta = stationlistHPLC.TZCF(2,2);
x = SE0902.HPLC.pigrats.pressure(:,ssta);

[proint, ~] = calcspline(SE0902.HPLC.pigrats.chlapro, x, XI, ssta, esta);
[prymint, ~] = calcspline(SE0902.HPLC.pigrats.chlaprym, x, XI, ssta, esta);
[pelint, ~] = calcspline(SE0902.HPLC.pigrats.chlapel, x, XI, ssta, esta);
[diatint, ~] = calcspline(SE0902.HPLC.pigrats.chladiat, x, XI, ssta, esta);
[dinoint, ~] = calcspline(SE0902.HPLC.pigrats.chladino, x, XI, ssta, esta);
[otherint, ~] = calcspline(SE0902.HPLC.pigrats.chlaothers, x, XI, ssta, esta);
[totalint, ~] = calcspline(SE0902.HPLC.pigrats.chlatotal, x, XI, ssta, esta);

picopro(2,3) = proint + otherint;
picoeuk(2,3) = prymint + pelint;
nanoeuk(2,3) = diatint + dinoint;
otherchl(2,3) = otherint;
totalchl(2,3) = totalint;

%2011 Southern STFZ
ssta = stationlistHPLC.SSTFZ(3,1);
esta = stationlistHPLC.SSTFZ(3,2);
x = SE1102.HPLC.pigrats.pressure(:,ssta);

[proint, ~] = calcspline(SE1102.HPLC.pigrats.chlapro, x, XI, ssta, esta);
[prymint, ~] = calcspline(SE1102.HPLC.pigrats.chlaprym, x, XI, ssta, esta);
[pelint, ~] = calcspline(SE1102.HPLC.pigrats.chlapel, x, XI, ssta, esta);
[diatint, ~] = calcspline(SE1102.HPLC.pigrats.chladiat, x, XI, ssta, esta);
[dinoint, ~] = calcspline(SE1102.HPLC.pigrats.chladino, x, XI, ssta, esta);
[otherint, ~] = calcspline(SE1102.HPLC.pigrats.chlaothers, x, XI, ssta, esta);
[totalint, ~] = calcspline(SE1102.HPLC.pigrats.chlatotal, x, XI, ssta, esta);


picopro(3,1) = proint + otherint;
picoeuk(3,1) = prymint + pelint;
nanoeuk(3,1) = diatint + dinoint;
otherchl(3,1) = otherint;
totalchl(3,1) = totalint;

%2011 STFZ
ssta = stationlistHPLC.STFZ(3,1);
esta = stationlistHPLC.STFZ(3,2);
x = SE1102.HPLC.pigrats.pressure(:,ssta);

[proint, ~] = calcspline(SE1102.HPLC.pigrats.chlapro, x, XI, ssta, esta);
[prymint, ~] = calcspline(SE1102.HPLC.pigrats.chlaprym, x, XI, ssta, esta);
[pelint, ~] = calcspline(SE1102.HPLC.pigrats.chlapel, x, XI, ssta, esta);
[diatint, ~] = calcspline(SE1102.HPLC.pigrats.chladiat, x, XI, ssta, esta);
[dinoint, ~] = calcspline(SE1102.HPLC.pigrats.chladino, x, XI, ssta, esta);
[otherint, ~] = calcspline(SE1102.HPLC.pigrats.chlaothers, x, XI, ssta, esta);
[totalint, ~] = calcspline(SE1102.HPLC.pigrats.chlatotal, x, XI, ssta, esta);


picopro(3,2) = proint + otherint;
picoeuk(3,2) = prymint + pelint;
nanoeuk(3,2) = diatint + dinoint;
otherchl(3,2) = otherint;
totalchl(3,2) = totalint;

%2011 TZCF
ssta = stationlistHPLC.TZCF(3,1);
esta = stationlistHPLC.TZCF(3,2);
x = SE1102.HPLC.pigrats.pressure(:,ssta);

[proint, ~] = calcspline(SE1102.HPLC.pigrats.chlapro, x, XI, ssta, esta);
[prymint, ~] = calcspline(SE1102.HPLC.pigrats.chlaprym, x, XI, ssta, esta);
[pelint, ~] = calcspline(SE1102.HPLC.pigrats.chlapel, x, XI, ssta, esta);
[diatint, ~] = calcspline(SE1102.HPLC.pigrats.chladiat, x, XI, ssta, esta);
[dinoint, ~] = calcspline(SE1102.HPLC.pigrats.chladino, x, XI, ssta, esta);
[otherint, ~] = calcspline(SE1102.HPLC.pigrats.chlaothers, x, XI, ssta, esta);
[totalint, ~] = calcspline(SE1102.HPLC.pigrats.chlatotal, x, XI, ssta, esta);


picopro(3,3) = proint + otherint;
picoeuk(3,3) = prymint + pelint;
nanoeuk(3,3) = diatint + dinoint;
otherchl(3,3) = otherint;
totalchl(3,3) = totalint;

clear proint prymint pelint diatint dinoint otherint totalint ssta esta x XI 