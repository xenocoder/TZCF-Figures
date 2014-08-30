% FILENAME=plot-but.m
% Creates image and contour plot from cruise data by latitude and pressure 

figure(1);

%TC9805
clear
load TC9805Data
subplot(3,1,1)
x1 = TC9805.HPLC.latitude(1,:); 
y1 = TC9805.HPLC.pressure(1:9); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
t = TC9805.HPLC.but(1:9,1:15);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 175]);
colorbar('vertical')
hold on;
v=(0:20:175);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (\circN)');
ylabel ('Pressure (dbars)');

%sday = datestr(TC9805.times(1),2);
%eday = datestr(TC9805.times(29),2);

title (horzcat('Butanoyloxyfucoxanthin along 172\circW, ','04/26/98','-','04/30/98'));
clabel(c,h,'color','k') %make labels black


%SE0902
clear
load SE0902Data
subplot(3,1,2)
x1 = SE0902.HPLC.latitude(1,:); 
y1 = SE0902.HPLC.pressure(1:9); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
t = SE0902.HPLC.but(1:9,1:17);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 175]);
colorbar('vertical')
hold on;
v=(0:20:175);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (\circN)');
ylabel ('Pressure (dbars)');

sday = datestr(SE0902.times(1),2);
eday = datestr(SE0902.times(36),2);

title (horzcat('Butanoyloxyfucoxanthin along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

%SE1102
clear
load SE1102Data
subplot(3,1,3)
x1 = SE1102.HPLC.latitude(1,:); %Only take downward transect for SE1102
y1 = SE1102.HPLC.pressure(1:10); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
t = SE1102.HPLC.but(1:10,1:21);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 175]);
colorbar('vertical')
hold on;
v=(0:20:175);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (\circN)');
ylabel ('Pressure (dbars)');

sday = datestr(SE1102.times(40),2);
eday = datestr(SE1102.times(1),2);

title (horzcat('Butanoyloxyfucoxanthin along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

figure (2);

% FILENAME=plot-fuco.m
% Creates image and contour plot from cruise data by latitude and pressure 

%TC9805
clear
load TC9805Data
subplot(3,1,1)
x1 = TC9805.HPLC.latitude(1,:); 
y1 = TC9805.HPLC.pressure(1:9); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
t = TC9805.HPLC.fuco(1:9,1:15);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 110]);
colorbar('vertical')
hold on;
v=(0:20:110);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (\circN)');
ylabel ('Pressure (dbars)');

%sday = datestr(TC9805.times(1),2);
%eday = datestr(TC9805.times(29),2);

title (horzcat('Fucoxanthin (ng/L)  along 172\circW, ','04/26/98','-','04/30/98'));
clabel(c,h,'color','k') %make labels black

%SE0902
clear
load SE0902Data
subplot(3,1,2)
x1 = SE0902.HPLC.latitude(1,:); 
y1 = SE0902.HPLC.pressure(1:9); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
t = SE0902.HPLC.fuco(1:9,1:17);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 110]);
colorbar('vertical')
hold on;
v=(0:20:110);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (\circN)');
ylabel ('Pressure (dbars)');

sday = datestr(SE0902.times(1),2);
eday = datestr(SE0902.times(36),2);

title (horzcat('Fucoxanthin (ng/L) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

%SE1102
clear
load SE1102Data
subplot(3,1,3)
x1 = SE1102.HPLC.latitude(1,:); %Only take downward transect for SE1102
y1 = SE1102.HPLC.pressure(1:10); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
t = SE1102.HPLC.fuco(1:10,1:21);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 110]);
colorbar('vertical')
hold on;
v=(0:20:110);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (\circN)');
ylabel ('Pressure (dbars)');

sday = datestr(SE1102.times(40),2);
eday = datestr(SE1102.times(1),2);

