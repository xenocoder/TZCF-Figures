function out = plotsilicate(in)
x = in.latitude(1,:)
z = in.pressure(:,1);
S = in.silicate;

xI=(26:0.05:36);       % interpolate between actual values to smooth plot
zI1=(5:5:200);
zI=zI1';

SI = smoothit(x,z,S,xI,zI);
% SI=griddata(x,z,S,xI,zI,'cubic');

pcolor(xI,zI,SI)
shading flat 		% to eliminate grid lines in pcolor
axis('ij')
caxis([0 14])
colorbar('vertical')
hold on;
v=(1:0.5:2);
c=contour(xI,zI,SI,v,'k');
h=clabel(c);
set(h, 'color', 'white');
v2=(3.0:1:4.0);
c2=contour(xI,zI,SI,v2,'k');
h1=clabel(c2)
set(h1,'color','white');
v3=(4:1:17);
c3=contour(xI,zI,SI,v3,'k');
clabel(c3)
v4=(5.5);
c4 = contour(xI,zI,SI,v4,'r');
clabel(c4);
set(gca,'YDIR','reverse');
% xlabel ('Latitude (deg N)');
% ylabel ('Pressure (dbars)');

out = 1;

end