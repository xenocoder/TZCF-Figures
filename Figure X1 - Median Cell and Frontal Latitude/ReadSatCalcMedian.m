ncfilesst = '2003sst.nc';
ncidsst = netcdf.open ( ncfilesst );

longitude = netcdf.getVar(ncidsst,0);
latitude = netcdf.getVar(ncidsst,1);
sst = netcdf.getVar(ncidsst,4);
sst(sst<0)=0;

ncfilechla = '2003chla.nc';
ncidchla = netcdf.open ( ncfilechla );

longitude2 = netcdf.getVar(ncidchla,0);
latitude2 = netcdf.getVar(ncidchla,1);
chla = netcdf.getVar(ncidchla,4);
chla(chla<0)=0;

md50 = mediancell(sst,chla); %(full matrix)

