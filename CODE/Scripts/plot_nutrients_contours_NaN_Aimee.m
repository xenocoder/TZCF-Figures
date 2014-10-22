% FILENAME=plot-nitrate.m
% Creates image and contour plot from cruise data by latitude and pressure 

figure(1);

%TC9704
%clear
%load TC9704Data
subplot(4,2,1)
x1 = TC9704.NUTS.latitude(1,:); 
y1 = TC9704.NUTS.pressure(1:8); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.05:26;
y2 = 5:1:200;
y2 = y2';
t = TC9704.NUTS.nitrate(1:8,1:23);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

% TC9704.NUTSINPAINT = {};                  %creates subset of data in file
% TC9704.NUTSINPAINT.latitude = x1;
% TC9704.NUTSINPAINT.pressure = y1;
% TC9704.NUTSINPAINT.nitrate = z2(:,:);
% % save('TC9704DataIn.mat','TC9704');

%colormap('jet')
%imagesc(x2,y2,z2)
%caxis([-0.05 13]); 
%colorbar('vertical')
hold on;
v=(0.25:0.5:1.0);
[c2,h2]=contour(x2,y2,z2,v,'black');
v2=(1:1:13);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v2,'black');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');
v2=(0.95:0.05:1.0);
c2=contour(x2,y2,z2,v2,'red');
% contour(TC9704.NUTS.latitude(1,:),TC9704.NUTS.pressure(:,1),TC9704.NUTS.nitrate(:,:),[.95,1.0],'Color','red');

sday = datestr(TC9704.times(1),2);
eday = datestr(TC9704.times(23),2);

title (horzcat('Nitrate (1 \muM) along 172\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black
clabel(c2,h2,'color','k');

%TC9805
%clear
%load TC9805Data
subplot(4,2,3)
x1 = TC9805.NUTS.latitude(1,:); 
y1 = TC9805.NUTS.pressure(1:8); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.05:26;
y2 = 5:1:200;
y2 = y2';
t = TC9805.NUTS.nitrate(1:8,1:29);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

% TC9805.NUTSINPAINT = {};
% TC9805.NUTSINPAINT.nitrate = z2(:,:);
% TC9805.NUTSINPAINT.latitude = x1;
% TC9805.NUTSINPAINT.pressure = y1;
% save('TC9805DataIn.mat','TC9805');

colormap('jet')
imagesc(x2,y2,z2)
caxis([-0.05 13]); 
colorbar('vertical')
hold on;
v=(0.25:0.5:1.0);
[c2,h2]=contour(x2,y2,z2,v,'black');
v2=(1:1:13);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v2,'black');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');
v2=(0.95:0.05:1.0);
c2=contour(x2,y2,z2,v2,'red');
% contour(TC9805.NUTS.latitude(1,:),TC9805.NUTS.pressure(:,1),TC9805.NUTS.nitrate(:,:),[.95,1.0],'Color','red');


%sday = datestr(TC9805.times(1),2);
%eday = datestr(TC9805.times(29),2);

title (horzcat('Nitrate (1 \muM) along 158\circW, ','04/26/98','-','04/30/98'));
clabel(c,h,'color','k') %make labels black
clabel(c2,h2,'color','k');

%TC9905
%clear
%load TC9905Data
subplot(4,2,5)
x1 = TC9905.NUTS.latitude(1,:); 
y1 = TC9905.NUTS.pressure(1:8); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.05:26;
y2 = 5:1:200;
y2 = y2';
t = TC9905.NUTS.nitrate(1:8,1:42);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

% TC9905.NUTSINPAINT = {};
% TC9905.NUTSINPAINT.latitude = x1;
% TC9905.NUTSINPAINT.pressure = y1;
% TC9905.NUTSINPAINT.nitrate = z2(:,:);
% save('TC9905DataIn.mat','TC9905');

colormap('jet')
imagesc(x2,y2,z2)
caxis([-0.05 13]); 
colorbar('vertical')
hold on;
v=(0.25:0.5:1.0);
[c2,h2]=contour(x2,y2,z2,v,'black');
v2=(1:1:13);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v2,'black');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');
v2=(0.95:0.05:1.0);
c2=contour(x2,y2,z2,v2,'red');
% contour(TC9905.NUTS.latitude(1,:),TC9905.NUTS.pressure(:,1),TC9905.NUTS.nitrate(:,:),[.95,1.0],'Color','red');


sday = datestr(TC9905.times(1),2);
eday = datestr(TC9905.times(42),2);

