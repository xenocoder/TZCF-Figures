% FUNCTION [intval, splval] = calcspline(inpigment, x, XI, ssta, esta)
%
% Function to calculate the spline curve for pigment profiles, as well as
% return the integrated 0-150m value.
%
% INPUT VARIABLES
% inpigment - The pigment to calculate the spline curve on (e.g.
% SE0802.HPLC.pigrats.chlapro)
%
% x - the actual pressure vector
%
% XI - The model pressure range (e.g. 0-150);
%
% ssta - the starting station (e.g. stationlist.STFZ(1,1)
%
% esta - the ending station (e.g. stationlist.STFZ(1,2)
%
% Written by Evan Howell 10/30/2014
% 
% Example: 
% x = SE0802.HPLC.pigrats.pressure(:,ssta);
% XI = 1:150;
% ssta = stationlistHPLC.STFZ(1,1);
% esta = stationlistHPLC.STFZ(1,2);
% [intval, splval] = calcspline(SE0802.HPLC.pigrats.chlapro, x, XI, ssta,
% esta);

function [intval, splval] = calcspline(inpigment, x, XI, ssta, esta)
    a = inpigment(:,ssta:esta);
    a(isnan(a)) = 0; %NaNs are values too low to detect so calling 0
    pigval = nanmean(a,2);
    splval = spline(x,pigval,XI); %do spline of Y at 1:150 (as 2009 only goes to 175)
    splval(splval<0) = 0;
    intval = sum(splval)./1000; %sum of prochloro chl-a in mg m-3

end