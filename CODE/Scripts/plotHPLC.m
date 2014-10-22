function out = plotHPLC(in1, in2, in3)

xI=(26:0.05:36);       % interpolate between actual values to smooth plot
yI=(5:5:200)';

    function smth = smthhplc(pressure, hplc)
        [rs,cs] = size(hplc);
        smth = zeros(rs, cs);
        for i=1:cs
            a = hplc(:,i);
            if nansum(a)>0
                a(a==0)=NaN;
                ind = isnan(a)==0;
                p = pressure(:,i);
                if size(a,1) < 1
                    c=1;
                end
                a1 = interp1(p(ind),a(ind),p); %interpolate missing points.
                ind = isnan(a1)==0; %find point where no NaNs (interp1 won't do start or end
                smth(ind,i) = a1(ind);
            end
        end
    end

    function out = plotit(xI,yI,zI, v1,v2,v3)
        clf
        pcolor(xI,yI,zI)
        shading flat 		% to eliminate grid lines in pcolor
        axis('ij')
        colorbar('vertical')
        hold on;
        c=contour(xI,yI,zI,v1,'w');
        h=clabel(c);
        set(h, 'color', 'white');
        c2=contour(xI,yI,zI,v2,'r');
        clabel(c2)
        c3=contour(xI,yI,zI,v3,'k');
        clabel(c3)
        xlabel ('Latitude (deg N)');
        ylabel ('Pressure (dbars)');
        hold off
        out = 1;
    end

subplot(3,1,1)
x = in1.latitude(1,:);
y = in1.pressure(:,1);
z = smthhplc(in1.pressure, in1.per);
zI=griddata(x,y,z,xI,yI,'cubic');
out = plotit(xI,yI,zI,1:0.5:1.5,2:1:2.0,3:1:13);

subplot(3,1,2)
x = in2.latitude(1,:);
y = in2.pressure(:,1);
z = smthhplc(in2.pressure, in2.per);
zI=griddata(x,y,z,xI,yI,'cubic');
out = plotit(xI,yI,zI,1:0.5:1.5,2:1:2.0,3:1:13);

subplot(3,1,3)
x = in3.latitude(1,:);
y = in3.pressure(:,1);
z = smthhplc(in3.pressure, in3.per);
zI=griddata(x,y,z,xI,yI,'cubic');
out = plotit(xI,yI,zI,1:0.5:1.5,2:1:2.0,3:1:13);

%clear x y rs cs a p a1 z i yI1 xI yI zI v2 c2 v3 c3
end