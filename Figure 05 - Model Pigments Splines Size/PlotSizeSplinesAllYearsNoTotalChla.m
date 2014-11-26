%Plot splines for Hirata equation values

%2008 STFZ
XI = 1:200; %Make spline based on pressure 0-175
ssta = stationlistHPLC.STFZ(1,1);
esta = stationlistHPLC.STFZ(1,2);
x = SE0802.HPLC.pigrats.pressure(:,ssta);

picoplspline = interphplc08(SE0802.HPLC.hirata.picopl(:,ssta:esta),x,1:200);
nanoplspline = interphplc08(SE0802.HPLC.hirata.nanopl(:,ssta:esta),x,1:200);
microplspline = interphplc08(SE0802.HPLC.hirata.micropl(:,ssta:esta),x,1:200);
SDPspline = interphplc08(SE0802.HPLC.hirata.SDP(:,ssta:esta),x,1:200);
totalspline = interphplc08(SE0802.HPLC.hirata.C(:,ssta:esta),x,1:200);

% [~, picoplspline] = calcspline(SE0802.HPLC.hirata.picopl, x, XI, ssta, esta);
% [~, nanoplspline] = calcspline(SE0802.HPLC.hirata.nanopl, x, XI, ssta, esta);
% [~, microplspline] = calcspline(SE0802.HPLC.hirata.micropl, x, XI, ssta, esta);
% [~, SDPspline] = calcspline(SE0802.HPLC.hirata.SDP, x, XI, ssta, esta);
% [~, totalspline] = calcspline(SE0802.HPLC.hirata.C, x, XI, ssta, esta);

% picoplspline(1,150:175) = 0; %spline freaks out at lower levels but no real signal
% nanoplspline(1,150:175) = 0; %spline freaks out at lower levels but no real signal
% microplspline(1,150:175) = 0; %spline freaks out at lower levels but no real signal
% SDPspline(1,150:175) = 0; %spline freaks out at lower levels but no real signal
% totalspline(1,150:175) = 0; %spline freaks out at lower levels but no real signal

clf
subplot(2,3,1)
plot(picoplspline(1:175)./SDPspline(1:175).*totalspline(1:175)./1000, XI(1:175),'b-','LineWidth',3)
axis ij
set(gca, 'XLim', [0 0.3], 'YLim', [0 180])
hold on
plot(nanoplspline(1:175)./SDPspline(1:175).*totalspline(1:175)./1000, XI(1:175),'g-','LineWidth',3)
plot(microplspline(1:175)./SDPspline(1:175).*totalspline(1:175)./1000, XI(1:175),'r-','LineWidth',3)
% plot(totalspline./1000, XI,'k--','LineWidth',3)

title('Phytoplankton Composition at STFZ in 2008')
xlabel('Chl-a (mg m-3)')
ylabel('Pressure (db)')
%legend('Location','southeast', 'picoplankton', 'nanoplankton','microplankton')

%2008 TZCF
ssta = stationlistHPLC.TZCF(1,1);
esta = stationlistHPLC.TZCF(1,2);
x = SE0802.HPLC.pigrats.pressure(:,ssta);

picoplspline = interphplc08(SE0802.HPLC.hirata.picopl(:,ssta:esta),x,1:200);
nanoplspline = interphplc08(SE0802.HPLC.hirata.nanopl(:,ssta:esta),x,1:200);
microplspline = interphplc08(SE0802.HPLC.hirata.micropl(:,ssta:esta),x,1:200);
SDPspline = interphplc08(SE0802.HPLC.hirata.SDP(:,ssta:esta),x,1:200);
totalspline = interphplc08(SE0802.HPLC.hirata.C(:,ssta:esta),x,1:200);

