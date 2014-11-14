%Plot splines for Hirata equation values
XI = 1:175; %Make spline based on pressure 0-175

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

[~, procspline] = calcspline(SE0802.HPLC.hirata.proc, x, XI, ssta, esta);
[~, prokspline] = calcspline(SE0802.HPLC.hirata.prok, x, XI, ssta, esta);
[~, prymspline] = calcspline(SE0802.HPLC.hirata.prym, x, XI, ssta, esta);
[~, picoeukspline] = calcspline(SE0802.HPLC.hirata.picoeuk, x, XI, ssta, esta);
[~, diatspline] = calcspline(SE0802.HPLC.hirata.diatoms, x, XI, ssta, esta);
[~, dinospline] = calcspline(SE0802.HPLC.hirata.dino, x, XI, ssta, esta);
[~, galgaespline] = calcspline(SE0802.HPLC.hirata.galgae, x, XI, ssta, esta);
[~, totalspline] = calcspline(SE0802.HPLC.hirata.C, x, XI, ssta, esta);

clf
subplot(2,3,1)
plot(procspline./1000, XI,'b-','LineWidth',3)
axis ij
set(gca, 'XLim', [0 0.5])
hold on
plot(prymspline./1000, XI,'g-','LineWidth',3)
plot(prokspline./1000, XI,'r-','LineWidth',3)
plot(diatspline./1000, XI,'m-','LineWidth',3)
plot(dinospline./1000, XI,'c-','LineWidth',3)
plot(galgaespline./1000, XI,'y-','LineWidth',3)
plot(picoeukspline./1000, XI,'b--','LineWidth',3)
plot(totalspline./1000, XI,'k--','LineWidth',3)

title('Phytoplankton Composition at STFZ in 2008')
xlabel('Chl-a (mg m-3)')
ylabel('Pressure (db)')
legend('Location','southeast', 'Prochloro', 'Prymnesio','Prokaryotes','Diatoms','Dinoflag','Green Algae','Pico Euokaryotes','Total Chl-a')

%2008 TZCF
ssta = stationlistHPLC.TZCF(1,1);
esta = stationlistHPLC.TZCF(1,2);
x = SE0802.HPLC.pigrats.pressure(:,ssta);

[~, procspline] = calcspline(SE0802.HPLC.hirata.proc, x, XI, ssta, esta);
[~, prokspline] = calcspline(SE0802.HPLC.hirata.prok, x, XI, ssta, esta);
[~, prymspline] = calcspline(SE0802.HPLC.hirata.prym, x, XI, ssta, esta);
[~, picoeukspline] = calcspline(SE0802.HPLC.hirata.picoeuk, x, XI, ssta, esta);
[~, diatspline] = calcspline(SE0802.HPLC.hirata.diatoms, x, XI, ssta, esta);
[~, dinospline] = calcspline(SE0802.HPLC.hirata.dino, x, XI, ssta, esta);
[~, galgaespline] = calcspline(SE0802.HPLC.hirata.galgae, x, XI, ssta, esta);
[~, totalspline] = calcspline(SE0802.HPLC.hirata.C, x, XI, ssta, esta);

subplot(2,3,4)
plot(procspline./1000, XI,'b-','LineWidth',3)
axis ij
set(gca, 'XLim', [0 0.5])
hold on
plot(prymspline./1000, XI,'g-','LineWidth',3)
plot(prokspline./1000, XI,'r-','LineWidth',3)
plot(diatspline./1000, XI,'m-','LineWidth',3)
plot(dinospline./1000, XI,'c-','LineWidth',3)
plot(galgaespline./1000, XI,'y-','LineWidth',3)
plot(picoeukspline./1000, XI,'b--','LineWidth',3)
plot(totalspline./1000, XI,'k--','LineWidth',3)

title('Phytoplankton Composition at TZCF in 2008')
xlabel('Chl-a (mg m-3)')
ylabel('Pressure (db)')
legend('Location','southeast', 'Prochloro', 'Prymnesio','Prokaryotes','Diatoms','Dinoflag','Green Algae','Pico Euokaryotes','Total Chl-a')

%2009 STFZ
ssta = stationlistHPLC.STFZ(2,1);
esta = stationlistHPLC.STFZ(2,2);
x = SE0902.HPLC.pigrats.pressure(:,ssta);

