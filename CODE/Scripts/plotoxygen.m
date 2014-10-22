function out = plotoxygen(in)
x = in.latitude(1,:);
z = in.pressure(:,1);
O = in.oxygen;

xI=(26:0.05:36);       % interpolate between actual values to smooth plot
zI1=(5:5:300);
zI=zI1';

OI=griddata(x,z,O,xI,zI,'cubic');

pcolor(xI,zI,OI)
shading flat 		% to eliminate grid lines in pcolor
axis('ij')
caxis([3 7])
colorbar('vertical')
hold on;
% v=(3:0.1:7);
% c=contour(xI,zI,OI,v,'w');
% h=clabel(c);
% set(h, 'color', 'white');
% v2=(0.30);
% c2=contour(xI,zI,OI,v2,'k');
% clabel(c2);
v3=(3:0.25:7);
c3=contour(xI,zI,OI,v3,'k');
clabel(c3)
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');
% v4=(0.75:0.5:1.25);
% c4=contour(xI,zI,OI,v4,'k');
% clabel(c4);
out = 1;

end