%Plot splines for Hirata equation values
XI = 1:175; %Make spline based on pressure 0-175

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

%2008 STFZ
ssta = stationlistHPLC.STFZ(1,1);
esta = stationlistHPLC.STFZ(1,2);
x = SE0802.HPLC.pigrats.pressure(:,ssta);

[~, prokspline] = calcspline(SE0802.HPLC.hirata.prok, x, XI, ssta, esta);
[~, galgaespline] = calcspline(SE0802.HPLC.hirata.galgae, x, XI, ssta, esta);
[~, cryptospline] = calcspline(SE0802.HPLC.hirata.crypto, x, XI, ssta, esta);
[~, pelagospline] = calcspline(SE0802.HPLC.hirata.pelago, x, XI, ssta, esta);
[~, prymspline] = calcspline(SE0802.HPLC.hirata.prym, x, XI, ssta, esta);
[~, dinospline] = calcspline(SE0802.HPLC.hirata.dino, x, XI, ssta, esta);
[~, diatspline] = calcspline(SE0802.HPLC.hirata.diatoms, x, XI, ssta, esta);
[~, SDPspline] = calcspline(SE0802.HPLC.hirata.SDP, x, XI, ssta, esta);
[~, totalspline] = calcspline(SE0802.HPLC.hirata.C, x, XI, ssta, esta);

prokspline(1,150:175) = 0; %spline freaks out at lower levels but no real signal
galgaespline(1,150:175) = 0; %spline freaks out at lower levels but no real signal
cryptospline(1,150:175) = 0; %spline freaks out at lower levels but no real signal
pelagospline(1,150:175) = 0; %spline freaks out at lower levels but no real signal
prymspline(1,150:175) = 0; %spline freaks out at lower levels but no real signal
dinospline(1,150:175) = 0; %spline freaks out at lower levels but no real signal
diatspline(1,150:175) = 0; %spline freaks out at lower levels but no real signal
SDPspline(1,150:175) = 0; %spline freaks out at lower levels but no real signal
totalspline(1,150:175) = 0; %spline freaks out at lower levels but no real signal

clf
subplot(2,3,1)
plot(prokspline./SDPspline.*totalspline./1000, XI,'b-','LineWidth',3)
axis ij
set(gca, 'XLim', [0 0.5])
hold on
plot(galgaespline./SDPspline.*totalspline./1000, XI,'g-','LineWidth',3)
plot(cryptospline./SDPspline.*totalspline./1000, XI,'c--','LineWidth',3)
plot(pelagospline./SDPspline.*totalspline./1000, XI,'r-','LineWidth',3)
plot(prymspline./SDPspline.*totalspline./1000, XI,'m-','LineWidth',3)
plot(dinospline./SDPspline.*totalspline./1000, XI,'c-','LineWidth',3)
plot(diatspline./SDPspline.*totalspline./1000, XI,'r--','LineWidth',3)
plot(totalspline./1000, XI,'k--','LineWidth',3)

title('Phytoplankton Composition at STFZ in 2008')
xlabel('Chl-a (mg m-3)')
ylabel('Pressure (db)')
legend('Location','southeast', 'Prokaryotes','Green Algae','Cryptophytes','Pelagophytes', 'Prymnesio','Dinoflag','Diatoms','Total Chl-a')

%2008 TZCF
ssta = stationlistHPLC.TZCF(1,1);
esta = stationlistHPLC.TZCF(1,2);
x = SE0802.HPLC.pigrats.pressure(:,ssta);

[~, prokspline] = calcspline(SE0802.HPLC.hirata.prok, x, XI, ssta, esta);
[~, galgaespline] = calcspline(SE0802.HPLC.hirata.galgae, x, XI, ssta, esta);
[~, cryptospline] = calcspline(SE0802.HPLC.hirata.crypto, x, XI, ssta, esta);
[~, pelagospline] = calcspline(SE0802.HPLC.hirata.pelago, x, XI, ssta, esta);
[~, prymspline] = calcspline(SE0802.HPLC.hirata.prym, x, XI, ssta, esta);
[~, dinospline] = calcspline(SE0802.HPLC.hirata.dino, x, XI, ssta, esta);
[~, diatspline] = calcspline(SE0802.HPLC.hirata.diatoms, x, XI, ssta, esta);
[~, SDPspline] = calcspline(SE0802.HPLC.hirata.SDP, x, XI, ssta, esta);
[~, totalspline] = calcspline(SE0802.HPLC.hirata.C, x, XI, ssta, esta);

