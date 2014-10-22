% FILENAME=PlotDensFluor.m
% Creates image and contour plot from cruise data by latitude and pressure 

load ../Working
%SE0802
clf
subplot(3,2,1)
x1 = SE0802.latitude(1:42); 
y1 = SE0802.pressure(1:200); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
z1 = SE0802.density(1:200,1:42);
z2 = interp2(x1,y1,z1,x2,y2,'spline');

colormap('jet')
imagesc(x2,y2,z2)
caxis([23.8 26.5]);
colorbar('vertical')
hold on;
v=(23.8:0.2:26.5);
% c=contour(x,z,T,v,'w');
[c,h]=contour(x2,y2,z2,v,'white');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(SE0802.times(1),2);
eday = datestr(SE0802.times(42),2);

title (horzcat('Density (\circC) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','w') %make labels white

%SE0902
subplot(3,2,3)
x1 = SE0902.latitude(1:36); 
y1 = SE0902.pressure(1:200); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
z1 = SE0902.density(1:200,1:36);
z2 = interp2(x1,y1,z1,x2,y2,'spline');

colormap('jet')
imagesc(x2,y2,z2)
caxis([23.8 26.5]);
colorbar('vertical')
hold on;
v=(23.8:0.2:26.5);
% c=contour(x,z,T,v,'w');
[c,h]=contour(x2,y2,z2,v,'white');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(SE0902.times(1),2);
eday = datestr(SE0902.times(36),2);

title (horzcat('Density (\circC) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','w') %make labels white

%SE1102
subplot(3,2,5)
x1 = SE1102.latitude(1:40); %Only take downward transect for SE1102
y1 = SE1102.pressure(1:200); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
z1 = SE1102.density(1:200,1:40);
z2 = interp2(x1,y1,z1,x2,y2,'spline');

colormap('jet')
imagesc(x2,y2,z2)
caxis([23.8 26.5]);
colorbar('vertical')
hold on;
v=(23.8:0.2:26.5);
% c=contour(x,z,T,v,'w');
[c,h]=contour(x2,y2,z2,v,'white');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

eday = datestr(SE1102.times(1),2); %Backwards transect
sday = datestr(SE1102.times(40),2);

title (horzcat('Density (\circC) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','w') %make labels white

%Fluorescence%

%SE0802
subplot(3,2,2)
x1 = SE0802.latitude(1:42); 
y1 = SE0802.pressure(1:200); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
z1 = SE0802.fluorcorrected(1:200,1:42);
z2 = interp2(x1,y1,z1,x2,y2,'spline');

colormap('jet')
imagesc(x2,y2,z2, [0 1])
colorbar('vertical')
hold on;
v=(0:0.05:1);
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(SE0802.times(1),2);
eday = datestr(SE0802.times(42),2);

title (horzcat('Fluorcorrected (PSU) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','w') %make labels white

%SE0902
subplot(3,2,4)
x1 = SE0902.latitude(1:36); 
y1 = SE0902.pressure(1:200); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
z1 = SE0902.fluorcorrected(1:200,1:36);
z2 = interp2(x1,y1,z1,x2,y2,'spline');

colormap('jet')
imagesc(x2,y2,z2, [0 1])
colorbar('vertical')
hold on;
v=(0:0.05:1);
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(SE0902.times(1),2);
eday = datestr(SE0902.times(36),2);

title (horzcat('Fluorcorrected (PSU) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','w') %make labels white

%SE1102
subplot(3,2,6)
x1 = SE1102.latitude(1:40); %Only take downward transect for SE1102
y1 = SE1102.pressure(1:200); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
z1 = SE1102.fluorcorrected(1:200,1:40);
z2 = interp2(x1,y1,z1,x2,y2,'spline');

colormap('jet')
imagesc(x2,y2,z2, [0 1])
colorbar('vertical')
hold on;
v=(0:0.05:1);
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

eday = datestr(SE1102.times(1),2);
sday = datestr(SE1102.times(40),2);

title (horzcat('Fluorcorrected (PSU) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','w') %make labels white
