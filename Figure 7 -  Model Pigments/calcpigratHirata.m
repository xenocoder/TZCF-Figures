function out = calcpigratHirata(in)
%This is a script to calculate the size class composition based on Hirata t
%al. 2011. The equations are as follows:
%
%Calculate The sum of all. This should equal total chla
% First scale raw pigments (From Hirata et al. 2011)

%Get rid of NaNs 
Fuco = 1.41 .* in.fuco;
Perid = 1.41 .* in.per;
Hex = 1.27 .* in.hex;
Allo = 0.6 .* in.allox;
But = 0.35 .* in.but;
Chlb = 1.01 .* in.mvb;
Zea = 0.86 .* in.zeax;
DVChla = 0.74 .* in.dva;

out.C = in.totalchla;

%Calculate percentage of nanoplankton and picoplankton in Hex (Brewin et
%al. 2010) picoplankton fraction increasing to one at 0.001 mg m?3 and 
% the nanoplankton fraction increasing to one at 0.08 mg m?3
chlrange = 0.001:0.001:1.1;
percnano = ones(size(chlrange));
percnano(1:80) = 0:0.0126:1;

%Get fraction of nanoplankton in Hex by using weight calculated above
out.Xn = interp1(chlrange, percnano, out.C./1000);

%Get fraction of picoplankton by subtracting from Yp
out.Yp = 1-out.Xn;

% Do sum of all pigments. This is used to get percentages
out.SDP = Fuco + Perid + Hex + Allo + But + Chlb + Zea; %= Chl-a (Uitz et al., 2006)

%Calculate straight values
out.diatoms = Fuco; %diatoms
out.dino = Perid; %dinoflagellates
out.galgae = Chlb; %Green algae
out.prok = Zea; %prokaryotes
out.proc = DVChla; %prochlorococcus (divide by totalchla

out.picopl = (Zea + Chlb + out.Yp .* Hex); %Look at Uitz et al. 2006
out.nanopl = (out.Xn .* Hex + But + Allo); %Nanoplankton (2-20um)
out.micropl = (Fuco + Perid); % Microplankton (>20um)^2 so need to sqrt

out.prym = out.nanopl - out.galgae; %approximated from Hirata et al. 2011
out.picoeuk = out.picopl - out.prok; %approximated from Hirata et al. 2011

%Calculate percentages
out.diatompercent = Fuco./out.SDP; %diatoms
out.dinopercent = Perid./out.SDP; %dinoflagellates
out.galgaepercent = Chlb ./ out.SDP; %Green algae
out.prokpercent = Zea ./ out.SDP; %prokaryotes
out.procpercent = DVChla; %prochlorococcus (divide by totalchla

out.picoplpercent = (Zea + out.Yp .* Hex) ./ out.SDP;
out.nanoplpercent = (out.Xn .* Hex + Chlb + But + Allo)./out.SDP; %Nanoplankton (2-20um)
out.microplpercent = (Fuco + Perid) ./ out.SDP; % Microplankton (>20um)^2 so need to sqrt

out.prympercent = out.nanopl - out.galgae; %approximated from Hirata et al. 2011
out.picoeukpercent = out.picopl - out.prok; %approximated from Hirata et al. 2011

end
