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

%NEED TO FIX THE SAME AS PlotSplinesAllYears (crypto etc) then REDO
%breakdown barchart
picopl = zeros(3,2);
nanopl = zeros(3,2);
micropl = zeros(3,2);

proc = zeros(3,2);
prok = zeros(3,2);
galgae = zeros(3,2);
crypto = zeros(3,2);
pelago = zeros(3,2);
prym = zeros(3,2);
dino = zeros(3,2);
diat = zeros(3,2);
SDP = zeros(3,2);
totalchl = zeros(3,2);

%Calculate 2008
ssta = stationlistHPLC.STFZ(1,1);
esta = stationlistHPLC.STFZ(1,2);
x = SE0802.HPLC.pigrats.pressure(:,ssta);

[~, procspline] = calcspline(SE0802.HPLC.hirata.proc, x, XI, ssta, esta);
[~, prokspline] = calcspline(SE0802.HPLC.hirata.prok, x, XI, ssta, esta);
[~, galgaespline] = calcspline(SE0802.HPLC.hirata.galgae, x, XI, ssta, esta);
[~, cryptospline] = calcspline(SE0802.HPLC.hirata.crypto, x, XI, ssta, esta);
[~, pelagospline] = calcspline(SE0802.HPLC.hirata.pelago, x, XI, ssta, esta);
[~, prymspline] = calcspline(SE0802.HPLC.hirata.prym, x, XI, ssta, esta);
[~, dinospline] = calcspline(SE0802.HPLC.hirata.dino, x, XI, ssta, esta);
[~, diatspline] = calcspline(SE0802.HPLC.hirata.diatoms, x, XI, ssta, esta);
[~, picoplspline] = calcspline(SE0802.HPLC.hirata.picopl, x, XI, ssta, esta);
[~, nanoplspline] = calcspline(SE0802.HPLC.hirata.nanopl, x, XI, ssta, esta);
[~, microplspline] = calcspline(SE0802.HPLC.hirata.micropl, x, XI, ssta, esta);
[~, SDPspline] = calcspline(SE0802.HPLC.hirata.SDP, x, XI, ssta, esta);
[~, totalspline] = calcspline(SE0802.HPLC.hirata.C, x, XI, ssta, esta);

%bottom = 150; %
bottom = 100; %
proc(1,1) = sum(procspline(1,1:150))./sum(SDPspline(1,1:bottom)).*sum(totalspline(1,1:bottom))./1000;%spline freaks out at lower levels but no real signal
prok(1,1) = sum(prokspline(1,1:bottom))./sum(SDPspline(1,1:bottom)).*sum(totalspline(1,1:bottom))./1000;
galgae(1,1) = sum(galgaespline(1,1:bottom))./sum(SDPspline(1,1:bottom)).*sum(totalspline(1,1:bottom))./1000;
crypto(1,1) = sum(cryptospline(1,1:bottom))./sum(SDPspline(1,1:bottom)).*sum(totalspline(1,1:bottom))./1000;
pelago(1,1) = sum(pelagospline(1,1:bottom))./sum(SDPspline(1,1:bottom)).*sum(totalspline(1,1:bottom))./1000;
prym(1,1) = sum(prymspline(1,1:bottom))./sum(SDPspline(1,1:bottom)).*sum(totalspline(1,1:bottom))./1000;
dino(1,1) = sum(dinospline(1,1:bottom))./sum(SDPspline(1,1:bottom)).*sum(totalspline(1,1:bottom))./1000;
diat(1,1) = sum(diatspline(1,1:bottom))./sum(SDPspline(1,1:bottom)).*sum(totalspline(1,1:bottom))./1000;
picopl(1,1) = sum(picoplspline(1,1:bottom))./sum(SDPspline(1,1:bottom)).*sum(totalspline(1,1:bottom))./1000;
nanopl(1,1) = sum(nanoplspline(1,1:bottom))./sum(SDPspline(1,1:bottom)).*sum(totalspline(1,1:bottom))./1000;
micropl(1,1) = sum(microplspline(1,1:bottom))./sum(SDPspline(1,1:bottom)).*sum(totalspline(1,1:bottom))./1000;
SDP(1,1) = sum(SDPspline(1,1:bottom))./1000;
totalchl(1,1) = sum(totalspline(1,1:bottom))./1000;

%2008 TZCF
ssta = stationlistHPLC.TZCF(1,1);
esta = stationlistHPLC.TZCF(1,2);
x = SE0802.HPLC.pigrats.pressure(:,ssta);

