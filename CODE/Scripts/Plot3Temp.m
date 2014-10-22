%SE0802
subplot(3,1,1)
imagesc(SE0802.latitude(2:43),SE0802.pressure(1:200,1),SE0802.temperature(1:200,2:43))
colormap(jet)
set(gca, 'clim', [12 24])
colorbar

%SE0902
subplot(3,1,2)
imagesc(SE0902.latitude(2:36),SE0902.pressure(1:200,1),SE0902.temperature(1:200,2:36))
set(gca, 'clim', [12 24])
colorbar

%SE1102
subplot(3,1,3)
imagesc(SE1102.latitude(21:60),SE1102.pressure(1:200,1),SE1102.temperature(1:200,21:60))
set(gca, 'clim', [12 24])
colorbar
