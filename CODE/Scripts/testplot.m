a=TC9805.HPLC;
b=HPLCSMOOTH;
c=a.dva;
d=b.dva;
range = [0 200];

clf
figure(1)
imagesc(a.latitude(1,:), a.pressure(1,:), c, range)

clf
figure(2)
imagesc(b.latitude, b.pressure, d, range)