[~, procspline] = calcspline(SE0802.HPLC.hirata.proc, x, XI, ssta, esta);
[~, prokspline] = calcspline(SE0802.HPLC.hirata.prok, x, XI, ssta, esta);
[~, galgaespline] = calcspline(SE0802.HPLC.hirata.galgae, x, XI, ssta, esta);
[~, cryptospline] = calcspline(SE0802.HPLC.hirata.crypto, x, XI, ssta, esta);
[~, pelagospline] = calcspline(SE0802.HPLC.hirata.pelago, x, XI, ssta, esta);
[~, prymspline] = calcspline(SE0802.HPLC.hirata.prym, x, XI, ssta, esta);
[~, dinospline] = calcspline(SE0802.HPLC.hirata.dino, x, XI, ssta, esta);
[~, diatspline] = calcspline(SE0802.HPLC.hirata.diatoms, x, XI, ssta, esta);
[~, picoplspline] = calcspline(SE0802.HPLC.hirata.picopl, x, XI, ssta, esta);
[~, nanoplspline] = calcspline(SE0802.HPLC.hirata.nanopl, x, XI, ssta, esta);
[~, microplspline] = calcspline(SE0802.HPLC.hirata.micropl, x, XI, ssta, esta);
[~, SDPspline] = calcspline(SE0802.HPLC.hirata.SDP, x, XI, ssta, esta);
[~, totalspline] = calcspline(SE0802.HPLC.hirata.C, x, XI, ssta, esta);

proc(1,2) = sum(procspline(1,1:bottom))./sum(SDPspline(1,1:bottom)).*sum(totalspline(1,1:bottom))./1000;%spline freaks out at lower levels but no real signal
prok(1,2) = sum(prokspline(1,1:bottom))./sum(SDPspline(1,1:bottom)).*sum(totalspline(1,1:bottom))./1000;
galgae(1,2) = sum(galgaespline(1,1:bottom))./sum(SDPspline(1,1:bottom)).*sum(totalspline(1,1:bottom))./1000;
crypto(1,2) = sum(cryptospline(1,1:bottom))./sum(SDPspline(1,1:bottom)).*sum(totalspline(1,1:bottom))./1000;
pelago(1,2) = sum(pelagospline(1,1:bottom))./sum(SDPspline(1,1:bottom)).*sum(totalspline(1,1:bottom))./1000;
prym(1,2) = sum(prymspline(1,1:bottom))./sum(SDPspline(1,1:bottom)).*sum(totalspline(1,1:bottom))./1000;
dino(1,2) = sum(dinospline(1,1:bottom))./sum(SDPspline(1,1:bottom)).*sum(totalspline(1,1:bottom))./1000;
diat(1,2) = sum(diatspline(1,1:bottom))./sum(SDPspline(1,1:bottom)).*sum(totalspline(1,1:bottom))./1000;
picopl(1,2) = sum(picoplspline(1,1:bottom))./sum(SDPspline(1,1:bottom)).*sum(totalspline(1,1:bottom))./1000;
nanopl(1,2) = sum(nanoplspline(1,1:bottom))./sum(SDPspline(1,1:bottom)).*sum(totalspline(1,1:bottom))./1000;
micropl(1,2) = sum(microplspline(1,1:bottom))./sum(SDPspline(1,1:bottom)).*sum(totalspline(1,1:bottom))./1000;
SDP(1,2) = sum(SDPspline(1,1:bottom))./1000;
totalchl(1,2) = sum(totalspline(1,1:bottom))./1000;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Calculate 2009
%2009 STFZ
ssta = stationlistHPLC.STFZ(2,1);
esta = stationlistHPLC.STFZ(2,2);
x = SE0902.HPLC.pigrats.pressure(:,ssta);

[~, procspline] = calcinterp(SE0902.HPLC.hirata.proc, x, XI, ssta, esta);
[~, prokspline] = calcinterp(SE0902.HPLC.hirata.prok, x, XI, ssta, esta);
[~, galgaespline] = calcinterp(SE0902.HPLC.hirata.galgae, x, XI, ssta, esta);
[~, cryptospline] = calcinterp(SE0902.HPLC.hirata.crypto, x, XI, ssta, esta);
[~, pelagospline] = calcinterp(SE0902.HPLC.hirata.pelago, x, XI, ssta, esta);
[~, prymspline] = calcinterp(SE0902.HPLC.hirata.prym, x, XI, ssta, esta);
[~, dinospline] = calcinterp(SE0902.HPLC.hirata.dino, x, XI, ssta, esta);
[~, diatspline] = calcinterp(SE0902.HPLC.hirata.diatoms, x, XI, ssta, esta);
[~, picoplspline] = calcinterp(SE0902.HPLC.hirata.picopl, x, XI, ssta, esta);
[~, nanoplspline] = calcinterp(SE0902.HPLC.hirata.nanopl, x, XI, ssta, esta);
[~, microplspline] = calcinterp(SE0902.HPLC.hirata.micropl, x, XI, ssta, esta);
[~, SDPspline] = calcinterp(SE0902.HPLC.hirata.SDP, x, XI, ssta, esta);
[~, totalspline] = calcinterp(SE0902.HPLC.hirata.C, x, XI, ssta, esta);

