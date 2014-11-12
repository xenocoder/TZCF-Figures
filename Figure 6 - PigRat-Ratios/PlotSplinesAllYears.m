%Make a barplot of the available HPLC for 2-degree bins. Just do total, prokaryotes, and eukaryotes
XI = 1:150; %Make spline based on pressure 0-175

% We will make 6 bins:
% Chla total
% SEXX02.HPLC.pigrats.chlapro (prochlorococcus)
% SEXX02.HPLC.pigrats.chlaprym (prymnesiophytes)
% SEXX02.HPLC.pigrats.chlapel (pelagophytes)
% SEXX02.HPLC.pigrats.chladiat (diatoms)
% SEXX02.HPLC.pigrats.chladino (dinoflagellates)
% SEXX02.HPLC.pigrats.chlaother (all other)
% SEXX02.HPLC.pigrats.chlatotal (total)

%2008 STFZ
ssta = stationlistHPLC.STFZ(1,1);
esta = stationlistHPLC.STFZ(1,2);
x = SE0802.HPLC.pigrats.pressure(:,ssta);

[proint, prospline] = calcspline(SE0802.HPLC.pigrats.chlapro, x, XI, ssta, esta);
[prymint, prymspline] = calcspline(SE0802.HPLC.pigrats.chlaprym, x, XI, ssta, esta);
[pelint, pelspline] = calcspline(SE0802.HPLC.pigrats.chlapel, x, XI, ssta, esta);
[diatint, diatspline] = calcspline(SE0802.HPLC.pigrats.chladiat, x, XI, ssta, esta);
[dinoint, dinospline] = calcspline(SE0802.HPLC.pigrats.chladino, x, XI, ssta, esta);
[otherint, otherspline] = calcspline(SE0802.HPLC.pigrats.chlaothers, x, XI, ssta, esta);
[totalint, totalspline] = calcspline(SE0802.HPLC.pigrats.chlatotal, x, XI, ssta, esta);
clf
subplot(2,3,1)
plot(prospline./1000, XI,'b-','LineWidth',3)
axis ij
set(gca, 'XLim', [0 0.5])
hold on
plot(prymspline./1000, XI,'g-','LineWidth',3)
plot(pelspline./1000, XI,'r-','LineWidth',3)
plot(diatspline./1000, XI,'m-','LineWidth',3)
plot(dinospline./1000, XI,'c-','LineWidth',3)
plot(otherspline./1000, XI,'y-','LineWidth',3)
plot(totalspline./1000, XI,'k--','LineWidth',3)

title('Phytoplankton Composition at STFZ in 2008')
xlabel('Chl-a (mg m-3)')
ylabel('Pressure (db)')
legend('Location','southeast', 'Prochloro', 'Prymnesio','Pelago','Diatoms','Dinoflag','All Other','Total Chl-a')

%2008 TZCF
ssta = stationlistHPLC.TZCF(1,1);
esta = stationlistHPLC.TZCF(1,2);
x = SE0802.HPLC.pigrats.pressure(:,ssta);

[proint, prospline] = calcspline(SE0802.HPLC.pigrats.chlapro, x, XI, ssta, esta);
[prymint, prymspline] = calcspline(SE0802.HPLC.pigrats.chlaprym, x, XI, ssta, esta);
[pelint, pelspline] = calcspline(SE0802.HPLC.pigrats.chlapel, x, XI, ssta, esta);
[diatint, diatspline] = calcspline(SE0802.HPLC.pigrats.chladiat, x, XI, ssta, esta);
[dinoint, dinospline] = calcspline(SE0802.HPLC.pigrats.chladino, x, XI, ssta, esta);
[otherint, otherspline] = calcspline(SE0802.HPLC.pigrats.chlaothers, x, XI, ssta, esta);
[totalint, totalspline] = calcspline(SE0802.HPLC.pigrats.chlatotal, x, XI, ssta, esta);

