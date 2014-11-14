%Make a barplot of the available HPLC for 2-degree bins. Just do total, prokaryotes, and eukaryotes
XI = 1:175; %Make spline based on pressure 0-175
% We will make 3 final bins based on 7 spline fits:
% Chla total
% SEXX02.HPLC.hirata.chlapro (prochlorococcus)
% SEXX02.HPLC.hirata.chlaprym (prymnesiophytes)
% SEXX02.HPLC.hirata.chlapel (pelagophytes)
% SEXX02.HPLC.hirata.chladiat (diatoms)
% SEXX02.HPLC.hirata.chladino (dinoflagellates)
% SEXX02.HPLC.hirata.chlaother (all other)
% SEXX02.HPLC.hirata.chlatotal (total)

picopl = zeros(3,2);
nanopl = zeros(3,2);
micropl = zeros(3,2);

proc = zeros(3,2);
prok = zeros(3,2);
picoeuk = zeros(3,2);
prym = zeros(3,2);
galgae = zeros(3,2);
diat = zeros(3,2);
dino = zeros(3,2);
SDP = zeros(3,2);
totalchl = zeros(3,2);

%Calculate 2008
ssta = stationlistHPLC.STFZ(1,1);
esta = stationlistHPLC.STFZ(1,2);
x = SE0802.HPLC.pigrats.pressure(:,ssta);

[proc(1,1), ~] = calcspline(SE0802.HPLC.hirata.proc, x, XI, ssta, esta);
[prok(1,1), ~] = calcspline(SE0802.HPLC.hirata.prok, x, XI, ssta, esta);
[picoeuk(1,1), ~] = calcspline(SE0802.HPLC.hirata.picoeuk, x, XI, ssta, esta);
[prym(1,1), ~] = calcspline(SE0802.HPLC.hirata.prym, x, XI, ssta, esta);
[galgae(1,1), ~] = calcspline(SE0802.HPLC.hirata.galgae, x, XI, ssta, esta);
[diat(1,1), ~] = calcspline(SE0802.HPLC.hirata.diatoms, x, XI, ssta, esta);
[dino(1,1), ~] = calcspline(SE0802.HPLC.hirata.dino, x, XI, ssta, esta);
[picopl(1,1), ~] = calcspline(SE0802.HPLC.hirata.picopl, x, XI, ssta, esta);
[nanopl(1,1), ~] = calcspline(SE0802.HPLC.hirata.nanopl, x, XI, ssta, esta);
[micropl(1,1), ~] = calcspline(SE0802.HPLC.hirata.micropl, x, XI, ssta, esta);
[SDP(1,1), ~] = calcspline(SE0802.HPLC.hirata.SDP, x, XI, ssta, esta);
[totalchl(1,1), ~] = calcspline(SE0802.HPLC.hirata.C, x, XI, ssta, esta);

%2008 TZCF
ssta = stationlistHPLC.TZCF(1,1);
esta = stationlistHPLC.TZCF(1,2);
x = SE0802.HPLC.pigrats.pressure(:,ssta);

[proc(1,2), ~] = calcspline(SE0802.HPLC.hirata.proc, x, XI, ssta, esta);
[prok(1,2), ~] = calcspline(SE0802.HPLC.hirata.prok, x, XI, ssta, esta);
[picoeuk(1,2), ~] = calcspline(SE0802.HPLC.hirata.picoeuk, x, XI, ssta, esta);
[prym(1,2), ~] = calcspline(SE0802.HPLC.hirata.prym, x, XI, ssta, esta);
[galgae(1,2), ~] = calcspline(SE0802.HPLC.hirata.galgae, x, XI, ssta, esta);
[diat(1,2), ~] = calcspline(SE0802.HPLC.hirata.diatoms, x, XI, ssta, esta);
[dino(1,2), ~] = calcspline(SE0802.HPLC.hirata.dino, x, XI, ssta, esta);
[picopl(1,2), ~] = calcspline(SE0802.HPLC.hirata.picopl, x, XI, ssta, esta);
[nanopl(1,2), ~] = calcspline(SE0802.HPLC.hirata.nanopl, x, XI, ssta, esta);
[micropl(1,2), ~] = calcspline(SE0802.HPLC.hirata.micropl, x, XI, ssta, esta);
[SDP(1,2), ~] = calcspline(SE0802.HPLC.hirata.SDP, x, XI, ssta, esta);
[totalchl(1,2), ~] = calcspline(SE0802.HPLC.hirata.C, x, XI, ssta, esta);

