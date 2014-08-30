figure(1);

%load Alldata-matlab
%add inpaint path if needed
%addpath('Inpaint_nans/Inpaint_nans');
% We will plot all separately for now.

% First 2009 diatoms
clf
clear c c2 h h2 t v v2 x1 x2 y1 y2 z1 z2
subplot(2,1,1)
x1 = SE0902.HPLC.latitude(1,:);
y1 = SE0902.HPLC.pressure(1:9)';
ta = SE0902.HPLC.pigrats.chladiat(1:9,1:17)./1000; %in mg m-3
ta(find(ta==0)) = NaN;
z1a = inpaint_nans(ta,1); %interpolate missing values
z1a(find(z1a<0))=0; %setr all negative extrapolations to 0

tb = SE0902.HPLC.pigrats.chladino(1:9,1:17)./1000; %in mg m-3
tb(find(tb==0)) = NaN;
z1b = inpaint_nans(tb,1); %interpolate missing values
z1b(find(z1b<0))=0; %setr all negative extrapolations to 0

z1 = z1a + z1b;

x2 = 36:-0.1:26;
y2 = transpose(5:0.5:175);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

colormap('summer')
imagesc(x2,y2,z2)
caxis([0 0.5]);
colorbar('vertical')

hold on; 
v=(0:0.01:0.5);
[c2,h2]=contour(x2,y2,z2,v,'black');
v2=(0:0.02:0.2);
[c,h]=contour(x2,y2,z2,v2,'black');
clabel(c,h,'color','k') %make labels black
xlabel ('Latitude (deg N)');
ylabel ('Pressure (dbars)');

%Add in nitrate for nutricline
x1 = SE0902.NUTS.latitude(1,:);
y1 = SE0902.NUTS.pressure(:,1);
n = SE0902.NUTS.nitrate;
n(find(n==0))=NaN;
z1 = inpaint_nans(n,1);
z1(find(z1<0))=0;

x2 = 36:-0.1:26;
y2 = transpose(5:0.5:175);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');
[c,h]=contour(x2,y2,z2,[1 1],'red');

hold off;

subplot(2,1,2)
clear c c2 h h2 t v v2 x1 x2 y1 y2 z1 z2
%now 2011 diatoms
x1 = SE1102.HPLC.latitude(1,:);
y1 = SE1102.HPLC.pressure(1:10)';
ta = SE1102.HPLC.pigrats.chladiat./1000; %in mg m-3
ta(find(ta==0)) = NaN;
z1a = inpaint_nans(ta,1); %interpolate missing values
z1a(find(z1a<0))=0; %setr all negative extrapolations to 0

tb = SE1102.HPLC.pigrats.chladino./1000; %in mg m-3
tb(find(tb==0)) = NaN;
z1b = inpaint_nans(tb,1); %interpolate missing values
z1b(find(z1b<0))=0; %setr all negative extrapolations to 0

z1 = z1a + z1b;

x2 = 36:-0.1:26;
y2 = transpose(5:0.5:175);
z2 = griddata(x1,y1,z1,x2,y2,'cubic');

colormap('summer')
imagesc(x2,y2,z2)
caxis([0 0.5]);
colorbar('vertical')

hold on;
v=(0:0.01:0.5);
[c2,h2]=contour(x2,y2,z2,v,'black');
v2=(0:0.01:0.5);
[c,h]=contour(x2,y2,z2,v2,'black');
xlabel ('Latitude (deg N)');