prokspline(1,150:175) = 0; %spline freaks out at lower levels but no real signal
galgaespline(1,150:175) = 0; %spline freaks out at lower levels but no real signal
cryptospline(1,150:175) = 0; %spline freaks out at lower levels but no real signal
pelagospline(1,150:175) = 0; %spline freaks out at lower levels but no real signal
prymspline(1,150:175) = 0; %spline freaks out at lower levels but no real signal
dinospline(1,150:175) = 0; %spline freaks out at lower levels but no real signal
diatspline(1,150:175) = 0; %spline freaks out at lower levels but no real signal
SDPspline(1,150:175) = 0; %spline freaks out at lower levels but no real signal
totalspline(1,150:175) = 0; %spline freaks out at lower levels but no real signal

subplot(2,3,4)
plot(prokspline./SDPspline.*totalspline./1000, XI,'b-','LineWidth',3)
axis ij
set(gca, 'XLim', [0 0.5])
hold on
plot(galgaespline./SDPspline.*totalspline./1000, XI,'g-','LineWidth',3)
plot(cryptospline./SDPspline.*totalspline./1000, XI,'c--','LineWidth',3)
plot(pelagospline./SDPspline.*totalspline./1000, XI,'r-','LineWidth',3)
plot(prymspline./SDPspline.*totalspline./1000, XI,'m-','LineWidth',3)
plot(dinospline./SDPspline.*totalspline./1000, XI,'c-','LineWidth',3)
plot(diatspline./SDPspline.*totalspline./1000, XI,'r--','LineWidth',3)
plot(totalspline./1000, XI,'k--','LineWidth',3)

title('Phytoplankton Composition at TZCF in 2008')
xlabel('Chl-a (mg m-3)')
ylabel('Pressure (db)')
legend('Location','southeast', 'Prokaryotes','Green Algae','Cryptophytes','Pelagophytes', 'Prymnesio','Dinoflag','Diatoms','Total Chl-a')

%2009 STFZ
ssta = stationlistHPLC.STFZ(2,1);
esta = stationlistHPLC.STFZ(2,2);
x = SE0902.HPLC.pigrats.pressure(:,ssta);

[~, prokspline] = calcinterp(SE0902.HPLC.hirata.prok, x, XI, ssta, esta);
[~, galgaespline] = calcinterp(SE0902.HPLC.hirata.galgae, x, XI, ssta, esta);
[~, cryptospline] = calcinterp(SE0902.HPLC.hirata.crypto, x, XI, ssta, esta);
[~, pelagospline] = calcinterp(SE0902.HPLC.hirata.pelago, x, XI, ssta, esta);
[~, prymspline] = calcinterp(SE0902.HPLC.hirata.prym, x, XI, ssta, esta);
[~, dinospline] = calcinterp(SE0902.HPLC.hirata.dino, x, XI, ssta, esta);
[~, diatspline] = calcinterp(SE0902.HPLC.hirata.diatoms, x, XI, ssta, esta);
[~, SDPspline] = calcinterp(SE0902.HPLC.hirata.SDP, x, XI, ssta, esta);
[~, totalspline] = calcinterp(SE0902.HPLC.hirata.C, x, XI, ssta, esta);

subplot(2,3,2)
plot(prokspline./SDPspline.*totalspline./1000, XI,'b-','LineWidth',3)
axis ij
set(gca, 'XLim', [0 0.5])
hold on
plot(galgaespline./SDPspline.*totalspline./1000, XI,'g-','LineWidth',3)
plot(cryptospline./SDPspline.*totalspline./1000, XI,'c--','LineWidth',3)
plot(pelagospline./SDPspline.*totalspline./1000, XI,'r-','LineWidth',3)
plot(prymspline./SDPspline.*totalspline./1000, XI,'m-','LineWidth',3)
plot(dinospline./SDPspline.*totalspline./1000, XI,'c-','LineWidth',3)
plot(diatspline./SDPspline.*totalspline./1000, XI,'r--','LineWidth',3)
plot(totalspline./1000, XI,'k--','LineWidth',3)

title('Phytoplankton Composition at STFZ in 2009')
xlabel('Chl-a (mg m-3)')
ylabel('Pressure (db)')
legend('Location','southeast', 'Prokaryotes','Green Algae','Cryptophytes','Pelagophytes', 'Prymnesio','Dinoflag','Diatoms','Total Chl-a')

