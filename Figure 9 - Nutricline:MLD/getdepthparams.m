%Return the estimated nutricline depth and MLD for 28-30N average

%make sure statistics package is loaded
%pkg load statistics

function out = getdepthparams (in)

%addpath(genpath("~/Downloads/gsw_matlab_v3_04")) % Add in GSW toolbox (on laptop)

out = 1;

if isstruct(in) == 0
    disp('This function expects a Nutrient data structure, such as TC9805.NUTS')
    out = -1;
    return
endif

XI = 1; %Depth of the nitricline (Taken from Seki et al. 2002)

%out = zeros(5,1);
%count = 1;

in.NUTS.nitrate(find(in.NUTS.nitrate<0)) = 0; %Get rid of erroneous negative numbers.

i=28;
ind = find(in.latitude(1,:)>=i&in.latitude(1,:)<=i+2);
p = in.pressure(:,ind(end));
yt = gsw_z_from_p(p,29)*-1.0; %Calculate depth, latitude is 29N here

xn = nanmean(in.NUTS.nitrate(:,ind),2);
yn = in.NUTS.pressure(:,ind(end));
xt = nanmean(in.conservativetemperature(:,ind),2);

reft = interp1(yt,xt,10); %Find where depth is 10m

nclinedepth = interp1(xn,yn,XI); %Get depth where nutricline (1 UM NO3)

mld = interp1(xt,yt,reft-0.2);

fprintf("Nutricline: %f, MLD: %f\n", nclinedepth, mld);

out = [nclinedepth mld];

endfunction