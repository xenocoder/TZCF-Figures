%Calculate stratification index for each year
%
% Index is ususally 200-0 but we are limited to 15m so here it's 200-15m
%
% Written 09/19/14 by Evan Howell (Evan.Howell@noaa.gov)

SE0802.stratification = SE0802.density(196,2:end) - SE0802.density(11,2:end);
SE0902.stratification = SE0902.density(188,2:end) - SE0902.density(3,2:end);
SE1102.stratification = SE1102.density(196,:) - SE1102.density(11,:);