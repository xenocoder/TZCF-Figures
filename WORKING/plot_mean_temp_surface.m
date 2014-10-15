% A matlab script to plot the mean temperature and salinity from 15-35m for
% all three cruises.
%
% Written 09/19/14 by Evan Howell (Evan.Howell@noaa.gov)

surf = {};

%surf.temperature = mean(SE0802.temperature(11:31,2:end));
%surf.temperature = mean(SE0902.temperature(3:23, 2:end));
surf.temperature = mean(SE1102.temperature(11:31, :));

%surf.salinity = mean(SE0802.salinity(11:31,2:end));
%surf.salinity = mean(SE0902.salinity(3:23, 2:end));
surf.salinity = mean(SE1102.salinity(11:31, :));

%surf.density = mean(SE0802.density(11:31,2:end));
%surf.density = mean(SE0902.density(3:23, 2:end));
surf.density = mean(SE1102.density(11:31, :));

%surf.fluor = mean(SE0802.fluorcorrected(11:31,2:end));
%surf.fluor = mean(SE0902.fluorcorrected(3:23, 2:end));
surf.fluor = mean(SE1102.fluorcorrected(11:31, :));

clf
plot(SE0802.latitude(2:end),a,'b-')
hold on
plot(SE0902.latitude(2:end),b,'g-')
plot(SE1102.latitude,c,'r-')

set(gca,'xlim',([26 36]))
xlabel('Latitude (N)')
%ylabel('Temperature (°C)')
%ylabel('Salinity (PSU)')
ylabel('Density (kg m-3)')

legend('2008','2009','2011')