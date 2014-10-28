x1 = TC9805.latitude(1:29); 
y1 = TC9805.salinity(1:41); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 34:0.1:35.5;
y2 = y2';
z1 = TC9805.fluorcorrected(1:41,1:29);
z2 = interp2(x1,y1,z1,x2,y2,'cubic');

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

%sday = datestr(TC9805.times(1),2);
%eday = datestr(TC9805.times(29),2);

title (horzcat('Density (\sigma_{t}) along 172\circW, ','04/26/98','-','04/30/98'));
clabel(c,h,'color','w') %make labels white


%TC9905
%clear
%load TC9905Data
subplot(4,2,5)
x1 = TC9905.latitude(1:42); 
y1 = TC9905.pressure(1:200); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
z1 = TC9905.density(1:200,1:42);
z2 = interp2(x1,y1,z1,x2,y2,'cubic');

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

sday = datestr(TC9905.times(1),2);
eday = datestr(TC9905.times(42),2);

title (horzcat('Density (\sigma_{t}) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','w') %make labels white

%TC0004
%clear
%load TC0004DataLat
subplot(4,2,7)
x1 = TC0004.latitude(1:34); 
y1 = TC0004.pressure(1:100); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
z1 = TC0004.density(1:100,1:34);
z2 = interp2(x1,y1,z1,x2,y2,'cubic');

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

sday = datestr(TC0004.times(1),2);
eday = datestr(TC0004.times(34),2);

title (horzcat('Density (\sigma_{t}) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','w') %make labels white

%SE0802
%clear
%load SE0802Data
subplot(4,2,4)
x1 = SE0802.latitude(1:42); 
y1 = SE0802.pressure(1:200); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
z1 = SE0802.density(1:200,1:42);
z2 = interp2(x1,y1,z1,x2,y2,'cubic');

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

title (horzcat('Density (\sigma_{t}) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','w') %make labels white

%SE0902
%clear
%load SE0902Data
subplot(4,2,6)
x1 = SE0902.latitude(1:36); 
y1 = SE0902.pressure(1:200); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
z1 = SE0902.density(1:200,1:36);
z2 = interp2(x1,y1,z1,x2,y2,'cubic');

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

title (horzcat('Density (\sigma_{t}) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','w') %make labels white

%SE1102
%clear
%load SE1102Data
subplot(4,2,8)
x1 = SE1102.latitude(1:40); %Only take downward transect for SE1102
y1 = SE1102.pressure(1:200); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
z1 = SE1102.density(1:200,1:40);
z2 = interp2(x1,y1,z1,x2,y2,'cubic');

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

sday = datestr(SE1102.times(1),2);
eday = datestr(SE1102.times(40),2);

title (horzcat('Density (\sigma_{t}) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','w') %make labels white