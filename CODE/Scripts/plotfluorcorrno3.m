x2 = 36:-0.1:26;
y2 = 5:1:200;
y2p5 = 5:0.5:200;

clf

z2 = TC9704.smoothfluorcorr;
z22 = TC9704.NUTS.smoothno3;

subplot(4,2,1)
imagesc(x2,y2,z2,[0 1])
hold on
contour(x2,y2p5,z22,[1 1],'r')
colorbar('vertical')
[c,h] = contour(x2,y2,z2,0.05:0.05:0.3 ,'k');
clabel(c,h,'color','k')

xlabel('Latitude °N')
ylabel('Pressure (db)')
title('Fluorescence (corrected) and 1 M NO3 for TC9704')

z2 = TC9805.smoothfluorcorr;
z22 = TC9805.NUTS.smoothno3;

subplot(4,2,3)
imagesc(x2,y2,z2,[0 1])
hold on
contour(x2,y2p5,z22,[1 1],'r')
colorbar('vertical')
[c,h] = contour(x2,y2,z2,0.05:0.05:0.3 ,'k');
clabel(c,h,'color','k')

xlabel('Latitude °N')
ylabel('Pressure (db)')
title('Fluorescence (corrected) and 1 M NO3 for TC9805')

z2 = TC9905.smoothfluorcorr;
z22 = TC9905.NUTS.smoothno3;

subplot(4,2,5)
imagesc(x2,y2,z2,[0 1])
hold on
contour(x2,y2p5,z22,[1 1],'r')
colorbar('vertical')
[c,h] = contour(x2,y2,z2,0.05:0.05:0.3 ,'k');
clabel(c,h,'color','k')

xlabel('Latitude °N')
ylabel('Pressure (db)')
title('Fluorescence (corrected) and 1 M NO3 for TC9905')

z2 = TC0004.smoothfluorcorr;
z22 = TC0004.NUTS.smoothno3;

subplot(4,2,7)
imagesc(x2,y2,z2,[0 1])
hold on
contour(x2,y2p5,z22,[1 1],'r')
colorbar('vertical')
[c,h] = contour(x2,y2,z2,0.05:0.05:0.3 ,'k');
clabel(c,h,'color','k')

xlabel('Latitude °N')
ylabel('Pressure (db)')
title('Fluorescence (corrected) and 1 M NO3 for TC0004')

z2 = SE0802.smoothfluorcorr;
z22 = SE0802.NUTS.smoothno3;

subplot(4,2,4)
imagesc(x2,y2,z2,[0 1])
hold on
contour(x2,y2p5,z22,[1 1],'r')
colorbar('vertical')
[c,h] = contour(x2,y2p5,z2,0.05:0.05:0.3 ,'k');
clabel(c,h,'color','k')

xlabel('Latitude °N')
ylabel('Pressure (db)')
title('Fluorescence (corrected) and 1 M NO3 for SE0802')

z2 = SE0902.smoothfluorcorr;
z22 = SE0902.NUTS.smoothno3;

subplot(4,2,6)
imagesc(x2,y2,z2,[0 1])
hold on
contour(x2,y2p5,z22,[1 1],'r')
colorbar('vertical')
[c,h] = contour(x2,y2p5,z2,0.05:0.05:0.3 ,'k');
clabel(c,h,'color','k')

xlabel('Latitude °N')
ylabel('Pressure (db)')
title('Fluorescence (corrected) and 1 M NO3 for SE0902')

z2 = SE1102.smoothfluorcorr;
z22 = SE1102.NUTS.smoothno3;

subplot(4,2,8)
imagesc(x2,y2,z2,[0 1])
hold on
contour(x2,y2p5,z22,[1 1],'r')
colorbar('vertical')
[c,h] = contour(x2,y2p5,z2,0.05:0.05:0.3 ,'k');
clabel(c,h,'color','k')

xlabel('Latitude °N')
ylabel('Pressure (db)')
title('Fluorescence (corrected) and 1 M NO3 for SE1102')
