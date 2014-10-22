clear
subplot(3,2,1);
load TC9805Data
b = (trapz(TC9805.fluorcorrected(1:40,:)*5));
c= max(b);              %find the max value in order to graph a relative index to 1. fluorcorrected values are in mg/m^3
plot(TC9805.latitude,b/c,'Color','black');  %plot fluorcorrected between 0 and 1
hold on;
plotnitriclinemax98(TC9805.NUTS);   %plot the nitricline relative between 0-1
xlabel('Latitude (\circN)');
% ylabel('Pressure [dbars]');
ylabel('Index');

%prok and euk integrations
TC9805.HPLC.pigrats.intlat = [1 1 1 1 1 1 1 1 1 1 1 1 1; 1 10 10 10 10 10 10 10 10 10 10 10 10; 10 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5; 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5; 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5; 15 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5; 10 10 10 10 10 10 10 10 10 10 10 10 10; 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5; 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5];
for j=1:13,
    inteuk(:,j) = trapz(TC9805.HPLC.pigrats.intlat(:,j),TC9805.HPLC.pigrats.chlaeuk(:,j));
end 
TC9805.HPLC.pigrats.inteuk = inteuk(:,:);
a = max(inteuk);
inteukmax = inteuk/a;

for j=1:13,
    intprok(:,j) = trapz(TC9805.HPLC.pigrats.intlat(:,j),TC9805.HPLC.pigrats.chlaprok(:,j));
end 
TC9805.HPLC.pigrats.intprok = intprok(:,:);
d = max(intprok);
intprokmax = intprok/d;

hold on;
plot(TC9805.HPLC.latitude,inteukmax,'Color',[0 .508 0]);
hold on;
plot(TC9805.HPLC.latitude,intprokmax,'Color',[.76 0 .76]);

hold on;
% estimate of Temp Gradient looking between 50m and 200m
pyc = TC9805.conservativetemperature(10:40,:);
x = max(abs(gradient(pyc,5)));
y = max(x);
plot(TC9805.latitude,x/y,'Color','blue');

title (horzcat('Integrated Fluorescence, Euk, Prok, Nitricline, and Temp Gradient TC9805'));
% set(gca,'YDir','Reverse');
ylim([0 1]);
xlim([26 36]);
legend('Fluorescence','Nitricline','Eukaryotes','Prokaryotes','Temp Gradient','Location','NorthEastOutside');

% Integrating without variable steps to compare to results from variable
% grid spacing.

% for j=1:13,
%    inteukb(:,j) = trapz(TC9805.HPLC.pigrats.chlaeuk(:,j));
% end 
% plot(TC9805.HPLC.latitude,inteukb,'Color','red');

clear
subplot(3,2,3);
load TC9905Data
c = trapz(TC9905.fluorcorrected(1:197,:));
d = max(c);               %find the max value in order to graph a relative index to 1. fluorcorrected values are in mg/m^3
plot(TC9905.latitude,c/d,'Color','black');
hold on;
plotnitriclinemax99(TC9905.NUTS);
xlabel('Latitude (\circN)');
% ylabel('Pressure [dbars]');
ylabel('Index');
hold on;
% estimate of Temp Gradient looking between 50m and 200m
pyc = TC9905.conservativetemperature(47:197,:);
x = max(abs(gradient(pyc,1)));
y = max(x);
plot(TC9905.latitude,x/y,'Color','blue');

title (horzcat('Integrated Fluorescence, Nitricline, and Temp Gradient TC9905'));
% set(gca,'YDir','Reverse');
ylim([0 1]);
xlim([26 36]);
legend('Fluorescence','Nitricline','Temp Gradient','Location','NorthEastOutside');


clear
subplot(3,2,5);
load TC0004Data
d = (trapz(TC0004.fluorcorrected(1:98,:)*2));
e = max(d);        %find the max value in order to graph a relative index to 1. fluorcorrected values are in mg/m^3
plot(TC0004.latitude,d/e,'Color','black');
hold on;
plotnitriclinemax00(TC0004.NUTS);
xlabel('Latitude (\circN)');
% ylabel('Pressure [dbars]');
ylabel('Index');
hold on;
% estimate of Temp Gradient looking between 50m and 200m
pyc = TC0004.conservativetemperature(23:98,:);
x = max(abs(gradient(pyc,2)));
y = max(x);
plot(TC0004.latitude,x/y,'Color','blue');

title (horzcat('Integrated Fluorescence, Nitricline, and Temp Gradient TC0004'));
% set(gca,'YDir','Reverse');
ylim([0 1]);
xlim([26 36]);
legend('Fluorescence','Nitricline','Temp Gradient','Location','NorthEastOutside');

