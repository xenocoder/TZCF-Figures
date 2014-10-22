function mld = calcMLD(pt,pd,p)

% calcMLD                   calculate mixed layer depth
%==========================================================================
%
% USAGE:  
%  mld = calcMLD(pt,pd,p)
%
% DESCRIPTION:
%  This function uses the de Boyer Montégut thresholds for calculating
%  Mixed Layer Depth. These are defined as the pressures (depths) where
%  temperature (density) is 0.2°C (0.03 kg/m3) lower than the temperature
%  (density) at 10 dbar (10m). Pressure is first converted to depth using
%  the UNESCO formula in the function sw_dpth.m
%
%
% INPUT:
%  pt  =  potential temperature
%  pd  =  potential density
%  p   =  sea pressure
%
% OUTPUT:
%  mld  =  mx2 matrix with each column holding MLD from pt or pd
%    
% AUTHOR: 
%  Evan Howell
%
% VERSION NUMBER: 0.1 (14 JUNE 2012)
%
% REFERENCES:
%  
%  [1]	C.M. De Boyer Montégut, G. Madec, A.S. Fischer, A. Lazar, G., 
%  Fischer, A., Lazar, A., and Iudicone, D.: Mixed layer depth over the 
%  global ocean: An examination of profile data and a profile-based 
%  climatology, J. Geophys. Res. C. Oceans. 109 (2004) C12003.
%
%==========================================================================

[~,cs] = size(pt);

mld = zeros(cs,2);

ptthold = 0.2;
pdthold = 0.125;

%==========================================================================
%Subfunction to interpolate between points. We will find the first index
%value of the profile where the threshold (e.g. 0.03 kg/m3, 0.2C) has been
%crossed, but we then want to interpolate between that point and the
%pereceding point to approximate the actual pressure where this threshold
%was crossed (i.e. the aproximated MLD).

function val = findpoint(dat,p,thold)

ind=find(dat>thold); % find all places in profile where data change is greater than the threshold
spot = ind(1); %find the actual spot (first index point where threshold crossed)
x = [dat(spot-1), dat(spot)]; %make x the index before and the index where first >0.2 to interpolate
y = [p(spot-1), p(spot)]; %same for pressure, spot before and threshold
    
val = interp1(x,y,thold);

end

for i = 1:cs
    p10 = p(p(:,i)>=10,i);
    pt10 = pt(p(:,i)>=10,i);
    tref = pt10(1); %Temperature first
    ptx = abs(tref-pt10); %take abs as there may be slight negative changes
    mld(i,1) = findpoint(ptx,p10,ptthold); % Run findpoint for Temperature with threshold 0.2C
    
    pd10 = pd(p(:,i)>=10,i);
    dref = pd10(1); %now density
    pdx = abs(dref-pd10);
    mld(i,2) = findpoint(pdx,p10,pdthold);
end

end
