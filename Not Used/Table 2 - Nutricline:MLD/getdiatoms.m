%Return the estimated average diatom concentration in the top 100m for 28-30N

%make sure statistics package is loaded
%pkg load statistics

function out = getdiatoms (in)

out = 1;

if isstruct(in) == 0
    disp('This function expects a Nutrient data structure, such as TC9805.HPLC')
    out = -1;
    return
endif

bottom = 100; %Lower depth to calculate

out = 0;
i=28;

in.pigrats.chladiat(find(in.pigrats.chladiat<0)) = 0; %Get rid of erroneous negative numbers.

indx = find(in.latitude(1,:)>=i&in.latitude(1,:)<i+2);
indy = find(in.pressure(:,1)>=20&in.pressure(:,1)<=100);
%x = in.pressure(indy,indx(end));
out = nanmean(nanmean(in.pigrats.chladiat(indy,indx)));

endfunction