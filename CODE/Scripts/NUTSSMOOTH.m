% This does not work yet.

NUTSINPAINT = {};

a = TC9704.NUTS;

x = a.latitude(1,:);
y = a.pressure(:,1);

NUTSINPAINT.latitude = (26:0.05:36);
NUTSINPAINT.pressure = (5:1:200)'; 

t1 = a.nitrate(x,y);
t2 = a.phosphatete(x,y);
t3 = a.silicate(x,y);

z1 = inpaint_nans(t1);
z2 = inpaint_nans(t2);
z3 = inpaint_nans(t3);

NUTSINPAINT.nitrate = griddata(x,y,z1,NUTSINPAINT.latitude,NUTSINPAINT.pressure,'cubic');
NUTSINPAINT.phosphate = griddata(x,y,z2,NUTSINPAINT.latitude,NUTSINPAINT.pressure,'cubic');
NUTSINPAINT.silicate = griddata(x,y,z3,NUTSINPAINT.latitude,NUTSINPAINT.pressure,'cubic');
