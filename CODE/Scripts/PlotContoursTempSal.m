clf
subplot(4,2,1)
contour(TC9704.latitude(1,:),TC9704.pressure(5:30,1),TC9704.temperature(5:30,:),[18,18],'b')
contour(TC9704.latitude(1,:),TC9704.pressure(5:30,1),TC9704.salinity(5:30,:),[34.8,34.8],'r')

subplot(4,2,2)
contour(TC9805.latitude(1,:),TC9805.pressure(5:30,1),TC9805.temperature(5:30,:),[18,18],'b')
contour(TC9805.latitude(1,:),TC9805.pressure(5:30,1),TC9805.salinity(5:30,:),[34.8,34.8],'r')

subplot(4,2,3)
contour(TC9905.latitude(1,:),TC9905.pressure(5:30,1),TC9905.temperature(5:30,:),[18,18],'b')
contour(TC9905.latitude(1,:),TC9905.pressure(5:30,1),TC9905.salinity(5:30,:),[34.8,34.8],'r')

subplot(4,2,4)
contour(TC0004.latitude(1,:),TC0004.pressure(5:30,1),TC0004.temperature(5:30,:),[18,18],'b')
contour(TC0004.latitude(1,:),TC0004.pressure(5:30,1),TC0004.salinity(5:30,:),[34.8,34.8],'r')

subplot(4,2,5)
contour(SE0802.latitude(1,:),SE0802.pressure(5:30,1),SE0802.temperature(5:30,:),[18,18],'b')
contour(SE0802.latitude(1,:),SE0802.pressure(5:30,1),SE0802.salinity(5:30,:),[34.8,34.8],'r')

subplot(4,2,6)
contour(SE0902.latitude(1,:),SE0902.pressure(5:30,1),SE0902.temperature(5:30,:),[18,18],'b')
contour(SE0902.latitude(1,:),SE0902.pressure(5:30,1),SE0902.salinity(5:30,:),[34.8,34.8],'r')

subplot(4,2,8)
contour(SE1102.latitude(1,:),SE1102.pressure(5:30,1),SE1102.temperature(5:30,:),[18,18],'b')
contour(SE1102.latitude(1,:),SE1102.pressure(5:30,1),SE1102.salinity(5:30,:),[34.8,34.8],'r')
