function md50 = mediancell(sst, chla)

%This is a Matlab function to calculate the median cell size from
%Chlorophyll-a and SST fields. This is taken from Polovina et al., 2012
%
%Polovina, J.J., Woodworth, P.A., 2012. Declines in phytoplankton cell size 
%in the subtropical oceans estimated from satellite remotely-sensed 
%temperature and chlorophyll, 1998?2007. Deep Sea Research Part II: 
%Topical Studies in Oceanography, 77-80, 82-88.

%first calculate median phytoplankton cell weight
    x = sst;
    y = log10(chla);

    a = 1.340 - 0.043.*x + 0.920.*y;

    mb50 = 10.^a;
    
    md50 = (2.14.*mb50).^0.35;

end