title (horzcat('Nitrate (1 \muM) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black
clabel(c2,h2,'color','k');

%TC0004
%clear
%load TC0004Data
subplot(4,2,7)
x1 = TC0004.NUTS.latitude(1,:); 
y1 = TC0004.NUTS.pressure(1:7); % only go to 150 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.05:26;
y2 = 5:1:200;
y2 = y2';
t = TC0004.NUTS.nitrate(1:7,1:29);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

% TC0004.NUTSINPAINT = {};
% TC0004.NUTSINPAINT.latitude = x1;
% TC0004.NUTSINPAINT.pressure = y1;
% TC0004.NUTSINPAINT.nitrate = z2(:,:);
% save('TC0004DataIn.mat','TC0004');

colormap('jet')
imagesc(x2,y2,z2)
caxis([-0.05 13]); 
colorbar('vertical')
hold on;
v=(0.25:0.5:1.0);
[c2,h2]=contour(x2,y2,z2,v,'black');
v2=(1:1:13);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v2,'black');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');
v2=(0.95:0.05:1.0);
c2=contour(x2,y2,z2,v2,'red');
% contour(TC0004.NUTS.latitude(1,:),TC0004.NUTS.pressure(:,1),TC0004.NUTS.nitrate(:,:),[.95,1.0],'Color','red');


sday = datestr(TC0004.times(1),2);
eday = datestr(TC0004.times(33),2);

title (horzcat('Nitrate (1 \muM) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black
clabel(c2,h2,'color','k');

%SE0802
%clear
%load FixedSE0802Data
subplot(4,2,4)
x1 = SE0802.NUTS.latitude(1,:); 
y1 = SE0802.NUTS.pressure(1:10); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.05:26;
y2 = 5:1:200;
y2 = y2';
t = SE0802.NUTS.nitrate(1:10,1:30);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

% SE0802.NUTSINPAINT = {};
% SE0802.NUTSINPAINT.latitude = x1;
% SE0802.NUTSINPAINT.pressure = y1;
% SE0802.NUTSINPAINT.nitrate = z2(:,:);
% save('SE0802DataIn.mat','SE0802');

colormap('jet')
imagesc(x2,y2,z2)
caxis([-0.05 13]); 
colorbar('vertical')
hold on;
v=(0.25:0.5:1.0);
[c2,h2]=contour(x2,y2,z2,v,'black');
v2=(1:1:13);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v2,'black');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');
v2=(0.95:0.05:1.0);
c2=contour(x2,y2,z2,v2,'red');
% contour(SE0802.NUTS.latitude(1,:),SE0802.NUTS.pressure(:,1),SE0802.NUTS.nitrate(:,:),[.95,1.0],'Color','red');

sday = datestr(SE0802.times(1),2);
eday = datestr(SE0802.times(42),2);

title (horzcat('Nitrate (1 \muM) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black
clabel(c2,h2,'color','k');

%SE0902
%clear
%load SE0902Data
subplot(4,2,6)
x1 = SE0902.NUTS.latitude(1,:); 
y1 = SE0902.NUTS.pressure(1:9); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.05:26;
y2 = 5:1:200;
y2 = y2';
t = SE0902.NUTS.nitrate(1:9,1:16);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

% SE0902.NUTSINPAINT = {};
% SE0902.NUTSINPAINT.latitude = x1;
% SE0902.NUTSINPAINT.pressure = y1;
% SE0902.NUTSINPAINT.nitrate = z2(:,:);
% % save('SE0902DataIn.mat','SE0902');

colormap('jet')
imagesc(x2,y2,z2)
caxis([-0.05 13]); 
colorbar('vertical')
hold on;
v=(0.25:0.5:1.0);
[c2,h2]=contour(x2,y2,z2,v,'black');
v2=(1:1:13);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v2,'black');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');
v2=(0.95:0.05:1.0);
c2=contour(x2,y2,z2,v2,'red');
% contour(SE0902.NUTS.latitude(1,:),SE0902.NUTS.pressure(:,1),SE0902.NUTS.nitrate(:,:),[.95,1.0],'Color','red');

sday = datestr(SE0902.times(1),2);
eday = datestr(SE0902.times(36),2);

title (horzcat('Nitrate (1 \muM) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black
clabel(c2,h2,'color','k');

%SE1102
%clear
%load SE1102Data
subplot(4,2,8)
x1 = SE1102.NUTS.latitude(1,:); %Only take downward transect for SE1102
y1 = SE1102.NUTS.pressure(1:10); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.05:26;
y2 = 5:1:200;
y2 = y2';
t = SE1102.NUTS.nitrate(1:10,1:23);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

% SE1102.NUTSINPAINT = {};
% SE1102.NUTSINPAINT.latitude = x1;
% SE1102.NUTSINPAINT.pressure = y1;
% SE1102.NUTSINPAINT.nitrate = z2(:,:);
% % save('SE1102DataIn.mat','SE1102');

colormap('jet')
imagesc(x2,y2,z2)
caxis([-0.05 13]); 
colorbar('vertical')
hold on;
v=(0.25:0.5:1.0);
[c2,h2]=contour(x2,y2,z2,v,'black');
v2=(1:1:13);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v2,'black');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');
v2=(0.95:0.05:1.0);
c2=contour(x2,y2,z2,v2,'red');
% contour(SE1102.NUTS.latitude(1,:),SE1102.NUTS.pressure(:,1),SE1102.NUTS.nitrate(:,:),[.95,1.0],'Color','red');

sday = datestr(SE1102.times(40),2);
eday = datestr(SE1102.times(1),2);

title (horzcat('Nitrate (1 \muM) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black
clabel(c2,h2,'color','k');


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
x2 = 36:-0.05:26;
y2 = 5:1:200;
y2 = y2';
t = TC9704.NUTS.phosphate(1:8,1:23);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

% TC9704.NUTSINPAINT.phosphate = z2(:,:);
% save('TC9704DataIn.mat','TC9704');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 1]);
colorbar('vertical')
hold on;
v=(0.05:0.05:1);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
contour(TC9704.NUTS.latitude(1,:),TC9704.NUTS.pressure(:,1),TC9704.NUTS.phosphate(:,:),[0.165,0.165],'Color','red');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(TC9704.times(1),2);
eday = datestr(TC9704.times(23),2);

title (horzcat('Phosphate (0.165 \muM) along 172\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

%TC9805
%clear
%load TC9805Data
subplot(4,2,3)
x1 = TC9805.NUTS.latitude(1,:); 
y1 = TC9805.NUTS.pressure(1:8); % estimate to 200m using 300m
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.05:26;
y2 = 5:1:200;
y2 = y2';
t = TC9805.NUTS.phosphate(1:8,1:29);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

% TC9805.NUTSINPAINT.phosphate = z2(:,:);

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 1]);
colorbar('vertical')
hold on;
v=(0.05:0.05:1);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
contour(TC9805.NUTS.latitude(1,:),TC9805.NUTS.pressure(:,1),TC9805.NUTS.phosphate(:,:),[0.165,0.165],'Color','red');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

%sday = datestr(TC9805.times(1),2);
%eday = datestr(TC9805.times(29),2);

title (horzcat('Phosphate (0.165 \muM) along 158\circW, ','04/26/98','-','04/30/98'));
clabel(c,h,'color','k') %make labels black


%TC9905
%clear
%load TC9905Data
subplot(4,2,5)
x1 = TC9905.NUTS.latitude(1,:); 
y1 = TC9905.NUTS.pressure(1:8); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.05:26;
y2 = 5:1:200;
y2 = y2';
t = TC9905.NUTS.phosphate(1:8,1:42);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

% TC9905.NUTSINPAINT.phosphate = z2(:,:);

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 1]);
colorbar('vertical')
hold on;
v=(0.05:0.05:1);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
contour(TC9905.NUTS.latitude(1,:),TC9905.NUTS.pressure(:,1),TC9905.NUTS.phosphate(:,:),[0.165,0.165],'Color','red');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(TC9905.times(1),2);
eday = datestr(TC9905.times(42),2);

title (horzcat('Phosphate (0.165 \muM) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black


%TC0004
%clear
%load TC0004Data
subplot(4,2,7)
x1 = TC0004.NUTS.latitude(1,:); 
y1 = TC0004.NUTS.pressure(1:7); % interpret to 200m
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.05:26;
y2 = 5:1:200;
y2 = y2';
t = TC0004.NUTS.phosphate(1:7,1:29);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

% TC0004.NUTSINPAINT.phosphate = z2(:,:);

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 1]);
colorbar('vertical')
hold on;
v=(0.05:0.05:1);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
contour(TC0004.NUTS.latitude(1,:),TC0004.NUTS.pressure(:,1),TC0004.NUTS.phosphate(:,:),[0.165,0.165],'Color','red');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(TC0004.times(1),2);
eday = datestr(TC0004.times(33),2);

title (horzcat('Phosphate (0.165 \muM) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

%SE0802
%clear
%load FixedSE0802Data
subplot(4,2,4)
x1 = SE0802.NUTS.latitude(1,:); 
y1 = SE0802.NUTS.pressure(1:10); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.05:26;
y2 = 5:1:200;
y2 = y2';
t = SE0802.NUTS.phosphate(1:10,1:30);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

% SE0802.NUTSINPAINT.phosphate = z2(:,:);

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 1]);
colorbar('vertical')
hold on;
v=(0.05:0.05:1);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
contour(SE0802.NUTS.latitude(1,:),SE0802.NUTS.pressure(:,1),SE0802.NUTS.phosphate(:,:),[0.165,0.165],'Color','red');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(SE0802.times(1),2);
eday = datestr(SE0802.times(42),2);

title (horzcat('Phosphate (0.165 \muM) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

%SE0902
%clear
%load SE0902Data
subplot(4,2,6)
x1 = SE0902.NUTS.latitude(1,:); 
y1 = SE0902.NUTS.pressure(1:9); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.05:26;
y2 = 5:1:200;
y2 = y2';
t = SE0902.NUTS.phosphate(1:9,1:16);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

% SE0902.NUTSINPAINT.phosphate = z2(:,:);

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 1]);
colorbar('vertical')
hold on;
v=(0.05:0.05:1);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
contour(SE0902.NUTS.latitude(1,:),SE0902.NUTS.pressure(:,1),SE0902.NUTS.phosphate(:,:),[0.165,0.165],'Color','red');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(SE0902.times(1),2);
eday = datestr(SE0902.times(36),2);

title (horzcat('Phosphate (0.165 \muM) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

%SE1102
%clear
%load SE1102Data
subplot(4,2,8)
x1 = SE1102.NUTS.latitude(1,:); %Only take downward transect for SE1102
y1 = SE1102.NUTS.pressure(1:10); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.05:26;
y2 = 5:1:200;
y2 = y2';
t = SE1102.NUTS.phosphate(1:10,1:23);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

% SE1102.NUTSINPAINT.phosphate = z2(:,:);

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 1]);
colorbar('vertical')
hold on;
v=(0.05:0.05:1);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
% contour(SE1102.NUTS.latitude(1,:),SE1102.NUTS.pressure(:,1),SE1102.NUTS.phosphate(:,:),[0.165,0.165],'Color','red');
v2=(0.165:0.035:0.2);
contour(x2,y2,z2,v2,'red');
v3=(0.2:0.05:1);
contour(x2,y2,z2,v3,'black');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(SE1102.times(40),2);
eday = datestr(SE1102.times(1),2);

title (horzcat('Phosphate (0.165 \muM) along 158\circW, ',sday,'-',eday));
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
x2 = 36:-0.05:26;
y2 = 5:1:200;
y2 = y2';
t = TC9704.NUTS.silicate(1:8,1:23);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

% TC9704.NUTSINPAINT.silicate = z2(:,:);
% save('TC9704DataInpaint.mat','TC9704');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 17]);
colorbar('vertical')
hold on;
v=(0:1:17);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
contour(TC9704.NUTS.latitude(1,:),TC9704.NUTS.pressure(:,1),TC9704.NUTS.silicate(:,:),[4.0,4.0],'Color','red');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(TC9704.times(1),2);
eday = datestr(TC9704.times(23),2);