title (horzcat('Fucoxanthin (ng/L) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

figure(3);
% FILENAME=plot-zeax.m
% Creates image and contour plot from cruise data by latitude and pressure 

%TC9805
clear
load TC9805Data
subplot(3,1,1)
x1 = TC9805.HPLC.latitude(1,:); 
y1 = TC9805.HPLC.pressure(1:9); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
t = TC9805.HPLC.zeax(1:9,1:15);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 130]);
colorbar('vertical')
hold on;
v=(0:20:130);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (\circN)');
ylabel ('Pressure (dbars)');

%sday = datestr(TC9805.times(1),2);
%eday = datestr(TC9805.times(29),2);

title (horzcat('Zeaxanthin (ng/L)  along 172\circW, ','04/26/98','-','04/30/98'));
clabel(c,h,'color','k') %make labels black

%SE0902
clear
load SE0902Data
subplot(3,1,2)
x1 = SE0902.HPLC.latitude(1,:); 
y1 = SE0902.HPLC.pressure(1:9); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
t = SE0902.HPLC.zeax(1:9,1:17);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 130]);
colorbar('vertical')
hold on;
v=(0:20:130);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (\circN)');
ylabel ('Pressure (dbars)');

sday = datestr(SE0902.times(1),2);
eday = datestr(SE0902.times(36),2);

title (horzcat('Zeaxanthin (ng/L) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

%SE1102
clear
load SE1102Data
subplot(3,1,3)
x1 = SE1102.HPLC.latitude(1,:); %Only take downward transect for SE1102
y1 = SE1102.HPLC.pressure(1:10); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
t = SE1102.HPLC.zeax(1:10,1:21);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 130]);
colorbar('vertical')
hold on;
v=(0:20:130);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (\circN)');
ylabel ('Pressure (dbars)');

sday = datestr(SE1102.times(40),2);
eday = datestr(SE1102.times(1),2);

title (horzcat('Zeaxanthin (ng/L) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

figure(4);
% FILENAME=plot-hex.m
% Creates image and contour plot from cruise data by latitude and pressure 

%TC9805
clear
load TC9805Data
subplot(3,1,1)
x1 = TC9805.HPLC.latitude(1,:); 
y1 = TC9805.HPLC.pressure(1:9); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
t = TC9805.HPLC.hex(1:9,1:15);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 404]);
colorbar('vertical')
hold on;
v=(0:50:404);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (\circN)');
ylabel ('Pressure (dbars)');

%sday = datestr(TC9805.times(1),2);
%eday = datestr(TC9805.times(29),2);

title (horzcat('Hexanoyloxyfucoxanthin (ng/L)  along 172\circW, ','04/26/98','-','04/30/98'));
clabel(c,h,'color','k') %make labels black

%SE0902
clear
load SE0902Data
subplot(3,1,2)
x1 = SE0902.HPLC.latitude(1,:); 
y1 = SE0902.HPLC.pressure(1:9); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
t = SE0902.HPLC.hex(1:9,1:17);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 404]);
colorbar('vertical')
hold on;
v=(0:50:404);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (\circN)');
ylabel ('Pressure (dbars)');

sday = datestr(SE0902.times(1),2);
eday = datestr(SE0902.times(36),2);

title (horzcat('Hexanoyloxyfucoxanthin (ng/L) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

%SE1102
clear
load SE1102Data
subplot(3,1,3)
x1 = SE1102.HPLC.latitude(1,:); %Only take downward transect for SE1102
y1 = SE1102.HPLC.pressure(1:10); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
t = SE1102.HPLC.hex(1:10,1:21);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 404]);
colorbar('vertical')
hold on;
v=(0:50:404);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (\circN)');
ylabel ('Pressure (dbars)');

sday = datestr(SE1102.times(40),2);
eday = datestr(SE1102.times(1),2);