[~, procspline] = calcspline(SE0902.HPLC.hirata.proc, x, XI, ssta, esta);
[~, prokspline] = calcspline(SE0902.HPLC.hirata.prok, x, XI, ssta, esta);
[~, prymspline] = calcspline(SE0902.HPLC.hirata.prym, x, XI, ssta, esta);
[~, picoeukspline] = calcspline(SE0902.HPLC.hirata.picoeuk, x, XI, ssta, esta);
[~, diatspline] = calcspline(SE0902.HPLC.hirata.diatoms, x, XI, ssta, esta);
[~, dinospline] = calcspline(SE0902.HPLC.hirata.dino, x, XI, ssta, esta);
%[~, galgaespline] = calcspline(SE0902.HPLC.hirata.galgae, x, XI, ssta, esta);
galgaespline = interp1(x,nanmean(SE0902.HPLC.hirata.galgae(:,ssta:esta),2),XI);
[~, totalspline] = calcspline(SE0902.HPLC.hirata.C, x, XI, ssta, esta);

subplot(2,3,2)
plot(procspline./1000, XI,'b-','LineWidth',3)
axis ij
set(gca, 'XLim', [0 0.5])
hold on
plot(prymspline./1000, XI,'g-','LineWidth',3)
plot(prokspline./1000, XI,'r-','LineWidth',3)
plot(diatspline./1000, XI,'m-','LineWidth',3)
plot(dinospline./1000, XI,'c-','LineWidth',3)
%plot(galgaespline./1000, XI,'y-','LineWidth',3)
plot(galgaespline./1000, XI, 'y-', 'LineWidth',3)
plot(picoeukspline./1000, XI,'b--','LineWidth',3)
plot(totalspline./1000, XI,'k--','LineWidth',3)

title('Phytoplankton Composition at STFZ in 2009')
xlabel('Chl-a (mg m-3)')
ylabel('Pressure (db)')
legend('Location','southeast', 'Prochloro', 'Prymnesio','Prokaryotes','Diatoms','Dinoflag','Green Algae','Pico Euokaryotes','Total Chl-a')

%2009 TZCF
ssta = stationlistHPLC.TZCF(2,1);
esta = stationlistHPLC.TZCF(2,2);
x = SE0902.HPLC.pigrats.pressure(:,ssta);

[~, procspline] = calcspline(SE0902.HPLC.hirata.proc, x, XI, ssta, esta);
[~, prokspline] = calcspline(SE0902.HPLC.hirata.prok, x, XI, ssta, esta);
[~, prymspline] = calcspline(SE0902.HPLC.hirata.prym, x, XI, ssta, esta);
[~, picoeukspline] = calcspline(SE0902.HPLC.hirata.picoeuk, x, XI, ssta, esta);
[~, diatspline] = calcspline(SE0902.HPLC.hirata.diatoms, x, XI, ssta, esta);
[~, dinospline] = calcspline(SE0902.HPLC.hirata.dino, x, XI, ssta, esta);
[~, galgaespline] = calcspline(SE0902.HPLC.hirata.galgae, x, XI, ssta, esta);
[~, totalspline] = calcspline(SE0902.HPLC.hirata.C, x, XI, ssta, esta);

subplot(2,3,5)
plot(procspline./1000, XI,'b-','LineWidth',3)
axis ij
set(gca, 'XLim', [0 0.5])
hold on
plot(prymspline./1000, XI,'g-','LineWidth',3)
plot(prokspline./1000, XI,'r-','LineWidth',3)
plot(diatspline./1000, XI,'m-','LineWidth',3)
plot(dinospline./1000, XI,'c-','LineWidth',3)
plot(galgaespline./1000, XI,'y-','LineWidth',3)
plot(picoeukspline./1000, XI,'b--','LineWidth',3)
plot(totalspline./1000, XI,'k--','LineWidth',3)

title('Phytoplankton Composition at TZCF in 2009')
xlabel('Chl-a (mg m-3)')
ylabel('Pressure (db)')
legend('Location','southeast', 'Prochloro', 'Prymnesio','Prokaryotes','Diatoms','Dinoflag','Green Algae','Pico Euokaryotes','Total Chl-a')