title (horzcat('Silicate (4 \muM) along 172\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

%TC9805
%clear
%load TC9805Data
subplot(4,2,3)
x1 = TC9805.NUTS.latitude(1,:); 
y1 = TC9805.NUTS.pressure(1:8); % estimate to 200m using 300m
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.05:26;
y2 = 5:1:200;
y2 = y2';
t = TC9805.NUTS.silicate(1:8,1:29);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

% TC9805.NUTSINPAINT.silicate = z2(:,:);
% save('TC9805DataInpaint.mat','TC9805');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 17]);
colorbar('vertical')
hold on;
v=(0:1:17);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
contour(TC9805.NUTS.latitude(1,:),TC9805.NUTS.pressure(:,1),TC9805.NUTS.silicate(:,:),[4.0,4.0],'Color','red');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

%sday = datestr(TC9805.times(1),2);
%eday = datestr(TC9805.times(29),2);

title (horzcat('Silicate (4 \muM) along 158\circW, ','04/26/98','-','04/30/98'));
clabel(c,h,'color','k') %make labels black

%TC9905
%clear
%load TC9905Data
subplot(4,2,5)
x1 = TC9905.NUTS.latitude(1,:); 
y1 = TC9905.NUTS.pressure(1:8); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.05:26;
y2 = 5:1:200;
y2 = y2';
t = TC9905.NUTS.silicate(1:8,1:42);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

