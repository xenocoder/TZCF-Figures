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

i=32;
ind = find(in.latitude(1,:)>=i&in.latitude(1,:)<=i+2);
p = in.pressure(:,ind(end));
yt = gsw_z_from_p(p,29)*-1.0; %Calculate depth, latitude is 29N here

indnuts = find(in.NUTS.latitude(1,:)>=i&in.NUTS.latitude(1,:)<=i+2);
xn = nanmean(in.NUTS.nitrate(:,indnuts),2);
yn = in.NUTS.pressure(:,indnuts(end));

xt = nanmean(in.temperature(:,ind),2);

xd = nanmean(in.density(:,ind),2);

xf = nanmean(in.fluorcorrected(:,ind),2); %fluorescence 

reft = interp1(yt,xt,20); %Find where depth is 20m

nclinedepth = interp1(xn,yn,XI); %Get depth where nutricline (1 UM NO3)

d15 = interp1(xt+rand(length(xt),1)./1000,yt,15);

mld = interp1(xt+rand(length(xt),1)./1000,yt,reft-0.2);

dcm = yt(find(xf==max(xf)));

%Stratification index based on Behrenfeld et al. 2006 Nature
dens20 = interp1(yt,xd,20); %Find density value at 20m
dens150 = interp1(yt,xd,200); %find density value at 200m
deltadens = (dens150-dens20); %density change per m

%Find integrated fluor 50-150m
intind = find(yt>=10&yt<=215);
ytint = yt(intind);
xtint = xt(intind);
xfint = xf(intind);
YI = 15:150;

tempspline = spline(ytint, xtint, YI);
tempint = sum(diff(tempspline));

fluorspline = spline(ytint, xfint, YI);
fluorint = sum(fluorspline);

fprintf("%f, %f, %f, %f, %f, %f\n", nclinedepth, mld, d15, dcm, fluorint, deltadens);

out = [nclinedepth mld d15, dcm fluorint deltadens];

endfunction