%Calculate 2009
%2009 STFZ
ssta = stationlistHPLC.STFZ(2,1);
esta = stationlistHPLC.STFZ(2,2);
x = SE0902.HPLC.pigrats.pressure(:,ssta);

[proc(2,1), ~] = calcspline(SE0902.HPLC.hirata.proc, x, XI, ssta, esta);
[prok(2,1), ~] = calcspline(SE0902.HPLC.hirata.prok, x, XI, ssta, esta);
[picoeuk(2,1), ~] = calcspline(SE0902.HPLC.hirata.picoeuk, x, XI, ssta, esta);
[prym(2,1), ~] = calcspline(SE0902.HPLC.hirata.prym, x, XI, ssta, esta);
[galgae(2,1), ~] = calcspline(SE0902.HPLC.hirata.galgae, x, XI, ssta, esta);
[diat(2,1), ~] = calcspline(SE0902.HPLC.hirata.diatoms, x, XI, ssta, esta);
[dino(2,1), ~] = calcspline(SE0902.HPLC.hirata.dino, x, XI, ssta, esta);
[picopl(2,1), ~] = calcspline(SE0902.HPLC.hirata.picopl, x, XI, ssta, esta);
[nanopl(2,1), ~] = calcspline(SE0902.HPLC.hirata.nanopl, x, XI, ssta, esta);
[micropl(2,1), ~] = calcspline(SE0902.HPLC.hirata.micropl, x, XI, ssta, esta);
[SDP(2,1), ~] = calcspline(SE0902.HPLC.hirata.SDP, x, XI, ssta, esta);
[totalchl(2,1), ~] = calcspline(SE0902.HPLC.hirata.C, x, XI, ssta, esta);

%2009 TZCF
ssta = stationlistHPLC.TZCF(2,1);
esta = stationlistHPLC.TZCF(2,2);
x = SE0902.HPLC.pigrats.pressure(:,ssta);

[proc(2,2), ~] = calcspline(SE0902.HPLC.hirata.proc, x, XI, ssta, esta);
[prok(2,2), ~] = calcspline(SE0902.HPLC.hirata.prok, x, XI, ssta, esta);
[picoeuk(2,2), ~] = calcspline(SE0902.HPLC.hirata.picoeuk, x, XI, ssta, esta);
[prym(2,2), ~] = calcspline(SE0902.HPLC.hirata.prym, x, XI, ssta, esta);
[galgae(2,2), ~] = calcspline(SE0902.HPLC.hirata.galgae, x, XI, ssta, esta);
[diat(2,2), ~] = calcspline(SE0902.HPLC.hirata.diatoms, x, XI, ssta, esta);
[dino(2,2), ~] = calcspline(SE0902.HPLC.hirata.dino, x, XI, ssta, esta);
[picopl(2,2), ~] = calcspline(SE0902.HPLC.hirata.picopl, x, XI, ssta, esta);
[nanopl(2,2), ~] = calcspline(SE0902.HPLC.hirata.nanopl, x, XI, ssta, esta);
[micropl(2,2), ~] = calcspline(SE0902.HPLC.hirata.micropl, x, XI, ssta, esta);
[SDP(2,2), ~] = calcspline(SE0902.HPLC.hirata.SDP, x, XI, ssta, esta);
[totalchl(2,2), ~] = calcspline(SE0902.HPLC.hirata.C, x, XI, ssta, esta);

%2011 Southern STFZ
ssta = stationlistHPLC.STFZ(3,1);
esta = stationlistHPLC.STFZ(3,2);
x = SE1102.HPLC.pigrats.pressure(:,ssta);