proc(2,1) = sum(procspline)./sum(SDPspline).*sum(totalspline)./1000;%spline freaks out at lower levels but no real signal
prok(2,1) = sum(prokspline)./sum(SDPspline).*sum(totalspline)./1000;
galgae(2,1) = sum(galgaespline)./sum(SDPspline).*sum(totalspline)./1000;
crypto(2,1) = sum(cryptospline)./sum(SDPspline).*sum(totalspline)./1000;
pelago(2,1) = sum(pelagospline)./sum(SDPspline).*sum(totalspline)./1000;
prym(2,1) = sum(prymspline)./sum(SDPspline).*sum(totalspline)./1000;
dino(2,1) = sum(dinospline)./sum(SDPspline).*sum(totalspline)./1000;
diat(2,1) = sum(diatspline)./sum(SDPspline).*sum(totalspline)./1000;
picopl(2,1) = sum(picoplspline)./sum(SDPspline).*sum(totalspline)./1000;
nanopl(2,1) = sum(nanoplspline)./sum(SDPspline).*sum(totalspline)./1000;
micropl(2,1) = sum(microplspline)./sum(SDPspline).*sum(totalspline)./1000;
SDP(2,1) = sum(SDPspline)./1000;
totalchl(2,1) = sum(totalspline)./1000;

%2009 TZCF
ssta = stationlistHPLC.TZCF(2,1);
esta = stationlistHPLC.TZCF(2,2);
x = SE0902.HPLC.pigrats.pressure(:,ssta);

[~, procspline] = calcinterp(SE0902.HPLC.hirata.proc, x, XI, ssta, esta);
[~, prokspline] = calcinterp(SE0902.HPLC.hirata.prok, x, XI, ssta, esta);
[~, galgaespline] = calcinterp(SE0902.HPLC.hirata.galgae, x, XI, ssta, esta);
[~, cryptospline] = calcinterp(SE0902.HPLC.hirata.crypto, x, XI, ssta, esta);
[~, pelagospline] = calcinterp(SE0902.HPLC.hirata.pelago, x, XI, ssta, esta);
[~, prymspline] = calcinterp(SE0902.HPLC.hirata.prym, x, XI, ssta, esta);
[~, dinospline] = calcinterp(SE0902.HPLC.hirata.dino, x, XI, ssta, esta);
[~, diatspline] = calcinterp(SE0902.HPLC.hirata.diatoms, x, XI, ssta, esta);
[~, picoplspline] = calcinterp(SE0902.HPLC.hirata.picopl, x, XI, ssta, esta);
[~, nanoplspline] = calcinterp(SE0902.HPLC.hirata.nanopl, x, XI, ssta, esta);
[~, microplspline] = calcinterp(SE0902.HPLC.hirata.micropl, x, XI, ssta, esta);
[~, SDPspline] = calcinterp(SE0902.HPLC.hirata.SDP, x, XI, ssta, esta);
[~, totalspline] = calcinterp(SE0902.HPLC.hirata.C, x, XI, ssta, esta);

proc(2,2) = sum(procspline)./sum(SDPspline).*sum(totalspline)./1000;%spline freaks out at lower levels but no real signal
prok(2,2) = sum(prokspline)./sum(SDPspline).*sum(totalspline)./1000;
galgae(2,2) = sum(galgaespline)./sum(SDPspline).*sum(totalspline)./1000;
crypto(2,2) = sum(cryptospline)./sum(SDPspline).*sum(totalspline)./1000;
pelago(2,2) = sum(pelagospline)./sum(SDPspline).*sum(totalspline)./1000;
prym(2,2) = sum(prymspline)./sum(SDPspline).*sum(totalspline)./1000;
dino(2,2) = sum(dinospline)./sum(SDPspline).*sum(totalspline)./1000;
diat(2,2) = sum(diatspline)./sum(SDPspline).*sum(totalspline)./1000;
picopl(2,2) = sum(picoplspline)./sum(SDPspline).*sum(totalspline)./1000;
nanopl(2,2) = sum(nanoplspline)./sum(SDPspline).*sum(totalspline)./1000;
micropl(2,2) = sum(microplspline)./sum(SDPspline).*sum(totalspline)./1000;
SDP(2,2) = sum(SDPspline)./1000;
totalchl(2,2) = sum(totalspline)./1000;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%2011 Southern STFZ
ssta = stationlistHPLC.STFZ(3,1);
esta = stationlistHPLC.STFZ(3,2);
x = SE1102.HPLC.pigrats.pressure(:,ssta);