%2009 TZCF
ssta = stationlistHPLC.TZCF(2,1);
esta = stationlistHPLC.TZCF(2,2);
x = SE0902.HPLC.pigrats.pressure(:,ssta);

[~, prokspline] = calcinterp(SE0902.HPLC.hirata.prok, x, XI, ssta, esta);
[~, galgaespline] = calcinterp(SE0902.HPLC.hirata.galgae, x, XI, ssta, esta);
[~, cryptospline] = calcinterp(SE0902.HPLC.hirata.crypto, x, XI, ssta, esta);
[~, pelagospline] = calcinterp(SE0902.HPLC.hirata.pelago, x, XI, ssta, esta);
[~, prymspline] = calcinterp(SE0902.HPLC.hirata.prym, x, XI, ssta, esta);
[~, dinospline] = calcinterp(SE0902.HPLC.hirata.dino, x, XI, ssta, esta);
[~, diatspline] = calcinterp(SE0902.HPLC.hirata.diatoms, x, XI, ssta, esta);
[~, SDPspline] = calcinterp(SE0902.HPLC.hirata.SDP, x, XI, ssta, esta);
[~, totalspline] = calcinterp(SE0902.HPLC.hirata.C, x, XI, ssta, esta);

subplot(2,3,5)
plot(prokspline./SDPspline.*totalspline./1000, XI,'b-','LineWidth',3)
axis ij
set(gca, 'XLim', [0 0.5])
hold on
plot(galgaespline./SDPspline.*totalspline./1000, XI,'g-','LineWidth',3)
plot(cryptospline./SDPspline.*totalspline./1000, XI,'c--','LineWidth',3)
plot(pelagospline./SDPspline.*totalspline./1000, XI,'r-','LineWidth',3)
plot(prymspline./SDPspline.*totalspline./1000, XI,'m-','LineWidth',3)
plot(dinospline./SDPspline.*totalspline./1000, XI,'c-','LineWidth',3)
plot(diatspline./SDPspline.*totalspline./1000, XI,'r--','LineWidth',3)
plot(totalspline./1000, XI,'k--','LineWidth',3)

title('Phytoplankton Composition at TZCF in 2009')
xlabel('Chl-a (mg m-3)')
ylabel('Pressure (db)')
legend('Location','southeast', 'Prokaryotes','Green Algae','Cryptophytes','Pelagophytes', 'Prymnesio','Dinoflag','Diatoms','Total Chl-a')

%2011 STFZ
ssta = stationlistHPLC.STFZ(3,1);
esta = stationlistHPLC.STFZ(3,2);
x = SE1102.HPLC.pigrats.pressure(:,ssta);

[~, prokspline] = calcspline(SE1102.HPLC.hirata.prok, x, XI, ssta, esta);
[~, galgaespline] = calcspline(SE1102.HPLC.hirata.galgae, x, XI, ssta, esta);
[~, cryptospline] = calcspline(SE1102.HPLC.hirata.crypto, x, XI, ssta, esta);
[~, pelagospline] = calcspline(SE1102.HPLC.hirata.pelago, x, XI, ssta, esta);
[~, prymspline] = calcspline(SE1102.HPLC.hirata.prym, x, XI, ssta, esta);
[~, dinospline] = calcspline(SE1102.HPLC.hirata.dino, x, XI, ssta, esta);
[~, diatspline] = calcspline(SE1102.HPLC.hirata.diatoms, x, XI, ssta, esta);
[~, SDPspline] = calcspline(SE1102.HPLC.hirata.SDP, x, XI, ssta, esta);
[~, totalspline] = calcspline(SE1102.HPLC.hirata.C, x, XI, ssta, esta);

prokspline(1,160:175) = 0; %spline freaks out at lower levels but no real signal
galgaespline(1,160:175) = 0; %spline freaks out at lower levels but no real signal
cryptospline(1,160:175) = 0; %spline freaks out at lower levels but no real signal
pelagospline(1,160:175) = 0; %spline freaks out at lower levels but no real signal
prymspline(1,150:175) = 0; %spline freaks out at lower levels but no real signal
dinospline(1,160:175) = 0; %spline freaks out at lower levels but no real signal
diatspline(1,160:175) = 0; %spline freaks out at lower levels but no real signal
%SDPspline(1,160:175) = 0; %spline freaks out at lower levels but no real signal
%totalspline(1,160:175) = 0; %spline freaks out at lower levels but no real signal

