% FILENAME=plot-fluorcorrected.m
% Creates image and contour plot from cruise data by latitude and pressure 

%LoadTZCF %uncomment if you need to load in data

%TC9704
clf
subplot(4,2,1)
x1 = TC9704.latitude(1:33); %All 33 stations 
y1 = TC9704.pressure(1:100); % only go to 200 meters
x2 = 36:-0.1:26;
y2 = 5:1:200;
z1 = TC9704.fluorcorrected(1:100,1:33);
z2 = griddata(x1',y1,z1,x2',y2,'cubic'); %Transpose x1 and x2
TC9704.smoothfluorcorr = z2;

colormap('jet')
imagesc(x2,y2,z2, [0 1])
colorbar('vertical')
hold on;
v=(0:0.05:1);
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(TC9704.times(1),2);
eday = datestr(TC9704.times(33),2);

title (horzcat('fluorcorrected (\circC) along 172\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

%TC9805
subplot(4,2,3)
x1 = TC9805.latitude(1:29); 
y1 = TC9805.pressure(1:41); % only go to 200 meters
x2 = 36:-0.1:26;
y2 = 5:1:200;
z1 = TC9805.fluorcorrected(1:41,1:29);
z2 = griddata(x1',y1,z1,x2',y2,'cubic');
TC9805.smoothfluorcorr = z2;

colormap('jet')
imagesc(x2,y2,z2, [0 1])
colorbar('vertical')
hold on;
v=(0:0.05:1);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

%sday = datestr(TC9805.times(1),2);
%eday = datestr(TC9805.times(29),2);

title (horzcat('fluorcorrected (\circC) along 172\circW, ','04/26/98','-','04/30/98'));
clabel(c,h,'color','k') %make labels black


%TC9905
subplot(4,2,5)
x1 = TC9905.latitude(1:42); 
y1 = TC9905.pressure(1:200); % only go to 200 meters
x2 = 36:-0.1:26;
y2 = 5:1:200;
z1 = TC9905.fluorcorrected(1:200,1:42);
z2 = griddata(x1',y1,z1,x2',y2,'cubic');
TC9905.smoothfluorcorr = z2;

colormap('jet')
imagesc(x2,y2,z2, [0 1])
colorbar('vertical')
hold on;
v=(0:0.05:1);
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(TC9905.times(1),2);
eday = datestr(TC9905.times(42),2);

title (horzcat('fluorcorrected (\circC) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

%TC0004
subplot(4,2,7)
x1 = TC0004.latitude(1:34); 
y1 = TC0004.pressure(1:100); % only go to 200 meters
x2 = 36:-0.1:26;
y2 = 5:1:200;
z1 = TC0004.fluorcorrected(1:100,1:34);
z2 = griddata(x1',y1,z1,x2',y2,'cubic');
TC0004.smoothfluorcorr = z2;

colormap('jet')
imagesc(x2,y2,z2, [0 1])
colorbar('vertical')
hold on;
v=(0:0.05:1);
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(TC0004.times(1),2);
eday = datestr(TC0004.times(34),2);

title (horzcat('fluorcorrected (\circC) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

%SE0802
subplot(4,2,4)
x1 = SE0802.latitude(1:42); 
y1 = SE0802.pressure(1:200); % only go to 200 meters
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
z1 = SE0802.fluorcorrected(1:200,1:42);
z2 = griddata(x1',y1,z1,x2',y2,'cubic');
SE0802.smoothfluorcorr = z2;

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

title (horzcat('fluorcorrected (\circC) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

%SE0902
subplot(4,2,6)
x1 = SE0902.latitude(1:36); 
y1 = SE0902.pressure(1:200); % only go to 200 meters
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
z1 = SE0902.fluorcorrected(1:200,1:36);
z2 = griddata(x1',y1,z1,x2',y2,'cubic');
SE0902.smoothfluorcorr = z2;

colormap('jet')
imagesc(x2,y2,z2,[0 1]);
colorbar('vertical')
hold on;
v=(0:0.05:1);
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(SE0902.times(1),2);
eday = datestr(SE0902.times(36),2);

title (horzcat('fluorcorrected (\circC) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

%SE1102
subplot(4,2,8)
x1 = SE1102.latitude(1:40); %Only take downward transect for SE1102
y1 = SE1102.pressure(1:200); % only go to 200 meters
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
z1 = SE1102.fluorcorrected(1:200,1:40);
z2 = griddata(x1',y1,z1,x2',y2,'cubic');
SE1102.smoothfluorcorr = z2;

colormap('jet')
imagesc(x2,y2,z2,[0 1]);
colorbar('vertical')
hold on;
v=(0:0.05:1);
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(SE1102.times(40),2);
eday = datestr(SE1102.times(1),2);

title (horzcat('fluorcorrected (\circC) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black
