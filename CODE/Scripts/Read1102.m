clear
fid = fopen('data_from_SE1102L2CTD.txt','r');
%26 columns of data, (string, integer, string, string, 9 floating points.)
C = textscan(fid,'%s %d %s %s %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f','HeaderLines',11);
fclose(fid);

%This loads in a cell wrapper with each column of information from the
%original file in a cell. So 13 original columns of data, C now has 13
%cells each representing a column of data. We have to pull out numbers to
%matrix.

%Numbers are in columns 2,5-13


t = C{2};
sta = unique(t);
s = size(sta);
len = s(1);
presstemp = C{8};

a = ones(len,3);
for i = 1:len
    ptemp = presstemp(find(t==sta(i)));
    a(i,:) = [sta(i) min(ptemp) max(ptemp)];
end
llim=max(a(:,2));
ulim=min(a(:,3));
rsize = ulim-llim+1;
csize = len;

ind = find(presstemp>=llim&presstemp<=ulim);
p1 = presstemp(ind);
press = reshape(p1,rsize,csize);

SE1102 = ([]);
SE1102.cruise = C{1}(1);
SE1102.stations = sta;

lon = reshape(C{5}(ind),rsize,csize);
SE1102.longitude = lon(1,:);

lat = reshape(C{6}(ind),rsize,csize);
SE1102.latitude = lat(1,:);

time = reshape(C{4}(ind),rsize,csize);
SE1102.times = datenum(time(1,:),'yyyy-mm-ddTHH:MM');

SE1102.pressure = press;
SE1102.temperature = reshape(C{9}(ind),rsize,csize);
SE1102.salinity = reshape(C{21}(ind),rsize,csize);
SE1102.density = reshape(C{23}(ind),rsize,csize);
SE1102.oxygen = reshape(C{19}(ind),rsize,csize);
SE1102.fluorescence = reshape(C{18}(ind),rsize,csize);

save('SE1102Data.mat','SE1102');

%plot(SE1102.temperature(:,1),SE1102.pressure(:,1)) %plot first station
%set(gca,'ydir','reverse') %flip Y axis
%hold on % add more to current plot
%plot(SE1102.temperature(:,2),SE1102.pressure(:,2),'r-') %overplot 2nd sta in red

imagesc(SE1102.latitude(21:60),press(:,1),SE1102.temperature(:,21:60))
hold on
contour(SE1102.latitude(21:60),press(:,1),SE1102.temperature(:,21:60),'w')