% TC9905.NUTSINPAINT.silicate = z2(:,:);
% save('TC9905DataInpaint.mat','TC9905');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 17]);
colorbar('vertical')
hold on;
v=(0:1:17);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
contour(TC9905.NUTS.latitude(1,:),TC9905.NUTS.pressure(:,1),TC9905.NUTS.silicate(:,:),[4.0,4.0],'Color','red');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(TC9905.times(1),2);
eday = datestr(TC9905.times(42),2);

title (horzcat('Silicate (4 \muM) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

%TC0004
%clear
%load TC0004Data
subplot(4,2,7)
x1 = TC0004.NUTS.latitude(1,:); 
y1 = TC0004.NUTS.pressure(1:7); % interpret to 200m
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.05:26;
y2 = 5:1:200;
y2 = y2';
t = TC0004.NUTS.silicate(1:7,1:29);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

% TC0004.NUTSINPAINT.silicate = z2(:,:);
% save('TC0004DataInpaint.mat','TC0004');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 17]);
colorbar('vertical')
hold on;
v=(0:1:17);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
contour(TC0004.NUTS.latitude(1,:),TC0004.NUTS.pressure(:,1),TC0004.NUTS.silicate(:,:),[4.0,4.0],'Color','red');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(TC0004.times(1),2);
eday = datestr(TC0004.times(33),2);