% [~, picoplspline] = calcspline(SE0802.HPLC.hirata.picopl, x, XI, ssta, esta);
% [~, nanoplspline] = calcspline(SE0802.HPLC.hirata.nanopl, x, XI, ssta, esta);
% [~, microplspline] = calcspline(SE0802.HPLC.hirata.micropl, x, XI, ssta, esta);
% [~, SDPspline] = calcspline(SE0802.HPLC.hirata.SDP, x, XI, ssta, esta);
% [~, totalspline] = calcspline(SE0802.HPLC.hirata.C, x, XI, ssta, esta);
% 
% picoplspline(1,150:175) = 0; %spline freaks out at lower levels but no real signal
% nanoplspline(1,150:175) = 0; %spline freaks out at lower levels but no real signal
% microplspline(1,150:175) = 0; %spline freaks out at lower levels but no real signal
% SDPspline(1,150:175) = 0; %spline freaks out at lower levels but no real signal
% totalspline(1,150:175) = 0; %spline freaks out at lower levels but no real signal

subplot(2,3,4)
plot(picoplspline(1:175)./SDPspline(1:175).*totalspline(1:175)./1000, XI(1:175),'b-','LineWidth',3)
axis ij
set(gca, 'XLim', [0 0.3], 'YLim', [0 180])
hold on
plot(nanoplspline(1:175)./SDPspline(1:175).*totalspline(1:175)./1000, XI(1:175),'g-','LineWidth',3)
plot(microplspline(1:175)./SDPspline(1:175).*totalspline(1:175)./1000, XI(1:175),'r-','LineWidth',3)
% plot(totalspline./1000, XI,'k--','LineWidth',3)

title('Phytoplankton Composition at TZCF in 2008')
xlabel('Chl-a (mg m-3)')
ylabel('Pressure (db)')
%legend('Location','southeast', 'picoplankton', 'nanoplankton','microplankton')

%2009 STFZ
XI = 1:175; %Make spline based on pressure 0-175
ssta = stationlistHPLC.STFZ(2,1);
esta = stationlistHPLC.STFZ(2,2);
x = SE0902.HPLC.pigrats.pressure(:,ssta);

[~, picoplspline] = calcinterp(SE0902.HPLC.hirata.picopl, x, XI, ssta, esta);
[~, nanoplspline] = calcinterp(SE0902.HPLC.hirata.nanopl, x, XI, ssta, esta);
[~, microplspline] = calcinterp(SE0902.HPLC.hirata.micropl, x, XI, ssta, esta);
[~, SDPspline] = calcinterp(SE0902.HPLC.hirata.SDP, x, XI, ssta, esta);
[~, totalspline] = calcinterp(SE0902.HPLC.hirata.C, x, XI, ssta, esta);

subplot(2,3,2)
plot(picoplspline./SDPspline.*totalspline./1000, XI,'b-','LineWidth',3)
axis ij
set(gca, 'XLim', [0 0.3], 'YLim', [0 180])
hold on
plot(nanoplspline./SDPspline.*totalspline./1000, XI,'g-','LineWidth',3)
plot(microplspline./SDPspline.*totalspline./1000, XI,'r-','LineWidth',3)
%plot(totalspline./1000, XI,'k--','LineWidth',3)

title('Phytoplankton Composition at STFZ in 2009')
xlabel('Chl-a (mg m-3)')
ylabel('Pressure (db)')
%legend('Location','southeast', 'picoplankton', 'nanoplankton','microplankton')

%2009 TZCF
ssta = stationlistHPLC.TZCF(2,1);
esta = stationlistHPLC.TZCF(2,2);
x = SE0902.HPLC.pigrats.pressure(:,ssta);

[~, picoplspline] = calcinterp(SE0902.HPLC.hirata.picopl, x, XI, ssta, esta);
[~, nanoplspline] = calcinterp(SE0902.HPLC.hirata.nanopl, x, XI, ssta, esta);
[~, microplspline] = calcinterp(SE0902.HPLC.hirata.micropl, x, XI, ssta, esta);
[~, SDPspline] = calcinterp(SE0902.HPLC.hirata.SDP, x, XI, ssta, esta);
[~, totalspline] = calcinterp(SE0902.HPLC.hirata.C, x, XI, ssta, esta);