[~, procspline] = calcspline(SE1102.HPLC.hirata.proc, x, XI, ssta, esta);
[~, prokspline] = calcspline(SE1102.HPLC.hirata.prok, x, XI, ssta, esta);
[~, galgaespline] = calcspline(SE1102.HPLC.hirata.galgae, x, XI, ssta, esta);
[~, cryptospline] = calcspline(SE1102.HPLC.hirata.crypto, x, XI, ssta, esta);
[~, pelagospline] = calcspline(SE1102.HPLC.hirata.pelago, x, XI, ssta, esta);
[~, prymspline] = calcspline(SE1102.HPLC.hirata.prym, x, XI, ssta, esta);
[~, dinospline] = calcspline(SE1102.HPLC.hirata.dino, x, XI, ssta, esta);
[~, diatspline] = calcspline(SE1102.HPLC.hirata.diatoms, x, XI, ssta, esta);
[~, picoplspline] = calcspline(SE1102.HPLC.hirata.picopl, x, XI, ssta, esta);
[~, nanoplspline] = calcspline(SE1102.HPLC.hirata.nanopl, x, XI, ssta, esta);
[~, microplspline] = calcspline(SE1102.HPLC.hirata.micropl, x, XI, ssta, esta);
[~, SDPspline] = calcspline(SE1102.HPLC.hirata.SDP, x, XI, ssta, esta);
[~, totalspline] = calcspline(SE1102.HPLC.hirata.C, x, XI, ssta, esta);

%bottom = 160; %
bottom = 100; %
proc(3,1) = sum(procspline(1,1:160))./sum(SDPspline(1,1:bottom)).*sum(totalspline(1,1:bottom))./1000;%spline freaks out at lower levels but no real signal
prok(3,1) = sum(prokspline(1,1:bottom))./sum(SDPspline(1,1:bottom)).*sum(totalspline(1,1:bottom))./1000;
galgae(3,1) = sum(galgaespline(1,1:bottom))./sum(SDPspline(1,1:bottom)).*sum(totalspline(1,1:bottom))./1000;
crypto(3,1) = sum(cryptospline(1,1:bottom))./sum(SDPspline(1,1:bottom)).*sum(totalspline(1,1:bottom))./1000;
pelago(3,1) = sum(pelagospline(1,1:bottom))./sum(SDPspline(1,1:bottom)).*sum(totalspline(1,1:bottom))./1000;
prym(3,1) = sum(prymspline(1,1:bottom))./sum(SDPspline(1,1:bottom)).*sum(totalspline(1,1:bottom))./1000;
dino(3,1) = sum(dinospline(1,1:bottom))./sum(SDPspline(1,1:bottom)).*sum(totalspline(1,1:bottom))./1000;
diat(3,1) = sum(diatspline(1,1:bottom))./sum(SDPspline(1,1:bottom)).*sum(totalspline(1,1:bottom))./1000;
picopl(3,1) = sum(picoplspline(1,1:bottom))./sum(SDPspline(1,1:bottom)).*sum(totalspline(1,1:bottom))./1000;
nanopl(3,1) = sum(nanoplspline(1,1:bottom))./sum(SDPspline(1,1:bottom)).*sum(totalspline(1,1:bottom))./1000;
micropl(3,1) = sum(microplspline(1,1:bottom))./sum(SDPspline(1,1:bottom)).*sum(totalspline(1,1:bottom))./1000;
SDP(3,1) = sum(SDPspline(1,1:bottom))./1000;
totalchl(3,1) = sum(totalspline(1,1:bottom))./1000;

%2011 TZCF
ssta = stationlistHPLC.TZCF(3,1);
esta = stationlistHPLC.TZCF(3,2);
x = SE1102.HPLC.pigrats.pressure(:,ssta);

