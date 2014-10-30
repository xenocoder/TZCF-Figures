%Make a barplot of the available HPLC for 2-degree bins. Just do total, prokaryotes, and eukaryotes

% We will make 6 bins:
% Chla total
% SEXX02.HPLC.pigrats.chlapro (prochlorococcus)
% SEXX02.HPLC.pigrats.chlaprym (prymnesiophytes)
% SEXX02.HPLC.pigrats.chlapel (pelagophytes)
% SEXX02.HPLC.pigrats.chladiat (diatoms)
% SEXX02.HPLC.pigrats.chladino (dinoflagellates)
% SEXX02.HPLC.pigrats.chlaother (all other)

XI = 1:150; %Make spline based on pressure 0-175

%2008
ssta = stationlistHPLC.STFZ(1,1);
esta = stationlistHPLC.STFZ(1,2);
x = SE0802.HPLC.pigrats.pressure(:,ssta);

pro = nanmean(SE0802.HPLC.pigrats.chlapro(:,ssta:esta),2);
prospline = spline(x,pro,XI); %do spline of Y at 1:150 (as 2009 only goes to 175)
proint = sum(prospline)./1000; %sum of prochloro chl-a in mg m-3
%DO REST AND DO BAR CHART OF COMPONENTS?

eukspline = spline(x,euk,XI); %do spline of Y at 1:150 (as 1998 only goes to 175)
tcspline = prokspline+eukspline;
out(count,:) = [i sum(prospline)./1000 sum(euspline)./1000 sum(tcspline)./1000]
count = count + 1;