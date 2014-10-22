function out = plotphosphate(in)
x = in.latitude(1,:);
z = in.pressure(:,1);
N = in.phosphate;

xI=(26:0.05:36);       % interpolate between actual values to smooth plot
zI1=(5:5:300);
zI=zI1';

NI = smoothit(x,z,N,xI,zI);
% NI=griddata(x,z,N,xI,zI,'cubic');

pcolor(xI,zI,NI)
shading flat 		% to eliminate grid lines in pcolor
axis('ij')
caxis([0 1]);
colorbar('vertical')
% ylim([0 200]);
hold on;
v=(0.1:0.05:0.35);
c=contour(xI,zI,NI,v,'k');
h=clabel(c);
set(h, 'color', 'white');
v2=(0.35);
c2=contour(xI,zI,NI,v2,'r');
clabel(c2)
v3=(0.4:0.1:1);
c3=contour(xI,zI,NI,v3,'k');
clabel(c3)
% v4=(0.35);
% c4=contour(xI,zI,NI,v4,'k');
% clabel(c4);
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

out = 1;

end