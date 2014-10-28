%MATLAB script to plot 2008, 2009, and 2011 picophytoplankton Variables

% want to plot picophytoplankton here Prochlorococcus and synechecocchus 
% From Li et al. 2013: Surface waters of the NPSG are characterized by low nutrient 
% concentrations, deep penetration of photosynthetically available 
% radiation, low plankton biomass, and dominance of plankton biomass 
% by photosynthetic cyanobacteria such as Prochlorococcus and Synechoccocus 
% (Campbell and Vaulot, 1993; Letelier et al., 1993; Andersen et al.,1996; 
% Malmstrom et al., 2010).

% Despite persistently oligotrophic conditions, the euphotic zone of this
% habitat supported a phylogenetically diverse assemblage of chromophytic
% algae, including representatives of various genera of diatoms,
% pelagophytes, prymnesiophytes, and dinoflagellates.

% Similarly, we observed elevated concentrations of 19-hexanoxyfucoxanthin
% and 19-butanoxyfucoxanin (diagnostic pigments of prymnesiophytes and
% pelagophytes, respectively) in the lower euphotic zone, while
% concentrations of fucoxanthin (a diagnostic diatom pigment) demon-
% strated less vertical structure.

% Our study confirms that diatoms are ubiquitous and diverse members of the
% euphotic zone phytoplankton assemblage in the NPSG, while prymnesiophytes
% and pelagophytes appear to capitalize on the relatively nutrient-enriched
% but low light conditions characteristic of the deeper euphotic zone
% waters

%Here taking divinyl-chlorophyll-a as prochlorococcus and
% Zeaxanthin as synechoccus (prokaryotic phytoplankton)

%2008
clf
subplot(1,2,1)
ssta = stationlistHPLC.STFZ(1,1);
esta = stationlistHPLC.STFZ(1,2);
x = nanmean(SE0802.HPLC.dva(:,ssta:esta),2);
y = SE0802.HPLC.pressure(:,ssta);
plot(x,y,'b-','linewidth',5);
set(gca, 'xlim',[0 200])
axis ij
hold on

ssta = stationlistHPLC.STFZ(2,1);
esta = stationlistHPLC.STFZ(2,2);
x = nanmean(SE0902.HPLC.dva(:,ssta:esta),2);
y = SE0902.HPLC.pressure(:,ssta);
plot(x,y,'r-','linewidth',5)

ssta = stationlistHPLC.STFZ(3,1);
esta = stationlistHPLC.STFZ(3,2);
x = nanmean(SE1102.HPLC.dva(:,ssta:esta),2);
y = SE1102.HPLC.pressure(:,ssta);
plot(x,y,'k-','linewidth',5)

legend('2008','2009','2011','Location','northeast')
title('Mean Divinyl-Chlorophyll-a at STFZ')
xlabel('Divinyl-Chlorophyll-a (nmol kg-1)')
ylabel('Pressure (db)')

%TZCF%
subplot(1,2,2)
ssta = stationlistHPLC.TZCF(1,1);
esta = stationlistHPLC.TZCF(1,2);
x = nanmean(SE0802.HPLC.dva(:,ssta:esta),2);
y = SE0802.HPLC.pressure(:,ssta);
plot(x,y,'b-','linewidth',5)
set(gca, 'xlim',[0 200])
axis ij
hold on

ssta = stationlistHPLC.TZCF(2,1);
esta = stationlistHPLC.TZCF(2,2);
x = nanmean(SE0902.HPLC.dva(:,ssta:esta),2);
y = SE0902.HPLC.pressure(:,ssta);
plot(x,y,'r-','linewidth',5)

ssta = stationlistHPLC.TZCF(3,1);
esta = stationlistHPLC.TZCF(3,2);
x = nanmean(SE1102.HPLC.dva(:,ssta:esta),2);
y = SE1102.HPLC.pressure(:,ssta);
plot(x,y,'k-','linewidth',5)

legend('2008','2009','2011','Location','northeast')
title('Mean Divinyl-Chlorophyll-a at TZCF')
xlabel('Divinyl-Chlorophyll-a (nmol kg-1)')
ylabel('Pressure (db)')