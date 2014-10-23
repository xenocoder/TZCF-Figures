%MATLAB script to plot 2008, 2009, and 2011 fluorcorrected

%2008
subplot(1,3,1)
plot(SE0802.fluorcorrected(1:196,27:29),SE0802.pressure(1:196,27:29))
legend('32.25','32.5','32.75')
axis ij
title('2008 fluorcorrected')
xlabel('Fluorescence (mg m-3)')
ylabel('Pressure (db)')

%2009
subplot(1,3,2)
plot(SE0902.fluorcorrected(1:188,18:22),SE0902.pressure(1:188,18:22))
legend('31.25','31.5','31.75','32','32.25')
axis ij
title('2009 fluorcorrected')
xlabel('Fluorescence (mg m-3)')
ylabel('Pressure (db)')

%2011
subplot(1,3,3)
plot(SE1102.fluorcorrected(1:196,21:25),SE1102.pressure(1:196,21:25))
axis ij
legend('31.25','31.5','31.75','32','32.25')
title('2011 fluorcorrected')
xlabel('Fluorescence (mg m-3)')
ylabel('Pressure (db)')