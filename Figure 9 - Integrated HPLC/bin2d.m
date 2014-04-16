%Make a barplot of the available HPLC for 2-degree bins. Just do total, prokaryotes, and eukaryotes

%make sure statistics package is loaded
%pkg load statistics

function out = bin2d (in)

out = 1;

if isstruct(in) == 0
    disp('This function expects a Cruise data structure, such as TC9805HPLC')
    out = -1;
    return
endif

XI = 1:150; %Make spline based on pressure 0-175

out = zeros(5,4);
count = 1;

for i = 26:2:34 %All but 1998
%for i = 26:2:30 %1998
    ind = find(in.latitude(1,:)>=i&in.latitude(1,:)<i+2);
    x = in.pressure(:,ind(end));
    prok = nanmean(in.chlaprok(:,ind),2);
    %1998 ONLY!!!
    %prok(7) = mean([prok(6) prok(8)]); %interp missing value
    %prok(9) = prok(8); % repeast missing value
    %1998 ONLY END
    euk = nanmean(in.chlaeuk(:,ind),2);
    tc = prok+euk;
    prokspline = spline(x,prok,XI); %do spline of Y at 1:150 (as 1998 only goes to 175)
    eukspline = spline(x,euk,XI); %do spline of Y at 1:150 (as 1998 only goes to 175)
    tcspline = prokspline+eukspline;
    out(count,:) = [i sum(prokspline)./1000 sum(eukspline)./1000 sum(tcspline)./1000]
    count = count + 1;
endfor

endfunction