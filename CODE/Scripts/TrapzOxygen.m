% trapz(x,y) computes the cumulative integral of Y wrt x using
% trapezoidal integration.

clear
load TC9704Data
a = (trapz(TC9704.oxygen(1:97,:)*2));  %going to 200 m depth
plot(TC9704.latitude,a,'Color','black');

hold on
load TC9805Data
b = (trapz(TC9805.oxygen(1:40,:)*5));
plot(TC9805.latitude,b,'Color','cyan');

hold on
load TC9905Data
c = trapz(TC9905.oxygen(1:197,:));
plot(TC9905.latitude,c,'--','Color',[0 0.5 0]);

hold on
load TC0004Data
d = (trapz(TC0004.oxygen(1:98,:)*2));
plot(TC0004.latitude,d,'Color','magenta');

hold on
load SE0802Data
e = trapz(SE0802.oxygen(1:196,:));
plot(SE0802.latitude,e,'Color','red')
xlabel('Latitude (\circN)');
ylabel('Integrated Oxygen (ml/l)');
title (horzcat('Integrated oxygen'));


hold on
load SE0902Data
f = trapz(SE0902.oxygen(1:188,:));
plot(SE0902.latitude,f,'Color','green')

hold on
load SE1102Data
g = trapz(SE1102.oxygen(1:196,:));
plot(SE1102.latitude,g,'Color','blue')
legend('TC9704','TC9805','TC9905','TC0004','SE0802','SE0902','SE1102','Location','NorthWest')

