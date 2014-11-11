function out = calcpigratHirata(in)
%This is a script to calculate the size class composition based on Hirata t
%al. 2011. The equations are as follows:
%
%Calculate The sum of all. This should equal total chla
% First scale raw pigments (From Hirata et al. 2011)
Fuco = 1.41 .* in.fuco;
Perid = 1.41 .* in.per;
Hex = 1.27 .* in.hex;
Allo = 0.6 .* in.allox;
But = 0.35 .* in.but;
Chlb = 1.01 .* in.mvb;
Zea = 0.86 .* in.zeax;

C = in.totalchla;

%Calculate percentage of nanoplankton and picoplankton in Hex (Brewin et
%al. 2010) picoplankton fraction increasing to one at 0.001 mg m?3 and 
% the nanoplankton fraction increasing to one at 0.08 mg m?3
chlrange = 0.001:0.001:1.1;
percnano = ones(size(chlrange));
percnano(1:80) = 0:0.0126:1;

%Get fraction of nanoplankton in Hex by using weight calculated above
Xn = interp1(chlrange, percnano, C./1000);

%Get fraction of picoplankton by subtracting from Yp
Yp = 1-Xn;

% Do sum of all pigments
SDP = Fuco + Perid + Hex + Allo + But + Chlb + Zea; %= Chl-a (Uitz et al., 2006)
SDPsq = SDP.^2;
SDPcu = SDP.^3;

diatoms = Fuco./SDPsq; %diatoms
dino = Perid./SDPsq; %dinoflagellates
galgae = Chlb ./ SDPsq; %Green algae
prok = Zea ./ SDPsq; %prokaryotes

picopl = (Zea + Yp .* Hex) ./ SDPcu;
nanopl = (Xn .* Hex + Chlb + But + Allo)./SDPcu; %Nanoplankton (2-20um)
micropl = sqrt((Fuco + Perid) ./ SDPsq); % Microplankton (>20um)^2 so need to sqrt

prym = nanopl - galgae; %approximated from Hirata et al. 2011

out = 1;
end