subplot(2,3,5)
plot(picoplspline./SDPspline.*totalspline./1000, XI,'b-','LineWidth',3)
axis ij
set(gca, 'XLim', [0 0.3], 'YLim', [0 180])
hold on
plot(nanoplspline./SDPspline.*totalspline./1000, XI,'g-','LineWidth',3)
plot(microplspline./SDPspline.*totalspline./1000, XI,'r-','LineWidth',3)
%plot(totalspline./1000, XI,'k--','LineWidth',3)

title('Phytoplankton Composition at TZCF in 2009')
xlabel('Chl-a (mg m-3)')
ylabel('Pressure (db)')
%legend('Location','southeast', 'picoplankton', 'nanoplankton','microplankton')

%2011 STFZ
ssta = stationlistHPLC.STFZ(3,1);
esta = stationlistHPLC.STFZ(3,2);
x = SE1102.HPLC.pigrats.pressure(:,ssta);

[~, picoplspline] = calcspline(SE1102.HPLC.hirata.picopl, x, XI, ssta, esta);
[~, nanoplspline] = calcspline(SE1102.HPLC.hirata.nanopl, x, XI, ssta, esta);
[~, microplspline] = calcspline(SE1102.HPLC.hirata.micropl, x, XI, ssta, esta);
[~, SDPspline] = calcspline(SE1102.HPLC.hirata.SDP, x, XI, ssta, esta);
[~, totalspline] = calcspline(SE1102.HPLC.hirata.C, x, XI, ssta, esta);

picoplspline(1,160:175) = 0; %spline freaks out at lower levels but no real signal
nanoplspline(1,160:175) = 0; %spline freaks out at lower levels but no real signal
microplspline(1,160:175) = 0; %spline freaks out at lower levels but no real signal
%SDPspline(1,160:175) = 0; %spline freaks out at lower levels but no real signal
%totalspline(1,160:175) = 0; %spline freaks out at lower levels but no real signal

subplot(2,3,3)
plot(picoplspline./SDPspline.*totalspline./1000, XI,'b-','LineWidth',3)
axis ij
set(gca, 'XLim', [0 0.3], 'YLim', [0 180])
hold on
plot(nanoplspline./SDPspline.*totalspline./1000, XI,'g-','LineWidth',3)
plot(microplspline./SDPspline.*totalspline./1000, XI,'r-','LineWidth',3)
%plot(totalspline./1000, XI,'k--','LineWidth',3)

title('Phytoplankton Composition at STFZ in 2011')
xlabel('Chl-a (mg m-3)')
ylabel('Pressure (db)')
%legend('Location','southeast', 'picoplankton', 'nanoplankton','microplankton')

%2011 TZCF
ssta = stationlistHPLC.TZCF(3,1);
esta = stationlistHPLC.TZCF(3,2);
x = SE1102.HPLC.pigrats.pressure(:,ssta);

[~, picoplspline] = calcinterp(SE1102.HPLC.hirata.picopl, x, XI, ssta, esta);
[~, nanoplspline] = calcinterp(SE1102.HPLC.hirata.nanopl, x, XI, ssta, esta);
[~, microplspline] = calcinterp(SE1102.HPLC.hirata.micropl, x, XI, ssta, esta);
[~, SDPspline] = calcinterp(SE1102.HPLC.hirata.SDP, x, XI, ssta, esta);
[~, totalspline] = calcinterp(SE1102.HPLC.hirata.C, x, XI, ssta, esta);

subplot(2,3,6)
plot(picoplspline./SDPspline.*totalspline./1000, XI,'b-','LineWidth',3)
axis ij
set(gca, 'XLim', [0 0.3], 'YLim', [0 180])
hold on
plot(nanoplspline./SDPspline.*totalspline./1000, XI,'g-','LineWidth',3)
plot(microplspline./SDPspline.*totalspline./1000, XI,'r-','LineWidth',3)
%plot(totalspline./1000, XI,'k--','LineWidth',3)

title('Phytoplankton Composition at TZCF in 2011')
xlabel('Chl-a (mg m-3)')
ylabel('Pressure (db)')
legend('Location','southeast', 'picoplankton', 'nanoplankton','microplankton')