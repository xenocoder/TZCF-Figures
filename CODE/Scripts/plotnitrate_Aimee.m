function out = plotnitrate(in)
x = in.latitude(1,:);
z = in.pressure(:,1);
N = in.nitrate;

xI=(26:0.05:36);       % interpolate between actual values to smooth plot
zI1=(5:1:300);
zI=zI1';

NI = smoothit(x,z,N,xI,zI);
% NI=griddata(x,z,N,xI,zI,'cubic');

% pcolor(xI,zI,NI)
% shading flat 		% to eliminate grid lines in pcolor
% axis('ij')
% colorbar('vertical')
% caxis([0 13])
% ylim([0 200]);
hold on;
% v=(0.25:0.5:1.0);
% [c,h]=contour(xI,zI,NI,v,'k');
% h=clabel(c);
% set(h, 'color', 'white');
v2=(0.95:0.05:1.0);
contour(xI,zI,NI,v2,'red');
% clabel(c2)
% v3=(2:1:13);
% [c2,h2]=contour(xI,zI,NI,v3,'k');
% clabel(c3)
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');
clabel(c,h,'color','k') %make labels black
clabel(c2,h2,'color','k');

out = 1;

end