subplot(2,3,4)
plot(prospline./1000, XI,'b-','LineWidth',3)
axis ij
set(gca, 'XLim', [0 0.5])
hold on
plot(prymspline./1000, XI,'g-','LineWidth',3)
plot(pelspline./1000, XI,'r-','LineWidth',3)
plot(diatspline./1000, XI,'m-','LineWidth',3)
plot(dinospline./1000, XI,'c-','LineWidth',3)
plot(otherspline./1000, XI,'y-','LineWidth',3)
plot(totalspline./1000, XI,'k--','LineWidth',3)

title('Phytoplankton Composition at TZCF in 2008')
xlabel('Chl-a (mg m-3)')
ylabel('Pressure (db)')
legend('Location','southeast', 'Prochloro', 'Prymnesio','Pelago','Diatoms','Dinoflag','All Other','Total Chl-a')

%2009 STFZ
ssta = stationlistHPLC.STFZ(2,1);
esta = stationlistHPLC.STFZ(2,2);
x = SE0902.HPLC.pigrats.pressure(:,ssta);

[proint, prospline] = calcspline(SE0902.HPLC.pigrats.chlapro, x, XI, ssta, esta);
[prymint, prymspline] = calcspline(SE0902.HPLC.pigrats.chlaprym, x, XI, ssta, esta);
[pelint, pelspline] = calcspline(SE0902.HPLC.pigrats.chlapel, x, XI, ssta, esta);
[diatint, diatspline] = calcspline(SE0902.HPLC.pigrats.chladiat, x, XI, ssta, esta);
[dinoint, dinospline] = calcspline(SE0902.HPLC.pigrats.chladino, x, XI, ssta, esta);
[otherint, otherspline] = calcspline(SE0902.HPLC.pigrats.chlaothers, x, XI, ssta, esta);
[totalint, totalspline] = calcspline(SE0902.HPLC.pigrats.chlatotal, x, XI, ssta, esta);

subplot(2,3,2)
plot(prospline./1000, XI,'b-','LineWidth',3)
axis ij
set(gca, 'XLim', [0 0.5])
hold on
plot(prymspline./1000, XI,'g-','LineWidth',3)
plot(pelspline./1000, XI,'r-','LineWidth',3)
plot(diatspline./1000, XI,'m-','LineWidth',3)
plot(dinospline./1000, XI,'c-','LineWidth',3)
plot(otherspline./1000, XI,'y-','LineWidth',3)
plot(totalspline./1000, XI,'k--','LineWidth',3)

title('Phytoplankton Composition at STFZ in 2009')
xlabel('Chl-a (mg m-3)')
ylabel('Pressure (db)')
legend('Location','southeast', 'Prochloro', 'Prymnesio','Pelago','Diatoms','Dinoflag','All Other','Total Chl-a')

%2009 TZCF
ssta = stationlistHPLC.TZCF(2,1);
esta = stationlistHPLC.TZCF(2,2);
x = SE0902.HPLC.pigrats.pressure(:,ssta);

[proint, prospline] = calcspline(SE0902.HPLC.pigrats.chlapro, x, XI, ssta, esta);
[prymint, prymspline] = calcspline(SE0902.HPLC.pigrats.chlaprym, x, XI, ssta, esta);
[pelint, pelspline] = calcspline(SE0902.HPLC.pigrats.chlapel, x, XI, ssta, esta);
[diatint, diatspline] = calcspline(SE0902.HPLC.pigrats.chladiat, x, XI, ssta, esta);
[dinoint, dinospline] = calcspline(SE0902.HPLC.pigrats.chladino, x, XI, ssta, esta);
[otherint, otherspline] = calcspline(SE0902.HPLC.pigrats.chlaothers, x, XI, ssta, esta);
[totalint, totalspline] = calcspline(SE0902.HPLC.pigrats.chlatotal, x, XI, ssta, esta);

subplot(2,3,5)
plot(prospline./1000, XI,'b-','LineWidth',3)
axis ij
set(gca, 'XLim', [0 0.5])
hold on
plot(prymspline./1000, XI,'g-','LineWidth',3)
plot(pelspline./1000, XI,'r-','LineWidth',3)
plot(diatspline./1000, XI,'m-','LineWidth',3)
plot(dinospline./1000, XI,'c-','LineWidth',3)
plot(otherspline./1000, XI,'y-','LineWidth',3)
plot(totalspline./1000, XI,'k--','LineWidth',3)

