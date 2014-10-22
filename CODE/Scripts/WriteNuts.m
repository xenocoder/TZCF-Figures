a=TC9805;
b=TC9805.NUTS;

[dep, sta] = size(b.nitrate);

fid = fopen('TC9805-NUTS-allstatons.csv','w');

fprintf(fid, 'Station,Date,Longitude,Latitude,Pressure,Nitrate,Phosphate,Silicate\n');

for i = 1:sta
    for j = 1:dep
        fprintf(fid,'%d,%s,%7.3f,%6.3f,%d,%5.3f,%5.3f,%5.3f\n',a.stations(i),datestr(a.times(i)),a.longitude(i),a.latitude(i),b.pressure(j,i),b.nitrate(j,i),b.phosphate(j,i),b.silicate(j,i));
    end
end

fclose(fid);

a=TC9905;
b=TC9905.NUTS;

[dep, sta] = size(b.nitrate);

fid = fopen('TC9905-NUTS-allstatons.csv','w');

fprintf(fid, 'Station,Date,Longitude,Latitude,Pressure,Nitrate,Phosphate,Silicate\n');

for i = 1:sta
    for j = 1:dep
        fprintf(fid,'%d,%s,%7.3f,%6.3f,%d,%5.3f,%5.3f,%5.3f\n',a.stations(i),datestr(a.times(i)),a.longitude(i),a.latitude(i),b.pressure(j,i),b.nitrate(j,i),b.phosphate(j,i),b.silicate(j,i));
    end
end

fclose(fid);

a=TC0004;
b=TC0004.NUTS;

[dep, sta] = size(b.nitrate);

fid = fopen('TC0004-NUTS-allstatons.csv','w');

fprintf(fid, 'Station,Date,Longitude,Latitude,Pressure,Nitrate,Phosphate,Silicate\n');

for i = 1:sta
    for j = 1:dep
        fprintf(fid,'%d,%s,%7.3f,%6.3f,%d,%5.3f,%5.3f,%5.3f\n',a.stations(i),datestr(a.times(i)),a.longitude(i),a.latitude(i),b.pressure(j),b.nitrate(j,i),b.phosphate(j,i),b.silicate(j,i));
    end
end

fclose(fid);