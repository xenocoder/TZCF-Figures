function out = FigXMakeIntSizeClasses(in,stationlistHPLCSTFZ,stationlistHPLCTZCF, year)
XI = 1:150; %Make spline based on pressure 0-175

years = [2008, 2009, 2011];
ind = find(years==year);
% We will make 6 bins:
% Chla total
% SEXX02.HPLC.pigrats.chlapro (prochlorococcus)
% SEXX02.HPLC.pigrats.chlaprym (prymnesiophytes)
% SEXX02.HPLC.pigrats.chlapel (pelagophytes)
% SEXX02.HPLC.pigrats.chladiat (diatoms)
% SEXX02.HPLC.pigrats.chladino (dinoflagellates)
% SEXX02.HPLC.pigrats.chlaother (all other)
% SEXX02.HPLC.pigrats.chlatotal (total)


% STFZ
ssta = stationlistHPLCSTFZ(ind,1);
esta = stationlistHPLCSTFZ(ind,2);
x = in.pressure(:,ssta);

[proint, prospline] = calcspline(in.chlapro, x, XI, ssta, esta);
[prymint, prymspline] = calcspline(in.chlaprym, x, XI, ssta, esta);
[pelint, pelspline] = calcspline(in.chlapel, x, XI, ssta, esta);
[diatint, diatspline] = calcspline(in.chladiat, x, XI, ssta, esta);
[dinoint, dinospline] = calcspline(in.chladino, x, XI, ssta, esta);
[otherint, otherspline] = calcspline(in.chlaothers, x, XI, ssta, esta);
[totalint, totalspline] = calcspline(in.chlatotal, x, XI, ssta, esta);

clf
subplot(1,2,1)
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

title(sprintf('Phytoplankton Composition at STFZ in %d',year))
xlabel('Chl-a (mg m-3)')
ylabel('Pressure (db)')
legend('Location','southeast', 'Prochloro', 'Prymnesio','Pelago','Diatoms','Dinoflag','All Other','Total Chl-a')

% TZCF
ssta = stationlistHPLCTZCF(ind,1);
esta = stationlistHPLCTZCF(ind,2);
x = in.pressure(:,ssta);

[proint, prospline] = calcspline(in.chlapro, x, XI, ssta, esta);
[prymint, prymspline] = calcspline(in.chlaprym, x, XI, ssta, esta);
[pelint, pelspline] = calcspline(in.chlapel, x, XI, ssta, esta);
[diatint, diatspline] = calcspline(in.chladiat, x, XI, ssta, esta);
[dinoint, dinospline] = calcspline(in.chladino, x, XI, ssta, esta);
[otherint, otherspline] = calcspline(in.chlaothers, x, XI, ssta, esta);
[totalint, totalspline] = calcspline(in.chlatotal, x, XI, ssta, esta);

subplot(1,2,2)
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

title(sprintf('Phytoplankton Composition at TZCF in %d',year))
xlabel('Chl-a (mg m-3)')
ylabel('Pressure (db)')
legend('Location','southeast', 'Prochloro', 'Prymnesio','Pelago','Diatoms','Dinoflag','All Other','Total Chl-a')

out = 1;

end