title (horzcat('Hexanoyloxyfucoxanthin (ng/L) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

figure(5);
% FILENAME=plot-dva.m
% Creates image and contour plot from cruise data by latitude and pressure 

%TC9805
clear
load TC9805Data
subplot(3,1,1)
x1 = TC9805.HPLC.latitude(1,:); 
y1 = TC9805.HPLC.pressure(1:9); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
t = TC9805.HPLC.dva(1:9,1:15);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 200]);
colorbar('vertical')
hold on;
v=(0:25:200);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (\circN)');
ylabel ('Pressure (dbars)');

%sday = datestr(TC9805.times(1),2);
%eday = datestr(TC9805.times(29),2);

title (horzcat('Divinyl Chla (ng/L)  along 172\circW, ','04/26/98','-','04/30/98'));
clabel(c,h,'color','k') %make labels black

%SE0902
clear
load SE0902Data
subplot(3,1,2)
x1 = SE0902.HPLC.latitude(1,:); 
y1 = SE0902.HPLC.pressure(1:9); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
t = SE0902.HPLC.dva(1:9,1:17);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 200]);
colorbar('vertical')
hold on;
v=(0:25:200);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (\circN)');
ylabel ('Pressure (dbars)');

sday = datestr(SE0902.times(1),2);
eday = datestr(SE0902.times(36),2);

title (horzcat('Divinyl Chla (ng/L) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

%SE1102
clear
load SE1102Data
subplot(3,1,3)
x1 = SE1102.HPLC.latitude(1,:); %Only take downward transect for SE1102
y1 = SE1102.HPLC.pressure(1:10); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
t = SE1102.HPLC.dva(1:10,1:21);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 200]);
colorbar('vertical')
hold on;
v=(0:25:200);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (\circN)');
ylabel ('Pressure (dbars)');

sday = datestr(SE1102.times(40),2);
eday = datestr(SE1102.times(1),2);

title (horzcat('Divinyl Chla (ng/L) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

figure(6);
% FILENAME=plot-per.m
% Creates image and contour plot from cruise data by latitude and pressure 

%TC9805
clear
load TC9805Data
subplot(3,1,1)
x1 = TC9805.HPLC.latitude(1,:); 
y1 = TC9805.HPLC.pressure(1:9); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
t = TC9805.HPLC.per(1:9,1:15);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 30]);
colorbar('vertical')
hold on;
v=(5:5:30);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (\circN)');
ylabel ('Pressure (dbars)');

%sday = datestr(TC9805.times(1),2);
%eday = datestr(TC9805.times(29),2);

title (horzcat('Peridinin (ng/L)  along 172\circW, ','04/26/98','-','04/30/98'));
clabel(c,h,'color','k') %make labels black

%SE0902
clear
load SE0902Data
subplot(3,1,2)
x1 = SE0902.HPLC.latitude(1,:); 
y1 = SE0902.HPLC.pressure(1:9); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
t = SE0902.HPLC.per(1:9,1:17);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 30]);
colorbar('vertical')
hold on;
v=(5:5:30);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (\circN)');
ylabel ('Pressure (dbars)');

sday = datestr(SE0902.times(1),2);
eday = datestr(SE0902.times(36),2);

title (horzcat('Peridinin (ng/L) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

%SE1102
clear
load SE1102Data
subplot(3,1,3)
x1 = SE1102.HPLC.latitude(1,:); %Only take downward transect for SE1102
y1 = SE1102.HPLC.pressure(1:10); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
t = SE1102.HPLC.per(1:10,1:21);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 30]);
colorbar('vertical')
hold on;
v=(5:5:30);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (\circN)');
ylabel ('Pressure (dbars)');

sday = datestr(SE1102.times(40),2);
eday = datestr(SE1102.times(1),2);

