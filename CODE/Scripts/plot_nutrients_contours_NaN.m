% FILENAME=plot-nitrate.m
% Creates image and contour plot from cruise data by latitude and pressure 

%figure(1);

%TC9704
%%clear
%load TC9704Data
subplot(4,2,1)
x1 = TC9704.NUTS.latitude(1,:); 
y1 = TC9704.NUTS.pressure(1:8); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
t = TC9704.NUTS.nitrate(1:8,1:23);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

TC9704.NUTS.smoothno3 = z2;

colormap('jet')
imagesc(x2,y2,z2)
caxis([-0.05 11.5]); 
colorbar('vertical')
hold on;
v=(-0.05:1:11.5);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(TC9704.times(1),2);
eday = datestr(TC9704.times(23),2);

title (horzcat('Nitrate  along 172\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

%TC9805
%clear
%load TC9805Data
subplot(4,2,3)
x1 = TC9805.NUTS.latitude(1,:); 
y1 = TC9805.NUTS.pressure(1:7); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
t = TC9805.NUTS.nitrate(1:7,1:29);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

TC9805.NUTS.smoothno3 = z2;

colormap('jet')
imagesc(x2,y2,z2)
caxis([-.05 11.5]);
colorbar('vertical')
hold on;
v=(-.05:1:5.6);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

%sday = datestr(TC9805.times(1),2);
%eday = datestr(TC9805.times(29),2);

title (horzcat('Nitrate along 172\circW, ','04/26/98','-','04/30/98'));
clabel(c,h,'color','k') %make labels black


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
t = TC9905.NUTS.nitrate(1:8,1:42);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

TC9905.NUTS.smoothno3 = z2;

colormap('jet')
imagesc(x2,y2,z2)
caxis([-0.05 11.5]);
colorbar('vertical')
hold on;
v=(-0.05:1:11.5);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(TC9905.times(1),2);
eday = datestr(TC9905.times(42),2);

title (horzcat('Nitrate along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

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
t = TC0004.NUTS.nitrate(1:6,1:29);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

TC0004.NUTS.smoothno3 = z2;

colormap('jet')
imagesc(x2,y2,z2)
caxis([-0.05 11.5]);
colorbar('vertical')
hold on;
v=(-0.05:1:11.5);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(TC0004.times(1),2);
eday = datestr(TC0004.times(33),2);

title (horzcat('Nitrate along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

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
t = SE0802.NUTS.nitrate(1:10,1:30);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

SE0802.NUTS.smoothno3 = z2;

colormap('jet')
imagesc(x2,y2,z2)
caxis([-0.05 11.5]);
colorbar('vertical')
hold on;
v=(-0.05:1:11.5);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(SE0802.times(1),2);
eday = datestr(SE0802.times(42),2);

title (horzcat('Nitrate along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

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
t = SE0902.NUTS.nitrate(1:9,1:16);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

SE0902.NUTS.smoothno3 = z2;

colormap('jet')
imagesc(x2,y2,z2)
caxis([-0.05 11.5]);
colorbar('vertical')
hold on;
v=(-0.05:1:11.5);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(SE0902.times(1),2);
eday = datestr(SE0902.times(36),2);

title (horzcat('Nitrate along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

%SE1102
%clear
%load SE1102Data
subplot(4,2,8)
x1 = SE1102.NUTS.latitude(1,:); %Only take downward transect for SE1102
y1 = SE1102.NUTS.pressure(1:10); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
t = SE1102.NUTS.nitrate(1:10,1:23);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

SE1102.NUTS.smoothno3 = z2;

colormap('jet')
imagesc(x2,y2,z2)
caxis([-0.05 11.5]);
colorbar('vertical')
hold on;
v=(-0.05:1:11.5);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(SE1102.times(40),2);
eday = datestr(SE1102.times(1),2);

title (horzcat('Nitrate along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

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
t = TC9704.NUTS.phosphate(1:8,1:23);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 0.9]);
colorbar('vertical')
hold on;
v=(0:0.1:0.9);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(TC9704.times(1),2);
eday = datestr(TC9704.times(23),2);

title (horzcat('Phosphate along 172\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

%TC9805
%clear
%load TC9805Data
subplot(4,2,3)
x1 = TC9805.NUTS.latitude(1,:); 
y1 = TC9805.NUTS.pressure(1:7); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
t = TC9805.NUTS.phosphate(1:7,1:29);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 0.9]);
colorbar('vertical')
hold on;
v=(0:0.1:0.9);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

%sday = datestr(TC9805.times(1),2);
%eday = datestr(TC9805.times(29),2);

title (horzcat('Phosphate  along 172\circW, ','04/26/98','-','04/30/98'));
clabel(c,h,'color','k') %make labels black


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
t = TC9905.NUTS.phosphate(1:8,1:42);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 0.9]);
colorbar('vertical')
hold on;
v=(0:0.1:0.9);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(TC9905.times(1),2);
eday = datestr(TC9905.times(42),2);

title (horzcat('Phosphate along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

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
t = TC0004.NUTS.phosphate(1:6,1:29);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 0.9]);
colorbar('vertical')
hold on;
v=(0:0.1:0.9);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(TC0004.times(1),2);
eday = datestr(TC0004.times(33),2);

title (horzcat('Phosphate along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

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
t = SE0802.NUTS.phosphate(1:10,1:30);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 0.9]);
colorbar('vertical')
hold on;
v=(0:0.1:0.9);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(SE0802.times(1),2);
eday = datestr(SE0802.times(42),2);

title (horzcat('Phosphate along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

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
t = SE0902.NUTS.phosphate(1:9,1:16);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 0.9]);
colorbar('vertical')
hold on;
v=(0:0.1:0.9);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(SE0902.times(1),2);
eday = datestr(SE0902.times(36),2);

title (horzcat('Phosphate along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

%SE1102
%clear
%load SE1102Data
subplot(4,2,8)
x1 = SE1102.NUTS.latitude(1,:); %Only take downward transect for SE1102
y1 = SE1102.NUTS.pressure(1:10); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
t = SE1102.NUTS.phosphate(1:10,1:23);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 0.9]);
colorbar('vertical')
hold on;
v=(0:0.1:0.9);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(SE1102.times(40),2);
eday = datestr(SE1102.times(1),2);

title (horzcat('Phosphate along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

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
t = TC9704.NUTS.silicate(1:8,1:23);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 17]);
colorbar('vertical')
hold on;
v=(0:1:17);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(TC9704.times(1),2);
eday = datestr(TC9704.times(23),2);

title (horzcat('Silicate along 172\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

%TC9805
%clear
%load TC9805Data
subplot(4,2,3)
x1 = TC9805.NUTS.latitude(1,:); 
y1 = TC9805.NUTS.pressure(1:7); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
t = TC9805.NUTS.silicate(1:7,1:29);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 17]);
colorbar('vertical')
hold on;
v=(0:1:17);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

%sday = datestr(TC9805.times(1),2);
%eday = datestr(TC9805.times(29),2);

title (horzcat('Silicate  along 172\circW, ','04/26/98','-','04/30/98'));
clabel(c,h,'color','k') %make labels black


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
t = TC9905.NUTS.silicate(1:8,1:42);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 17]);
colorbar('vertical')
hold on;
v=(0:1:17);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(TC9905.times(1),2);
eday = datestr(TC9905.times(42),2);

title (horzcat('Silicate along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

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
t = TC0004.NUTS.silicate(1:6,1:29);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 17]);
colorbar('vertical')
hold on;
v=(0:1:17);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(TC0004.times(1),2);
eday = datestr(TC0004.times(33),2);

title (horzcat('Silicate along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

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
t = SE0802.NUTS.silicate(1:10,1:30);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 17]);
colorbar('vertical')
hold on;
v=(0:1:17);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(SE0802.times(1),2);
eday = datestr(SE0802.times(42),2);

title (horzcat('Silicate along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

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
t = SE0902.NUTS.silicate(1:9,1:16);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 17]);
colorbar('vertical')
hold on;
v=(0:1:17);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(SE0902.times(1),2);
eday = datestr(SE0902.times(36),2);

title (horzcat('Silicate along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

%SE1102
%clear
%load SE1102Data
subplot(4,2,8)
x1 = SE1102.NUTS.latitude(1,:); %Only take downward transect for SE1102
y1 = SE1102.NUTS.pressure(1:10); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
t = SE1102.NUTS.silicate(1:10,1:23);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 17]);
colorbar('vertical')
hold on;
v=(0:1:17);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(SE1102.times(40),2);
eday = datestr(SE1102.times(1),2);

title (horzcat('Silicate along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

