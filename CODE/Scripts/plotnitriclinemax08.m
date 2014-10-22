function out = plotnitriclinemax08(in)
% x = in.latitude(1,:);
% % z = in.pressure(:,1);
% z = in.pressure(:,1)/168; %needs to change for each year. Not working perfectly, but it produces a trial graph to compare to other values.
% N = in.nitrate;
% 
x1 = in.latitude(1,:); 
y1 = in.pressure(1:10); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.05:26;
y2 = 5:1:200;
y2 = y2';
t = in.nitrate(1:10,1:30);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

% xI=(26:0.05:36);       % interpolate between actual values to smooth plot
% % zI1=(5:1:300);
% zI1 = (0:0.05:1);
% zI=zI1';
% 
% NI = smoothit(x,z,N,xI,zI);
% 
% hold on;
% 
% v2=(0.95:0.05:1.0);
% 
% contour(xI,zI,NI,v2,'red');

c3=contour(x2,1-y2/168,z2,[1.0,1.0],'red');


out = 1;
end