subplot(2,3,3)
plot(prokspline./SDPspline.*totalspline./1000, XI,'b-','LineWidth',3)
axis ij
set(gca, 'XLim', [0 0.5])
hold on
plot(galgaespline./SDPspline.*totalspline./1000, XI,'g-','LineWidth',3)
plot(cryptospline./SDPspline.*totalspline./1000, XI,'c--','LineWidth',3)
plot(pelagospline./SDPspline.*totalspline./1000, XI,'r-','LineWidth',3)
plot(prymspline./SDPspline.*totalspline./1000, XI,'m-','LineWidth',3)
plot(dinospline./SDPspline.*totalspline./1000, XI,'c-','LineWidth',3)
plot(diatspline./SDPspline.*totalspline./1000, XI,'r--','LineWidth',3)
plot(totalspline./1000, XI,'k--','LineWidth',3)

title('Phytoplankton Composition at STFZ in 2011')
xlabel('Chl-a (mg m-3)')
ylabel('Pressure (db)')
legend('Location','southeast', 'Prokaryotes','Green Algae','Cryptophytes','Pelagophytes', 'Prymnesio','Dinoflag','Diatoms','Total Chl-a')

%2011 TZCF
ssta = stationlistHPLC.TZCF(3,1);
esta = stationlistHPLC.TZCF(3,2);
x = SE1102.HPLC.pigrats.pressure(:,ssta);

[~, prokspline] = calcinterp(SE1102.HPLC.hirata.prok, x, XI, ssta, esta);
[~, galgaespline] = calcinterp(SE1102.HPLC.hirata.galgae, x, XI, ssta, esta);
[~, cryptospline] = calcinterp(SE1102.HPLC.hirata.crypto, x, XI, ssta, esta);
[~, pelagospline] = calcinterp(SE1102.HPLC.hirata.pelago, x, XI, ssta, esta);
[~, prymspline] = calcinterp(SE1102.HPLC.hirata.prym, x, XI, ssta, esta);
[~, dinospline] = calcinterp(SE1102.HPLC.hirata.dino, x, XI, ssta, esta);
[~, diatspline] = calcinterp(SE1102.HPLC.hirata.diatoms, x, XI, ssta, esta);
[~, SDPspline] = calcinterp(SE1102.HPLC.hirata.SDP, x, XI, ssta, esta);
[~, totalspline] = calcinterp(SE1102.HPLC.hirata.C, x, XI, ssta, esta);

% prokspline(1,160:175) = 0; %spline freaks out at lower levels but no real signal
% galgaespline(1,160:175) = 0; %spline freaks out at lower levels but no real signal
% cryptospline(1,160:175) = 0; %spline freaks out at lower levels but no real signal
% pelagospline(1,160:175) = 0; %spline freaks out at lower levels but no real signal
% prymspline(1,150:175) = 0; %spline freaks out at lower levels but no real signal
% dinospline(1,160:175) = 0; %spline freaks out at lower levels but no real signal
% diatspline(1,160:175) = 0; %spline freaks out at lower levels but no real signal
% %SDPspline(1,160:175) = 0; %spline freaks out at lower levels but no real signal
% totalspline(1,155:175) = 0; %spline freaks out at lower levels but no real signal

subplot(2,3,6)
plot(prokspline./SDPspline.*totalspline./1000, XI,'b-','LineWidth',3)
axis ij
set(gca, 'XLim', [0 0.5])
hold on
plot(galgaespline./SDPspline.*totalspline./1000, XI,'g-','LineWidth',3)
plot(cryptospline./SDPspline.*totalspline./1000, XI,'c--','LineWidth',3)
plot(pelagospline./SDPspline.*totalspline./1000, XI,'r-','LineWidth',3)
plot(prymspline./SDPspline.*totalspline./1000, XI,'m-','LineWidth',3)
plot(dinospline./SDPspline.*totalspline./1000, XI,'c-','LineWidth',3)
plot(diatspline./SDPspline.*totalspline./1000, XI,'r--','LineWidth',3)
plot(totalspline./1000, XI,'k--','LineWidth',3)

title('Phytoplankton Composition at TZCF in 2011')
xlabel('Chl-a (mg m-3)')
ylabel('Pressure (db)')
legend('Location','southeast', 'Prokaryotes','Green Algae','Cryptophytes','Pelagophytes', 'Prymnesio','Dinoflag','Diatoms','Total Chl-a')