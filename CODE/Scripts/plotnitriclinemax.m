function out = plotnitriclinemax(in)
x = in.latitude(1,:);
% z = in.pressure(:,1);
z = in.pressure(:,1)/144; %needs to change for each year. Not working perfectly, but it produces a trial graph to compare to other values.
N = in.nitrate;

xI=(26:0.05:36);       % interpolate between actual values to smooth plot
% zI1=(5:1:300);
zI1 = (0:0.05:1);
zI=zI1';

NI = smoothit(x,z,N,xI,zI);

hold on;

v2=(0.95:0.05:1.0);

contour(xI,zI,NI,v2,'red');


out = 1;
end