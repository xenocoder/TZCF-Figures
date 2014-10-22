function out = plotfluorcorrected(in)
x = in.latitude(1,:);
z = in.pressure(:,1);
F = in.fluorcorrected;

xI=(26:0.05:36);       % interpolate between actual values to smooth plot
zI1=(5:5:300);
zI=zI1';

FI=griddata(x,z,F,xI,zI,'cubic');

pcolor(xI,zI,FI)
shading flat 		% to eliminate grid lines in pcolor
axis('ij')
caxis([0 1.5])
colorbar('vertical')
hold on;

v3=(0:0.2:1.5);
c3=contour(xI,zI,FI,v3,'k');
clabel(c3)
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

out = 1;

end