[~, procspline] = calcinterp(SE1102.HPLC.hirata.proc, x, XI, ssta, esta);
[~, prokspline] = calcinterp(SE1102.HPLC.hirata.prok, x, XI, ssta, esta);
[~, galgaespline] = calcinterp(SE1102.HPLC.hirata.galgae, x, XI, ssta, esta);
[~, cryptospline] = calcinterp(SE1102.HPLC.hirata.crypto, x, XI, ssta, esta);
[~, pelagospline] = calcinterp(SE1102.HPLC.hirata.pelago, x, XI, ssta, esta);
[~, prymspline] = calcinterp(SE1102.HPLC.hirata.prym, x, XI, ssta, esta);
[~, dinospline] = calcinterp(SE1102.HPLC.hirata.dino, x, XI, ssta, esta);
[~, diatspline] = calcinterp(SE1102.HPLC.hirata.diatoms, x, XI, ssta, esta);
[~, picoplspline] = calcinterp(SE1102.HPLC.hirata.picopl, x, XI, ssta, esta);
[~, nanoplspline] = calcinterp(SE1102.HPLC.hirata.nanopl, x, XI, ssta, esta);
[~, microplspline] = calcinterp(SE1102.HPLC.hirata.micropl, x, XI, ssta, esta);
[~, SDPspline] = calcinterp(SE1102.HPLC.hirata.SDP, x, XI, ssta, esta);
[~, totalspline] = calcinterp(SE1102.HPLC.hirata.C, x, XI, ssta, esta);

proc(3,2) = sum(procspline(1,1:bottom))./sum(SDPspline(1,1:bottom)).*sum(totalspline(1,1:bottom))./1000;%spline freaks out at lower levels but no real signal
prok(3,2) = sum(prokspline(1,1:bottom))./sum(SDPspline(1,1:bottom)).*sum(totalspline(1,1:bottom))./1000;
galgae(3,2) = sum(galgaespline(1,1:bottom))./sum(SDPspline(1,1:bottom)).*sum(totalspline(1,1:bottom))./1000;
crypto(3,2) = sum(cryptospline(1,1:bottom))./sum(SDPspline(1,1:bottom)).*sum(totalspline(1,1:bottom))./1000;
pelago(3,2) = sum(pelagospline(1,1:bottom))./sum(SDPspline(1,1:bottom)).*sum(totalspline(1,1:bottom))./1000;
prym(3,2) = sum(prymspline(1,1:bottom))./sum(SDPspline(1,1:bottom)).*sum(totalspline(1,1:bottom))./1000;
dino(3,2) = sum(dinospline(1,1:bottom))./sum(SDPspline(1,1:bottom)).*sum(totalspline(1,1:bottom))./1000;
diat(3,2) = sum(diatspline(1,1:bottom))./sum(SDPspline(1,1:bottom)).*sum(totalspline(1,1:bottom))./1000;
picopl(3,2) = sum(picoplspline(1,1:bottom))./sum(SDPspline(1,1:bottom)).*sum(totalspline(1,1:bottom))./1000;
nanopl(3,2) = sum(nanoplspline(1,1:bottom))./sum(SDPspline(1,1:bottom)).*sum(totalspline(1,1:bottom))./1000;
micropl(3,2) = sum(microplspline(1,1:bottom))./sum(SDPspline(1,1:bottom)).*sum(totalspline(1,1:bottom))./1000;
SDP(3,2) = sum(SDPspline(1,1:bottom))./1000;
totalchl(3,2) = sum(totalspline(1,1:bottom))./1000;

years = [2008 2008;2009 2009;2011 2011];
zones = [1 2; 1 2; 1 2];
filename = 'chlpigdatahirata-100m.csv';
fid = fopen(filename,'w+');
fprintf(fid,'year,zone, Prochlorococcus, Prokaryotes, GreenAlgae, Cryptophytes, Pelagophytes, Prymnesiophytes, Dinoflagellates, Diatoms, PicoPlankton, NanoPlankton, MicroPlankton, SDP, C\n');
dlmwrite(filename,[reshape(years,6,1),reshape(zones,6,1),reshape(proc,6,1),reshape(prok,6,1),reshape(galgae,6,1),reshape(crypto,6,1),reshape(pelago,6,1),reshape(prym,6,1),reshape(dino,6,1),reshape(diat,6,1),reshape(picopl,6,1),reshape(nanopl,6,1),reshape(micropl,6,1),reshape(SDP,6,1),reshape(totalchl,6,1)],'-append');
fclose(fid);

%Clean up
clear ssta esta x XI 
clear procspline prokspline galgaespline crytospline pelagospline prymspline dinospline diatspline picospline nanospline microspline SDPspline totalspline
clear proc prok galgae cryto pelago prym dino diat picopl nanopl micropl SDP totalchl