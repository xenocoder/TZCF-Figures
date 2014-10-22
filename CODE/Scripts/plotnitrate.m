function out = plotnitrate(in)
x = in.latitude(1,:);
z = in.pressure(:,1);
N = in.nitrate;

xI=(26:0.05:36);       % interpolate between actual values to smooth plot
zI1=(5:1:200);
zI=zI1';

NI = smoothit(x,z,N);
%NI=griddata(x,z,N,xI,zI,'cubic');

figure(1)
pcolor(x,z,N)
shading flat 		% to eliminate grid lines in pcolor
axis('ij')
colorbar('vertical')
hold on;
v=(0.25:0.25:1.0);
c=contour(x,z,N,v,'w');
h=clabel(c);
set(h, 'color', 'white');
v2=(1:1:2.0);
c2=contour(x,z,N,v2,'r');
clabel(c2)
v3=(2:1:13);
c3=contour(x,z,N,v3,'k');
clabel(c3)
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

figure(2)
pcolor(xI,zI,NI)
shading flat 		% to eliminate grid lines in pcolor
axis('ij')
colorbar('vertical')
hold on;
v=(0.25:0.25:1.0);
c=contour(xI,zI,NI,v,'w');
h=clabel(c);
set(h, 'color', 'white');
v2=(1:1:2.0);
c2=contour(xI,zI,NI,v2,'r');
clabel(c2)
v3=(2:1:13);
c3=contour(xI,zI,NI,v3,'k');
clabel(c3)
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

out = 1;

end