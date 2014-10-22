clear
load TC9704Data
subplot(4,2,1);
nutrients9704 = CalcIntNuts(TC9704.NUTS);
plot(TC9704.NUTS.latitude(1,:),nutrients9704);
legend('Nitrate','Phosphate','Silicate','Location','NorthEastOutside');
xlabel('Latitude (\circN)');
ylabel('Integrated Nutrients');
title (horzcat('TC9704 Integrated Nutrients'));

clear
load TC9805Data
subplot(4,2,3);
nutrients9805 = CalcIntNuts(TC9805.NUTS);
plot(TC9805.NUTS.latitude(1,:),nutrients9805);
legend('Nitrate','Phosphate','Silicate','Location','NorthEastOutside');
xlabel('Latitude (\circN)');
ylabel('Integrated Nutrients');
title (horzcat('TC9805 Integrated Nutrients'));

clear
load TC9905Data
subplot(4,2,5);
nutrients9905 = CalcIntNuts(TC9905.NUTS);
plot(TC9905.NUTS.latitude(1,:),nutrients9905);
legend('Nitrate','Phosphate','Silicate','Location','NorthEastOutside');
xlabel('Latitude (\circN)');
ylabel('Integrated Nutrients');
title (horzcat('TC9905 Integrated Nutrients'));

clear
load TC0004Data
subplot(4,2,7);
nutrients0004 = CalcIntNutstest(TC0004.NUTS);
plot(TC0004.NUTS.latitude(1,:),nutrients0004);
legend('Nitrate','Phosphate','Silicate','Location','NorthEastOutside');
xlabel('Latitude (\circN)');
ylabel('Integrated Nutrients');
title (horzcat('TC0004 Integrated Nutrients'));

clear
load FixedSE0802Data
subplot(4,2,4);
nutrients0802 = CalcIntNutstest(SE0802.NUTS);
plot(SE0802.NUTS.latitude(1,:),nutrients0802);
legend('Nitrate','Phosphate','Silicate','Location','NorthEastOutside');
xlabel('Latitude (\circN)');
ylabel('Integrated Nutrients');
title (horzcat('SE0802 Integrated Nutrients'));

clear
load SE0902Data
subplot(4,2,6);
nutrients0902 = CalcIntNutstest(SE0902.NUTS);
plot(SE0902.NUTS.latitude(1,:),nutrients0902);
legend('Nitrate','Phosphate','Silicate','Location','NorthEastOutside');
xlabel('Latitude (\circN)');
ylabel('Integrated Nutrients');
title (horzcat('SE0902 Integrated Nutrients'));

clear
load SE1102Data
subplot(4,2,8);
nutrients1102 = CalcIntNuts(SE1102.NUTS);
plot(SE1102.NUTS.latitude(1,:),nutrients1102);
legend('Nitrate','Phosphate','Silicate','Location','NorthEastOutside');
xlabel('Latitude (\circN)');
ylabel('Integrated Nutrients');
title (horzcat('SE1102 Integrated Nutrients'));
