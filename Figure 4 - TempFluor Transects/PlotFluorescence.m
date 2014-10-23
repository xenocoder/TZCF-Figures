% FILENAME=PlotFluorescence.m
% Creates image and contour plot from cruise data by latitude and pressure 

load ../Working
clf

%FLUORESCENCE%
%SE0802
subplot(3,1,1)
x1 = SE0802.latitude(1:42); 
y1 = SE0802.pressure(1:200); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.2:26;
y2 = 5:0.5:200;
y2 = y2';
z1 = SE0802.fluorcorrected(1:200,1:42);
z2 = interp2(x1,y1,z1,x2,y2,'spline');
z3 = medfilt2(z2,[3 3]);

colormap('summer')
imagesc(x2,y2,z3, [0 1])
colorbar('vertical')
hold on;
v=(0:0.05:1);
% c=contour(x,z,T,v,'w');
[c,h]=contour(x2,y2,z2,v,'white');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(SE0802.times(1),2);
eday = datestr(SE0802.times(42),2);

title (horzcat('Fluorescence (Chl a mg m-3) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','r') %make labels white

%SE0902
subplot(3,1,2)
x1 = SE0902.latitude(1:36); 
y1 = SE0902.pressure(1:200); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.2:26;
y2 = 5:0.5:200;
y2 = y2';
z1 = SE0902.fluorcorrected(1:200,1:36);
z2 = interp2(x1,y1,z1,x2,y2,'spline');
z3 = medfilt2(z2,[3 3]);

colormap('summer')
imagesc(x2,y2,z2, [0 1])
colorbar('vertical')
hold on;
v=(0:0.05:1);
% c=contour(x,z,T,v,'w');
[c,h]=contour(x2,y2,z3,v,'white');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(SE0902.times(1),2);
eday = datestr(SE0902.times(36),2);

title (horzcat('Fluorescence (Chl a mg m-3) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','w') %make labels white

subplot(3,1,3)
%SE1102
x1 = SE1102.latitude(1:40); %Only take downward transect for SE1102
y1 = SE1102.pressure(1:200); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.2:26;
y2 = 5:0.5:200;
y2 = y2';
z1 = SE1102.fluorcorrected(1:200,1:40);
z2 = interp2(x1,y1,z1,x2,y2,'spline');
z3 = medfilt2(z2,[3 3]);

colormap('summer')
imagesc(x2,y2,z2, [0 1])
colorbar('vertical')
hold on;
v=(0:0.05:1);
% c=contour(x,z,T,v,'w');
[c,h]=contour(x2,y2,z3,v,'white');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

eday = datestr(SE1102.times(1),2);
sday = datestr(SE1102.times(40),2);

title (horzcat('Fluorescence (Chl a mg m-3) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','w') %make labels white