title (horzcat('Silicate (4 \muM) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

%SE0802
%clear
%load FixedSE0802Data
subplot(4,2,4)
x1 = SE0802.NUTS.latitude(1,:); 
y1 = SE0802.NUTS.pressure(1:10); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.05:26;
y2 = 5:1:200;
y2 = y2';
t = SE0802.NUTS.silicate(1:10,1:30);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

% SE0802.NUTSINPAINT.silicate = z2(:,:);
% save('SE0802DataInpaint.mat','SE0802');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 17]);
colorbar('vertical')
hold on;
v=(0:1:17);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
v2=(4.0:1:5.0);
contour(x2,y2,z2,v2,'red');
% contour(SE1102.NUTS.latitude(1,:),SE1102.NUTS.pressure(:,1),SE1102.NUTS.silicate(:,:),[4.0,4.0],'Color','red');
v3=(5.0:1:17);
contour(x2,y2,z2,v3,'black');xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(SE0802.times(1),2);
eday = datestr(SE0802.times(42),2);

title (horzcat('Silicate (4 \muM) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

%SE0902
%clear
%load SE0902Data
subplot(4,2,6)
x1 = SE0902.NUTS.latitude(1,:); 
y1 = SE0902.NUTS.pressure(1:9); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.05:26;
y2 = 5:1:200;
y2 = y2';
t = SE0902.NUTS.silicate(1:9,1:16);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

% SE0902.NUTSINPAINT.silicate = z2(:,:);
% save('SE0902DataInpaint.mat','SE0902');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 17]);
colorbar('vertical')
hold on;
v=(0:1:17);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
contour(SE0902.NUTS.latitude(1,:),SE0902.NUTS.pressure(:,1),SE0902.NUTS.silicate(:,:),[4.0,4.0],'Color','red');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(SE0902.times(1),2);
eday = datestr(SE0902.times(36),2);

title (horzcat('Silicate (4 \muM) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

%SE1102
%clear
%load SE1102Data
subplot(4,2,8)
x1 = SE1102.NUTS.latitude(1,:); %Only take downward transect for SE1102
y1 = SE1102.NUTS.pressure(1:10); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.05:26;
y2 = 5:1:200;
y2 = y2';
t = SE1102.NUTS.silicate(1:10,1:23);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

% SE1102.NUTSINPAINT.silicate = z2(:,:);           %save inpaint data
% save('SE1102DataInpaint.mat','SE1102');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 17]);
colorbar('vertical')
hold on;
v=(0:1:17);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
v2=(4.0:1:5.0);
contour(x2,y2,z2,v2,'red');
% contour(SE1102.NUTS.latitude(1,:),SE1102.NUTS.pressure(:,1),SE1102.NUTS.silicate(:,:),[4.0,4.0],'Color','red');
v3=(5.0:1:17);
contour(x2,y2,z2,v3,'black');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

sday = datestr(SE1102.times(40),2);
eday = datestr(SE1102.times(1),2);

title (horzcat('Silicate (4 \muM) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

