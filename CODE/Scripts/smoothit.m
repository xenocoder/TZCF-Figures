function zI = smoothit(latitude,pressure, data)
[rs,cs] = size(data);
xI=(26:0.1:36);       % interpolate between actual values to smooth plot
yI=(5:0.5:200)';
z = zeros(rs, cs);
for i=1:cs
    a = data(:,i);
    if nansum(a)>0
        a(a==0)=NaN;
        ind = isnan(a)==0;
        p = pressure;
        if size(a(a>0),1) > 1 %if more than one point!
            a1 = interp1(p(ind),a(ind),p); %interpolate missing points.
            ind = isnan(a1)==0; %find point where no NaNs (interp1 won't do start or end
            z(ind,i) = a1(ind);
        end
    end
end
z(data==0)=0; %Finally, stick zeros back where there were actual zero values!
x = latitude(1,:);
y = pressure(:,1);
zI=griddata(x,y,z,xI,yI,'cubic');
zI(zI<0)=0; %if negative values make 0 as they are artifacts of smoothing zeros.
end