%Return the estimated nutricline depth for all stations

%make sure statistics package is loaded
%pkg load statistics

function out = getnutricline (in)

out = 1;

if isstruct(in) == 0
    disp('This function expects a Nutrient data structure, such as TC9805.NUTS')
    out = -1;
    return
endif

XI = 1; %Depth of the nitricline (Taken from Seki et al. 2002)

out = zeros(5,1);
count = 1;

in.nitrate(find(in.nitrate<0)) = 0; %Get rid of erroneous negative numbers.

for i = 26:2:34 %All but 1998
%for i = 26:2:30 %1998
    ind = find(in.latitude(1,:)>=i&in.latitude(1,:)<i+2);
    y = in.pressure(:,ind(end));
    x = nanmean(in.nitrate(:,ind),2);
    nclinedepth = interp1(x,y,XI); %Get depth where nutricline (1 UM NO3)
    out(count,1) = nclinedepth
    count = count + 1;
endfor

endfunction