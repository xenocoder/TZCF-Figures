% cumtrapz(x,y) computes the cumulative integral of Y wrt x using
% trapezoidal integration.

clear
load SE0802Data
a = cumtrapz(SE0802.fluorcorrected(1:42),SE0802.pressure(1:42));
plot(SE0802.latitude(1:42),a,'Color','red')

hold on
load SE0902Data
b = cumtrapz(SE0902.fluorcorrected(1:36),SE0902.pressure(1:36));
plot(SE0902.latitude(1:36),b,'Color','green')

hold on
load SE1102Data
c = cumtrapz(SE1102.fluorcorrected(1:40),SE1102.pressure(1:40));
plot(SE1102.latitude(1:40),c,'Color','blue')


