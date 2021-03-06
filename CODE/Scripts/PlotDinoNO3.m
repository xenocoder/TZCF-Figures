subplot(3,1,1)
imagesc(TC9805.HPLC.latitude(1,:), TC9805.HPLC.pressure(:,1),TC9805.HPLC.per,[0 30])
hold on
set(gca, 'xlim', [26 36])
a=colormap('hot');
colormap(flipud(a))
colorbar
contour(TC9805.NUTS.latitude(1,:), TC9805.NUTS.pressure(:,1),TC9805.NUTS.nitrate,[1 1],'k')
xlabel('Latitude �N')
ylabel('Pressure (db)')
title('Dinoflagellates with 1M NO3 contour for TC9805')

subplot(3,1,2)
imagesc(SE0902.HPLC.latitude(1,:), SE0902.HPLC.pressure(:,1),SE0902.HPLC.per,[0 30])
hold on
a=colormap('hot');
colormap(flipud(a))
colorbar
contour(SE0902.NUTS.latitude(1,:), SE0902.NUTS.pressure(:,1),SE0902.NUTS.nitrate,[1 1],'k')
xlabel('Latitude �N')
ylabel('Pressure (db)')
title('Dinoflagellates with 1M NO3 contour for SE0902')

subplot(3,1,3)
imagesc(SE1102.HPLC.latitude(1,:), SE1102.HPLC.pressure(:,1),SE1102.HPLC.per,[0 30])
hold on
a=colormap('hot');
colormap(flipud(a))
colorbar
contour(SE1102.NUTS.latitude(1,:), SE1102.NUTS.pressure(:,1),SE1102.NUTS.nitrate,[1 1],'k')
xlabel('Latitude �N')
ylabel('Pressure (db)')
title('Dinoflagellates with 1M NO3 contour for SE1102')