clear
subplot(3,2,2);
load SE0802Data
e = trapz(SE0802.fluorcorrected(1:196,:));
f = max(e);        %find the max value in order to graph a relative index to 1. fluorcorrected values are in mg/m^3
plot(SE0802.latitude,e/f,'Color','black')
hold on;
plotnitriclinemax08(SE0802.NUTS);
xlabel('Latitude (\circN)');
% ylabel('Pressure [dbars]');
ylabel('Index');
hold on;
% estimate of Temp Gradient looking between 50m and 200m
pyc = SE0802.conservativetemperature(46:196,:);
x = max(abs(gradient(pyc,1)));
y = max(x);
plot(SE0802.latitude,x/y,'Color','blue');

title (horzcat('Integrated Fluorescence, Nitricline, and Temp Gradient SE0802'));
% set(gca,'YDir','Reverse');
ylim([0 1]);
xlim([26 36]);
legend('Fluorescence','Nitricline','Temp Gradient','Location','NorthEastOutside');

clear
subplot(3,2,4);
load SE0902Data
f = trapz(SE0902.fluorcorrected(1:188,:));
g = max(f);        %find the max value in order to graph a relative index to 1. fluorcorrected values are in mg/m^3
plot(SE0902.latitude,f/g,'Color','black')
hold on;
plotnitriclinemax09(SE0902.NUTS);
xlabel('Latitude (\circN)');
ylim([0 1]);
xlim([26 36]);
% ylabelel('Pressure [dbars]');
ylabel('Index');


SE0902.HPLC.pigrats.intlat = [1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1; 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10; 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5; 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5; 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5; 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5; 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10; 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5; 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25];
for j=1:17,
    inteuk(:,j) = trapz(SE0902.HPLC.pigrats.intlat(:,j),SE0902.HPLC.pigrats.chlaeuk(:,j));
end 
SE0902.HPLC.pigrats.inteuk = inteuk(:,:);
a = max(inteuk);
inteukmax = inteuk/a;

for j=1:17,
    intprok(:,j) = trapz(SE0902.HPLC.pigrats.intlat(:,j),SE0902.HPLC.pigrats.chlaprok(:,j));
end 
SE0902.HPLC.pigrats.intprok = intprok(:,:);
b = max(intprok);
intprokmax = intprok/b;

hold on;
plot(SE0902.HPLC.latitude,inteukmax,'Color',[0 .508 0]);
hold on;
plot(SE0902.HPLC.latitude,intprokmax,'Color',[.76 0 .76]);

hold on;
% estimate of Temp Gradient looking between 50m and 200m
pyc = SE0902.conservativetemperature(38:200,:);
x = max(abs(gradient(pyc,1)));
y = max(x);
plot(SE0902.latitude,x/y,'Color','blue');

title (horzcat('Integrated Fluorescence, Euk, Prok, Nitricline, and Temp Gradient SE0902'));
% set(gca,'YDir','Reverse');
xlim([26 36]);
ylim([0 1]);
legend('Fluorescence','Nitricline','Eukaryotes','Prokaryotes','Temp Gradient','Location','NorthEastOutside');

clear
subplot(3,2,6);
load SE1102Data
g = trapz(SE1102.fluorcorrected(1:196,:));
h = max(g);        %find the max value in order to graph a relative index to 1. fluorcorrected values are in mg/m^3
plot(SE1102.latitude,g/h,'Color','black')
hold on;
plotnitriclinemax11(SE1102.NUTS);    
xlabel('Latitude (\circN)');
ylim([0 1]);
xlim([26 36]);
% ylabel('Pressure [dbars]');
ylabel('Index');

SE1102.HPLC.pigrats.intlat = [1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1; 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10; 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5; 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5; 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5; 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5; 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10; 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5; 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25; 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25];
for j=1:21,
    inteuk(:,j) = trapz(SE1102.HPLC.pigrats.intlat(:,j),SE1102.HPLC.pigrats.chlaeuk(:,j));
end 
SE1102.HPLC.pigrats.inteuk = inteuk(:,:);
a = max(inteuk);
inteukmax = inteuk/a;

for j=1:21,
    intprok(:,j) = trapz(SE1102.HPLC.pigrats.intlat(:,j),SE1102.HPLC.pigrats.chlaprok(:,j));
end 
SE1102.HPLC.pigrats.intprok = intprok(:,:);
b = max(intprok);
intprokmax = intprok/b;

hold on;
plot(SE1102.HPLC.latitude,inteukmax,'Color',[0 .508 0]);

hold on;
plot(SE1102.HPLC.latitude,intprokmax,'Color',[.76 0 .76]);

hold on;
% estimate of Temp Gradient looking between 50m and 200m
pyc = SE1102.conservativetemperature(46:196,:);
x = max(abs(gradient(pyc,1)));
y = max(x);
plot(SE1102.latitude,x/y,'Color','blue');

title (horzcat('Integrated Fluorescence, Euk, Prok, Nitricline, and Temp Gradient SE1102'));
% set(gca,'YDir','Reverse');
ylim([0 1]);
xlim([26 36]);
legend('Fluorescence','Nitricline','Eukaryotes','Prokaryotes','Temp Gradient','Location','NorthEastOutside');
