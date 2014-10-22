function out = plotHPLC(in)
in = TC9805.HPLC;

subplot(3,1,1)

x = in.latitude(1,:);
y = in.pressure(:,1);
xI=(26:0.05:36);       % interpolate between actual values to smooth plot
yI=(5:5:200)';

function smth = smthhplc(pressure, hplc)
    smth = zeros(rs, cs);
    [rs,cs] = size(hplc);
    for i=1:cs
        a = hplc(:,i);
        a(a==0)=NaN;
        ind = isnan(a)==0;
        p = pressure(:,i);
        a1 = interp1(p(ind),a(ind),p); %interpolate missing points.
        ind = isnan(a1)==0; %find point where no NaNs (interp1 won't do start or end
        smth(ind,i) = a1(ind);
    end
end

z = smthhplc(in.pressure, in.per);

zI=griddata(x,y,z,xI,yI,'cubic');

clf
pcolor(xI,yI,zI)
shading flat 		% to eliminate grid lines in pcolor
axis('ij')
colorbar('vertical')
hold on;
%v=(1:0.5:1.5);
%c=contour(xI,yI,zI,v,'w');
%h=clabel(c);
%set(h, 'color', 'white');
v2=(2:1:2.0);
c2=contour(xI,yI,zI,v2,'r');
clabel(c2)
v3=(3:1:13);
c3=contour(xI,yI,zI,v3,'k');
clabel(c3)
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');
hold off
out = 1;

%clear x y rs cs a p a1 z i yI1 xI yI zI v2 c2 v3 c3
end