title (horzcat('Peridinin (ng/L) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

figure(7);
% FILENAME=plot-mvb.m
% Creates image and contour plot from cruise data by latitude and pressure 

%TC9805
clear
load TC9805Data
subplot(3,1,1)
x1 = TC9805.HPLC.latitude(1,:); 
y1 = TC9805.HPLC.pressure(1:9); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
t = TC9805.HPLC.mvb(1:9,1:15);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 160]);
colorbar('vertical')
hold on;
v=(0:25:160);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (\circN)');
ylabel ('Pressure (dbars)');

%sday = datestr(TC9805.times(1),2);
%eday = datestr(TC9805.times(29),2);

title (horzcat('Chlorophyll b (ng/L)  along 172\circW, ','04/26/98','-','04/30/98'));
clabel(c,h,'color','k') %make labels black

%SE0902
clear
load SE0902Data
subplot(3,1,2)
x1 = SE0902.HPLC.latitude(1,:); 
y1 = SE0902.HPLC.pressure(1:9); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
t = SE0902.HPLC.mvb(1:9,1:17);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 160]);
colorbar('vertical')
hold on;
v=(0:25:160);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (\circN)');
ylabel ('Pressure (dbars)');

sday = datestr(SE0902.times(1),2);
eday = datestr(SE0902.times(36),2);

title (horzcat('Chlorophyll b (ng/L) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

%SE1102
clear
load SE1102Data
subplot(3,1,3)
x1 = SE1102.HPLC.latitude(1,:); %Only take downward transect for SE1102
y1 = SE1102.HPLC.pressure(1:10); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
t = SE1102.HPLC.mvb(1:10,1:21);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 160]);
colorbar('vertical')
hold on;
v=(0:25:160);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (\circN)');
ylabel ('Pressure (dbars)');

sday = datestr(SE1102.times(40),2);
eday = datestr(SE1102.times(1),2);

title (horzcat('Chlorophyll b (ng/L) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

figure(8);
% FILENAME=plot-mva.m
% Creates image and contour plot from cruise data by latitude and pressure 

%TC9805
clear
load TC9805Data
subplot(3,1,1)
x1 = TC9805.HPLC.latitude(1,:); 
y1 = TC9805.HPLC.pressure(1:9); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
t = TC9805.HPLC.mva(1:9,1:15);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 1000]);
colorbar('vertical')
hold on;
v=(0:100:1000);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (\circN)');
ylabel ('Pressure (dbars)');

%sday = datestr(TC9805.times(1),2);
%eday = datestr(TC9805.times(29),2);

title (horzcat('Monovinyl chlorophyll a (ng/L)  along 172\circW, ','04/26/98','-','04/30/98'));
clabel(c,h,'color','k') %make labels black

%SE0902
clear
load SE0902Data
subplot(3,1,2)
x1 = SE0902.HPLC.latitude(1,:); 
y1 = SE0902.HPLC.pressure(1:9); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
t = SE0902.HPLC.mva(1:9,1:17);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 1000]);
colorbar('vertical')
hold on;
v=(0:100:1000);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (\circN)');
ylabel ('Pressure (dbars)');

sday = datestr(SE0902.times(1),2);
eday = datestr(SE0902.times(36),2);

title (horzcat('Monovinyl chlorophyll a (ng/L) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

%SE1102
clear
load SE1102Data
subplot(3,1,3)
x1 = SE1102.HPLC.latitude(1,:); %Only take downward transect for SE1102
y1 = SE1102.HPLC.pressure(1:10); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
t = SE1102.HPLC.mva(1:10,1:21);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 1000]);
colorbar('vertical')
hold on;
v=(0:100:1000);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (\circN)');
ylabel ('Pressure (dbars)');

sday = datestr(SE1102.times(40),2);
eday = datestr(SE1102.times(1),2);

title (horzcat('Monovinyl chlorophyll a (ng/L) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

figure(9);
% FILENAME=plot-chlc.m
% Creates image and contour plot from cruise data by latitude and pressure 

%TC9805
clear
load TC9805Data
subplot(3,1,1)
x1 = TC9805.HPLC.latitude(1,:); 
y1 = TC9805.HPLC.pressure(1:9); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
t = TC9805.HPLC.chlc(1:9,1:15);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 270]);
colorbar('vertical')
hold on;
v=(10:50:270);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (\circN)');
ylabel ('Pressure (dbars)');

