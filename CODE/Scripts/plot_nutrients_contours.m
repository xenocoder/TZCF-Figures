% FILENAME=plot-nitrate.m
% Creates image and contour plot from cruise data by latitude and pressure 

%TC9704
%clear
%load TC9704Data
subplot(4,2,1)
x1 = TC9704.NUTS.latitude(1,:); 
y1 = TC9704.NUTS.pressure(1:8); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
z1 = TC9704.NUTS.nitrate(1:8,1:23);
z2 = interp2(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([-0.05 11.5]);
colorbar('vertical')
hold on;
v=(-0.05:1:11.5);
% c=contour(x,z,T,v,'w');
[c,h]=contour(x2,y2,z2,v,'white');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(TC9704.times(1),2);
eday = datestr(TC9704.times(23),2);

title (horzcat('Nitrate  along 172\circW, ',sday,'-',eday));
clabel(c,h,'color','w') %make labels white

%TC9805
%clear
%load TC9805Data
subplot(4,2,3)
x1 = TC9805.NUTS.latitude(1,:); 
y1 = TC9805.NUTS.pressure(1:8); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
z1 = TC9805.NUTS.nitrate(1:8,1:29);
z2 = interp2(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([-.05 11.5]);
colorbar('vertical')
hold on;
v=(-.05:1:5.6);
% c=contour(x,z,T,v,'w');
[c,h]=contour(x2,y2,z2,v,'white');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

%sday = datestr(TC9805.times(1),2);
%eday = datestr(TC9805.times(29),2);

title (horzcat('Nitrate along 172\circW, ','04/26/98','-','04/30/98'));
clabel(c,h,'color','w') %make labels white


%TC9905
%clear
%load TC9905Data
subplot(4,2,5)
x1 = TC9905.NUTS.latitude(1,:); 
y1 = TC9905.NUTS.pressure(1:8); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
z1 = TC9905.NUTS.nitrate(1:8,1:42);
z2 = interp2(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([-0.05 11.5]);
colorbar('vertical')
hold on;
v=(-0.05:1:11.5);
% c=contour(x,z,T,v,'w');
[c,h]=contour(x2,y2,z2,v,'white');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(TC9905.times(1),2);
eday = datestr(TC9905.times(42),2);

title (horzcat('Nitrate along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','w') %make labels white

%TC0004
%clear
%load TC0004Data
subplot(4,2,7)
x1 = TC0004.NUTS.latitude(1,:); 
y1 = TC0004.NUTS.pressure(1:6); % only go to 150 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
z1 = TC0004.NUTS.nitrate(1:6,1:29);
z2 = interp2(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([-0.05 11.5]);
colorbar('vertical')
hold on;
v=(-0.05:1:11.5);
% c=contour(x,z,T,v,'w');
[c,h]=contour(x2,y2,z2,v,'white');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(TC0004.times(1),2);
eday = datestr(TC0004.times(33),2);

title (horzcat('Nitrate along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','w') %make labels white

%SE0802
%clear
%load FixedSE0802Data
subplot(4,2,4)
x1 = SE0802.NUTS.latitude(1,:); 
y1 = SE0802.NUTS.pressure(1:10); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
z1 = SE0802.NUTS.nitrate(1:10,1:30);
z2 = interp2(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([-0.05 11.5]);
colorbar('vertical')
hold on;
v=(-0.05:1:11.5);
% c=contour(x,z,T,v,'w');
[c,h]=contour(x2,y2,z2,v,'white');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(SE0802.times(1),2);
eday = datestr(SE0802.times(42),2);

title (horzcat('Nitrate along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','w') %make labels white

%SE0902
%clear
%load SE0902Data
subplot(4,2,6)
x1 = SE0902.NUTS.latitude(1,:); 
y1 = SE0902.NUTS.pressure(1:9); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
z1 = SE0902.NUTS.nitrate(1:9,1:16);
z2 = interp2(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([-0.05 11.5]);
colorbar('vertical')
hold on;
v=(-0.05:1:11.5);
% c=contour(x,z,T,v,'w');
[c,h]=contour(x2,y2,z2,v,'white');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(SE0902.times(1),2);
eday = datestr(SE0902.times(36),2);

title (horzcat('Nitrate along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','w') %make labels white

%SE1102
%clear
%load SE1102Data
subplot(4,2,8)
x1 = SE1102.latitude(1:41); %Only take downward transect for SE1102
y1 = SE1102.NUTS.pressure(1:200); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
z1 = SE1102.NUTS.nitrate(1:200,1:41);
z2 = interp2(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([-0.05 11.5]);
colorbar('vertical')
hold on;
v=(-0.05:1:11.5);
% c=contour(x,z,T,v,'w');
[c,h]=contour(x2,y2,z2,v,'white');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(SE1102.times(1),2);
eday = datestr(SE1102.times(41),2);

title (horzcat('Nitrate along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','w') %make labels white

figure (2);

% FILENAME=plot-phosphate.m
% Creates image and contour plot from cruise data by latitude and pressure 

%TC9704
%clear
%load TC9704Data
subplot(4,2,1)
x1 = TC9704.NUTS.latitude(1,:); 
y1 = TC9704.NUTS.pressure(1:8); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
z1 = TC9704.NUTS.phosphate(1:8,1:23);
z2 = interp2(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 0.9]);
colorbar('vertical')
hold on;
v=(0:0.1:0.9);
% c=contour(x,z,T,v,'w');
[c,h]=contour(x2,y2,z2,v,'white');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(TC9704.times(1),2);
eday = datestr(TC9704.times(23),2);

title (horzcat('Phosphate along 172\circW, ',sday,'-',eday));
clabel(c,h,'color','w') %make labels white

%TC9805
%clear
%load TC9805Data
subplot(4,2,3)
x1 = TC9805.NUTS.latitude(1,:); 
y1 = TC9805.NUTS.pressure(1:8); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
z1 = TC9805.NUTS.phosphate(1:8,1:29);
z2 = interp2(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 0.9]);
colorbar('vertical')
hold on;
v=(0:0.1:0.9);
% c=contour(x,z,T,v,'w');
[c,h]=contour(x2,y2,z2,v,'white');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

%sday = datestr(TC9805.times(1),2);
%eday = datestr(TC9805.times(29),2);

title (horzcat('Phosphate  along 172\circW, ','04/26/98','-','04/30/98'));
clabel(c,h,'color','w') %make labels white


%TC9905
%clear
%load TC9905Data
subplot(4,2,5)
x1 = TC9905.NUTS.latitude(1,:); 
y1 = TC9905.NUTS.pressure(1:8); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
z1 = TC9905.NUTS.phosphate(1:8,1:42);
z2 = interp2(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 0.9]);
colorbar('vertical')
hold on;
v=(0:0.1:0.9);
% c=contour(x,z,T,v,'w');
[c,h]=contour(x2,y2,z2,v,'white');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(TC9905.times(1),2);
eday = datestr(TC9905.times(42),2);

title (horzcat('Phosphate along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','w') %make labels white

%TC0004
%clear
%load TC0004Data
subplot(4,2,7)
x1 = TC0004.NUTS.latitude(1,:); 
y1 = TC0004.NUTS.pressure(1:6); % only go to 150 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
z1 = TC0004.NUTS.phosphate(1:6,1:29);
z2 = interp2(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 0.9]);
colorbar('vertical')
hold on;
v=(0:0.1:0.9);
% c=contour(x,z,T,v,'w');
[c,h]=contour(x2,y2,z2,v,'white');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(TC0004.times(1),2);
eday = datestr(TC0004.times(33),2);

title (horzcat('Phosphate along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','w') %make labels white

%SE0802
%clear
%load FixedSE0802Data
subplot(4,2,4)
x1 = SE0802.NUTS.latitude(1,:); 
y1 = SE0802.NUTS.pressure(1:10); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
z1 = SE0802.NUTS.phosphate(1:10,1:30);
z2 = interp2(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 0.9]);
colorbar('vertical')
hold on;
v=(0:0.1:0.9);
% c=contour(x,z,T,v,'w');
[c,h]=contour(x2,y2,z2,v,'white');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(SE0802.times(1),2);
eday = datestr(SE0802.times(42),2);

title (horzcat('Phosphate along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','w') %make labels white

%SE0902
%clear
%load SE0902Data
subplot(4,2,6)
x1 = SE0902.NUTS.latitude(1,:); 
y1 = SE0902.NUTS.pressure(1:9); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
z1 = SE0902.NUTS.phosphate(1:9,1:16);
z2 = interp2(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 0.9]);
colorbar('vertical')
hold on;
v=(0:0.1:0.9);
% c=contour(x,z,T,v,'w');
[c,h]=contour(x2,y2,z2,v,'white');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(SE0902.times(1),2);
eday = datestr(SE0902.times(36),2);

title (horzcat('Phosphate along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','w') %make labels white

%SE1102
%clear
%load SE1102Data
subplot(4,2,8)
x1 = SE1102.latitude(1:41); %Only take downward transect for SE1102
y1 = SE1102.NUTS.pressure(1:200); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
z1 = SE1102.NUTS.phosphate(1:200,1:41);
z2 = interp2(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 0.9]);
colorbar('vertical')
hold on;
v=(0:0.1:0.9);
% c=contour(x,z,T,v,'w');
[c,h]=contour(x2,y2,z2,v,'white');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(SE1102.times(1),2);
eday = datestr(SE1102.times(41),2);

title (horzcat('Phosphate along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','w') %make labels white

figure(3);
% FILENAME=plot-silicate.m
% Creates image and contour plot from cruise data by latitude and pressure 

%TC9704
%clear
%load TC9704Data
subplot(4,2,1)
x1 = TC9704.NUTS.latitude(1,:); 
y1 = TC9704.NUTS.pressure(1:8); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
z1 = TC9704.NUTS.silicate(1:8,1:23);
z2 = interp2(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 13]);
colorbar('vertical')
hold on;
v=(0:1:13);
% c=contour(x,z,T,v,'w');
[c,h]=contour(x2,y2,z2,v,'white');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(TC9704.times(1),2);
eday = datestr(TC9704.times(23),2);

title (horzcat('Silicate along 172\circW, ',sday,'-',eday));
clabel(c,h,'color','w') %make labels white

%TC9805
%clear
%load TC9805Data
subplot(4,2,3)
x1 = TC9805.NUTS.latitude(1,:); 
y1 = TC9805.NUTS.pressure(1:8); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
z1 = TC9805.NUTS.silicate(1:8,1:29);
z2 = interp2(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 13]);
colorbar('vertical')
hold on;
v=(0:1:13);
% c=contour(x,z,T,v,'w');
[c,h]=contour(x2,y2,z2,v,'white');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

%sday = datestr(TC9805.times(1),2);
%eday = datestr(TC9805.times(29),2);

title (horzcat('Silicate  along 172\circW, ','04/26/98','-','04/30/98'));
clabel(c,h,'color','w') %make labels white


%TC9905
%clear
%load TC9905Data
subplot(4,2,5)
x1 = TC9905.NUTS.latitude(1,:); 
y1 = TC9905.NUTS.pressure(1:8); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
z1 = TC9905.NUTS.silicate(1:8,1:42);
z2 = interp2(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 13]);
colorbar('vertical')
hold on;
v=(0:1:13);
% c=contour(x,z,T,v,'w');
[c,h]=contour(x2,y2,z2,v,'white');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(TC9905.times(1),2);
eday = datestr(TC9905.times(42),2);

title (horzcat('Silicate along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','w') %make labels white

%TC0004
%clear
%load TC0004Data
subplot(4,2,7)
x1 = TC0004.NUTS.latitude(1,:); 
y1 = TC0004.NUTS.pressure(1:6); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
z1 = TC0004.NUTS.silicate(1:6,1:29);
z2 = interp2(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 13]);
colorbar('vertical')
hold on;
v=(0:1:13);
% c=contour(x,z,T,v,'w');
[c,h]=contour(x2,y2,z2,v,'white');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(TC0004.times(1),2);
eday = datestr(TC0004.times(33),2);

title (horzcat('Silicate along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','w') %make labels white

%SE0802
%clear
%load FixedSE0802Data
subplot(4,2,4)
x1 = SE0802.NUTS.latitude(1,:); 
y1 = SE0802.NUTS.pressure(1:10); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
z1 = SE0802.NUTS.silicate(1:10,1:30);
z2 = interp2(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 13]);
colorbar('vertical')
hold on;
v=(0:1:13);
% c=contour(x,z,T,v,'w');
[c,h]=contour(x2,y2,z2,v,'white');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(SE0802.times(1),2);
eday = datestr(SE0802.times(42),2);

title (horzcat('Silicate along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','w') %make labels white

%SE0902
%clear
%load SE0902Data
subplot(4,2,6)
x1 = SE0902.NUTS.latitude(1,:); 
y1 = SE0902.NUTS.pressure(1:9); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
z1 = SE0902.NUTS.silicate(1:9,1:16);
z2 = interp2(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 13]);
colorbar('vertical')
hold on;
v=(0:1:13);
% c=contour(x,z,T,v,'w');
[c,h]=contour(x2,y2,z2,v,'white');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(SE0902.times(1),2);
eday = datestr(SE0902.times(36),2);

title (horzcat('Silicate along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','w') %make labels white

%SE1102
%clear
%load SE1102Data
subplot(4,2,8)
x1 = SE1102.latitude(1:41); %Only take downward transect for SE1102
y1 = SE1102.NUTS.pressure(1:200); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
z1 = SE1102.NUTS.silicate(1:200,1:41);
z2 = interp2(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 13]);
colorbar('vertical')
hold on;
v=(0:1:13);
% c=contour(x,z,T,v,'w');
[c,h]=contour(x2,y2,z2,v,'white');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(SE1102.times(1),2);
eday = datestr(SE1102.times(41),2);

title (horzcat('Silicate along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','w') %make labels white