%2011 STFZ
ssta = stationlistHPLC.STFZ(3,1);
esta = stationlistHPLC.STFZ(3,2);
x = SE1102.HPLC.pigrats.pressure(:,ssta);

[~, procspline] = calcspline(SE1102.HPLC.hirata.proc, x, XI, ssta, esta);
[~, prokspline] = calcspline(SE1102.HPLC.hirata.prok, x, XI, ssta, esta);
[~, prymspline] = calcspline(SE1102.HPLC.hirata.prym, x, XI, ssta, esta);
[~, picoeukspline] = calcspline(SE1102.HPLC.hirata.picoeuk, x, XI, ssta, esta);
[~, diatspline] = calcspline(SE1102.HPLC.hirata.diatoms, x, XI, ssta, esta);
[~, dinospline] = calcspline(SE1102.HPLC.hirata.dino, x, XI, ssta, esta);
[~, galgaespline] = calcspline(SE1102.HPLC.hirata.galgae, x, XI, ssta, esta);
[~, totalspline] = calcspline(SE1102.HPLC.hirata.C, x, XI, ssta, esta);

subplot(2,3,3)
plot(procspline./1000, XI,'b-','LineWidth',3)
axis ij
set(gca, 'XLim', [0 0.5])
hold on
plot(prymspline./1000, XI,'g-','LineWidth',3)
plot(prokspline./1000, XI,'r-','LineWidth',3)
plot(diatspline./1000, XI,'m-','LineWidth',3)
plot(dinospline./1000, XI,'c-','LineWidth',3)
plot(galgaespline./1000, XI,'y-','LineWidth',3)
plot(picoeukspline./1000, XI,'b--','LineWidth',3)
plot(totalspline./1000, XI,'k--','LineWidth',3)

title('Phytoplankton Composition at STFZ in 2011')
xlabel('Chl-a (mg m-3)')
ylabel('Pressure (db)')
legend('Location','southeast', 'Prochloro', 'Prymnesio','Prokaryotes','Diatoms','Dinoflag','Green Algae','Pico Euokaryotes','Total Chl-a')

%2011 TZCF
ssta = stationlistHPLC.TZCF(3,1);
esta = stationlistHPLC.TZCF(3,2);
x = SE1102.HPLC.pigrats.pressure(:,ssta);

[~, procspline] = calcspline(SE1102.HPLC.hirata.proc, x, XI, ssta, esta);
[~, prokspline] = calcspline(SE1102.HPLC.hirata.prok, x, XI, ssta, esta);
[~, prymspline] = calcspline(SE1102.HPLC.hirata.prym, x, XI, ssta, esta);
[~, picoeukspline] = calcspline(SE1102.HPLC.hirata.picoeuk, x, XI, ssta, esta);
[~, diatspline] = calcspline(SE1102.HPLC.hirata.diatoms, x, XI, ssta, esta);
[~, dinospline] = calcspline(SE1102.HPLC.hirata.dino, x, XI, ssta, esta);
[~, galgaespline] = calcspline(SE1102.HPLC.hirata.galgae, x, XI, ssta, esta);
[~, totalspline] = calcspline(SE1102.HPLC.hirata.C, x, XI, ssta, esta);

subplot(2,3,6)
plot(procspline./1000, XI,'b-','LineWidth',3)
axis ij
set(gca, 'XLim', [0 0.5])
hold on
plot(prymspline./1000, XI,'g-','LineWidth',3)
plot(prokspline./1000, XI,'r-','LineWidth',3)
plot(diatspline./1000, XI,'m-','LineWidth',3)
plot(dinospline./1000, XI,'c-','LineWidth',3)
plot(galgaespline./1000, XI,'y-','LineWidth',3)
plot(picoeukspline./1000, XI,'b--','LineWidth',3)
plot(totalspline./1000, XI,'k--','LineWidth',3)

title('Phytoplankton Composition at TZCF in 2011')
xlabel('Chl-a (mg m-3)')
ylabel('Pressure (db)')
legend('Location','southeast', 'Prochloro', 'Prymnesio','Prokaryotes','Diatoms','Dinoflag','Green Algae','Pico Euokaryotes','Total Chl-a')