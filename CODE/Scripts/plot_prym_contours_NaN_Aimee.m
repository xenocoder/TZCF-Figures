% FILENAME=plot-nitrate.m
% Creates image and contour plot from cruise data by latitude and pressure 

figure(1);

%TC9805
%clear
%load TC9805Data
x1 = TC9805.HPLC.latitude(1,:); 
y1 = TC9805.HPLC.pressure(1:9); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.05:26;
y2 = 5:1:200;
y2 = y2';
t = TC9805.HPLC.fuco(1:9,1:13);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

% TC9805.HPLCINPAINT = {};
% TC9805.HPLCINPAINT.nitrate = z2(:,:);
% TC9805.HPLCINPAINT.latitude = x1;
% TC9805.HPLCINPAINT.pressure = y1;
% save('TC9805DataIn.mat','TC9805');

colormap('summer')
imagesc(x2,y2,z2)
caxis([0 100]); 
colorbar('vertical')
hold on;
v=(0:10:100);
[c2,h2]=contour(x2,y2,z2,v,'black');
v2=(0:20:100);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v2,'black');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');


%sday = datestr(TC9805.times(1),2);
%eday = datestr(TC9805.times(29),2);

%title (horzcat('Prochlorophytes (1 nM) along 158\circW, ','04/26/98','-','04/30/98'));
clabel(c,h,'color','k') %make labels black

%SE0902
%clear
%load FixedSE0902Data
x1 = SE0902.HPLC.latitude(1,:); 
y1 = SE0902.HPLC.pressure(1:9); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.05:26;
y2 = 5:1:200;
y2 = y2';
t = SE0902.HPLC.fuco(1:9,1:17);
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

% SE0802.HPLCINPAINT = {};
% SE0802.HPLCINPAINT.latitude = x1;
% SE0802.HPLCINPAINT.pressure = y1;
% SE0802.HPLCINPAINT.nitrate = z2(:,:);
% save('SE0802DataIn.mat','SE0802');

colormap('summer')
imagesc(x2,y2,z2)
caxis([0 100]); 
colorbar('vertical')
hold on;
v=(0:10:100);
[c2,h2]=contour(x2,y2,z2,v,'black');
v2=(0:20:100);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v2,'black');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');
clabel(c,h,'color','k') %make labels black

%SE1102
%clear
%load SE1102Data
x1 = SE1102.HPLC.latitude(1,:); %Only take downward transect for SE1102
y1 = SE1102.HPLC.pressure(1:10); % only go to 200 meters
y1 = y1'; %Flip to row vector (y direcetion)
x2 = 36:-0.05:26;
y2 = 5:1:200;
y2 = y2';
t = SE1102.HPLC.fuco;
z1 = inpaint_nans(t);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

% SE1102.HPLCINPAINT = {};
% SE1102.HPLCINPAINT.latitude = x1;
% SE1102.HPLCINPAINT.pressure = y1;
% SE1102.HPLCINPAINT.nitrate = z2(:,:);
% % save('SE1102DataIn.mat','SE1102');

colormap('summer')
imagesc(x2,y2,z2)
caxis([0 100]); 
colorbar('vertical')
hold on;
v=(0:10:100);
[c2,h2]=contour(x2,y2,z2,v,'black');
v2=(0:20:100);
% c=contour(x,z,T,v,'k');
[c,h]=contour(x2,y2,z2,v2,'black');
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');
clabel(c,h,'color','k') %make labels black