[proc(3,1), ~] = calcspline(SE1102.HPLC.hirata.proc, x, XI, ssta, esta);
[prok(3,1), ~] = calcspline(SE1102.HPLC.hirata.prok, x, XI, ssta, esta);
[picoeuk(3,1), ~] = calcspline(SE1102.HPLC.hirata.picoeuk, x, XI, ssta, esta);
[prym(3,1), ~] = calcspline(SE1102.HPLC.hirata.prym, x, XI, ssta, esta);
[galgae(3,1), ~] = calcspline(SE1102.HPLC.hirata.galgae, x, XI, ssta, esta);
[diat(3,1), ~] = calcspline(SE1102.HPLC.hirata.diatoms, x, XI, ssta, esta);
[dino(3,1), ~] = calcspline(SE1102.HPLC.hirata.dino, x, XI, ssta, esta);
[picopl(3,1), ~] = calcspline(SE1102.HPLC.hirata.picopl, x, XI, ssta, esta);
[nanopl(3,1), ~] = calcspline(SE1102.HPLC.hirata.nanopl, x, XI, ssta, esta);
[micropl(3,1), ~] = calcspline(SE1102.HPLC.hirata.micropl, x, XI, ssta, esta);
[SDP(3,1), ~] = calcspline(SE1102.HPLC.hirata.SDP, x, XI, ssta, esta);
[totalchl(3,1), ~] = calcspline(SE1102.HPLC.hirata.C, x, XI, ssta, esta);


%2011 TZCF
ssta = stationlistHPLC.TZCF(3,1);
esta = stationlistHPLC.TZCF(3,2);
x = SE1102.HPLC.pigrats.pressure(:,ssta);

[proc(3,2), ~] = calcspline(SE1102.HPLC.hirata.proc, x, XI, ssta, esta);
[prok(3,2), ~] = calcspline(SE1102.HPLC.hirata.prok, x, XI, ssta, esta);
[picoeuk(3,2), ~] = calcspline(SE1102.HPLC.hirata.picoeuk, x, XI, ssta, esta);
[prym(3,2), ~] = calcspline(SE1102.HPLC.hirata.prym, x, XI, ssta, esta);
[galgae(3,2), ~] = calcspline(SE1102.HPLC.hirata.galgae, x, XI, ssta, esta);
[diat(3,2), ~] = calcspline(SE1102.HPLC.hirata.diatoms, x, XI, ssta, esta);
[dino(3,2), ~] = calcspline(SE1102.HPLC.hirata.dino, x, XI, ssta, esta);
[picopl(3,2), ~] = calcspline(SE1102.HPLC.hirata.picopl, x, XI, ssta, esta);
[nanopl(3,2), ~] = calcspline(SE1102.HPLC.hirata.nanopl, x, XI, ssta, esta);
[micropl(3,2), ~] = calcspline(SE1102.HPLC.hirata.micropl, x, XI, ssta, esta);
[SDP(3,2), ~] = calcspline(SE1102.HPLC.hirata.SDP, x, XI, ssta, esta);
[totalchl(3,2), ~] = calcspline(SE1102.HPLC.hirata.C, x, XI, ssta, esta);


years = [2008 2008;2009 2009;2011 2011];
zones = [1 2; 1 2; 1 2];
fid = fopen('chlpigdatahirata.csv','w+');
fprintf(fid,'year,zone, Proc, Prok, Picoeuk, Prym, GreenAlgae, Diat, Dino, PicoPlankton, NanoPlankton, MicroPlankton, SDP, C\n');
dlmwrite('chlpigdatahirata.csv',[reshape(years,6,1),reshape(zones,6,1),reshape(proc,6,1),reshape(prok,6,1),reshape(picoeuk,6,1),reshape(prym,6,1),reshape(galgae,6,1),reshape(diat,6,1),reshape(dino,6,1),reshape(picopl,6,1),reshape(nanopl,6,1),reshape(micropl,6,1),reshape(SDP,6,1),reshape(totalchl,6,1)],'-append');
fclose(fid);

clear ssta esta x XI 