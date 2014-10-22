function out = plotnitriclinemax98(in)

x1 = in.latitude(1,:); 
y1 = in.pressure(1:8); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direction)
x2 = 36:-0.05:26;
y2 = 5:1:200;
y2 = y2';
t = in.nitrate(1:8,1:29);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

hold on;

c3=contour(x2,1-y2/173,z2,[1.0,1.0],'red');     %redid this to make the graph go from 0-1. Inpaint
                                                % not necessary, but just a precaution in case values happen to be missing
                                               

out = 1;
end