%sday = datestr(TC9805.times(1),2);
%eday = datestr(TC9805.times(29),2);

title (horzcat('Chlorophyll c (ng/L)  along 172\circW, ','04/26/98','-','04/30/98'));
clabel(c,h,'color','k') %make labels black

%SE0902
clear
load SE0902Data
subplot(3,1,2)
x1 = SE0902.HPLC.latitude(1,:); 
y1 = SE0902.HPLC.pressure(1:9); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
t = SE0902.HPLC.chlc(1:9,1:17);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 270]);
colorbar('vertical')
hold on;
v=(10:50:270);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (\circN)');
ylabel ('Pressure (dbars)');

sday = datestr(SE0902.times(1),2);
eday = datestr(SE0902.times(36),2);

title (horzcat('Chlorophyll c (ng/L) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

%SE1102
clear
load SE1102Data
subplot(3,1,3)
x1 = SE1102.HPLC.latitude(1,:); %Only take downward transect for SE1102
y1 = SE1102.HPLC.pressure(1:10); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
t = SE1102.HPLC.chlc(1:10,1:21);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 270]);
colorbar('vertical')
hold on;
v=(10:50:270);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (\circN)');
ylabel ('Pressure (dbars)');

sday = datestr(SE1102.times(40),2);
eday = datestr(SE1102.times(1),2);

title (horzcat('Chlorophyll c (ng/L) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

figure(10);
% FILENAME=plot-totalchla.m
% Creates image and contour plot from cruise data by latitude and pressure 

%TC9805
clear
load TC9805Data
subplot(3,1,1)
x1 = TC9805.HPLC.latitude(1,:); 
y1 = TC9805.HPLC.pressure(1:9); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
t = TC9805.HPLC.totalchla(1:9,1:15);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 1050]);
colorbar('vertical')
hold on;
v=(0:100:1050);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (\circN)');
ylabel ('Pressure (dbars)');

%sday = datestr(TC9805.times(1),2);
%eday = datestr(TC9805.times(29),2);

title (horzcat('Total chlorophyll a (ng/L)  along 172\circW, ','04/26/98','-','04/30/98'));
clabel(c,h,'color','k') %make labels black

%SE0902
clear
load SE0902Data
subplot(3,1,2)
x1 = SE0902.HPLC.latitude(1,:); 
y1 = SE0902.HPLC.pressure(1:9); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
t = SE0902.HPLC.totalchla(1:9,1:17);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 1050]);
colorbar('vertical')
hold on;
v=(0:100:1050);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (\circN)');
ylabel ('Pressure (dbars)');

sday = datestr(SE0902.times(1),2);
eday = datestr(SE0902.times(36),2);

title (horzcat('Total chlorophyll a (ng/L) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

%SE1102
clear
load SE1102Data
subplot(3,1,3)
x1 = SE1102.HPLC.latitude(1,:); %Only take downward transect for SE1102
y1 = SE1102.HPLC.pressure(1:10); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.1:26;
y2 = 5:0.5:200;
y2 = y2';
t = SE1102.HPLC.totalchla(1:10,1:21);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

colormap('jet')
imagesc(x2,y2,z2)
caxis([0 1050]);
colorbar('vertical')
hold on;
v=(0:100:1050);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v,'black');
xlabel ('Latitude (\circN)');
ylabel ('Pressure (dbars)');

sday = datestr(SE1102.times(40),2);
eday = datestr(SE1102.times(1),2);

title (horzcat('Total chlorophyll a (ng/L) along 158\circW, ',sday,'-',eday));
clabel(c,h,'color','k') %make labels black