title('Phytoplankton Composition at TZCF in 2009')
xlabel('Chl-a (mg m-3)')
ylabel('Pressure (db)')
legend('Location','southeast', 'Prochloro', 'Prymnesio','Pelago','Diatoms','Dinoflag','All Other','Total Chl-a')

%2011 STFZ
ssta = stationlistHPLC.STFZ(3,1);
esta = stationlistHPLC.STFZ(3,2);
x = SE1102.HPLC.pigrats.pressure(:,ssta);

[proint, prospline] = calcspline(SE1102.HPLC.pigrats.chlapro, x, XI, ssta, esta);
[prymint, prymspline] = calcspline(SE1102.HPLC.pigrats.chlaprym, x, XI, ssta, esta);
[pelint, pelspline] = calcspline(SE1102.HPLC.pigrats.chlapel, x, XI, ssta, esta);
[diatint, diatspline] = calcspline(SE1102.HPLC.pigrats.chladiat, x, XI, ssta, esta);
[dinoint, dinospline] = calcspline(SE1102.HPLC.pigrats.chladino, x, XI, ssta, esta);
[otherint, otherspline] = calcspline(SE1102.HPLC.pigrats.chlaothers, x, XI, ssta, esta);
[totalint, totalspline] = calcspline(SE1102.HPLC.pigrats.chlatotal, x, XI, ssta, esta);

subplot(2,3,3)
plot(prospline./1000, XI,'b-','LineWidth',3)
axis ij
set(gca, 'XLim', [0 0.5])
hold on
plot(prymspline./1000, XI,'g-','LineWidth',3)
plot(pelspline./1000, XI,'r-','LineWidth',3)
plot(diatspline./1000, XI,'m-','LineWidth',3)
plot(dinospline./1000, XI,'c-','LineWidth',3)
plot(otherspline./1000, XI,'y-','LineWidth',3)
plot(totalspline./1000, XI,'k--','LineWidth',3)

title('Phytoplankton Composition at STFZ in 2011')
xlabel('Chl-a (mg m-3)')
ylabel('Pressure (db)')
legend('Location','southeast', 'Prochloro', 'Prymnesio','Pelago','Diatoms','Dinoflag','All Other','Total Chl-a')

%2011 TZCF
ssta = stationlistHPLC.TZCF(3,1);
esta = stationlistHPLC.TZCF(3,2);
x = SE1102.HPLC.pigrats.pressure(:,ssta);

[proint, prospline] = calcspline(SE1102.HPLC.pigrats.chlapro, x, XI, ssta, esta);
[prymint, prymspline] = calcspline(SE1102.HPLC.pigrats.chlaprym, x, XI, ssta, esta);
[pelint, pelspline] = calcspline(SE1102.HPLC.pigrats.chlapel, x, XI, ssta, esta);
[diatint, diatspline] = calcspline(SE1102.HPLC.pigrats.chladiat, x, XI, ssta, esta);
[dinoint, dinospline] = calcspline(SE1102.HPLC.pigrats.chladino, x, XI, ssta, esta);
[otherint, otherspline] = calcspline(SE1102.HPLC.pigrats.chlaothers, x, XI, ssta, esta);
[totalint, totalspline] = calcspline(SE1102.HPLC.pigrats.chlatotal, x, XI, ssta, esta);

subplot(2,3,6)
plot(prospline./1000, XI,'b-','LineWidth',3)
axis ij
set(gca, 'XLim', [0 0.5])
hold on
plot(prymspline./1000, XI,'g-','LineWidth',3)
plot(pelspline./1000, XI,'r-','LineWidth',3)
plot(diatspline./1000, XI,'m-','LineWidth',3)
plot(dinospline./1000, XI,'c-','LineWidth',3)
plot(otherspline./1000, XI,'y-','LineWidth',3)
plot(totalspline./1000, XI,'k--','LineWidth',3)

title('Phytoplankton Composition at TZCF in 2011')
xlabel('Chl-a (mg m-3)')
ylabel('Pressure (db)')
legend('Location','southeast', 'Prochloro', 'Prymnesio','Pelago','Diatoms','Dinoflag','All Other','Total Chl-a')