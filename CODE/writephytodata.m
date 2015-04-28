function out = writephytodata(data)
%Script to write out phytoplankton data
%data - Cruise structure name (e.g. 2008)

cruise = data.cruise;

%First do straight phytoplankton
headers = data.HPLC.fullnames;
%turn the headers into a single comma seperated string if it is a cell
%array, 
header_string = headers{1};
for i = 2:length(headers)
    header_string = [header_string,',',headers{i}];
end
phyto = data.HPLC;

filename = sprintf('Howell-Figures4-8-%s-HPLC-RAW.csv',cruise);
fid = fopen(filename,'w+');
vars = {'depth','stations','latitude','longitude','chlda','chlc','per','but','fuco','hex','pras','viola','ddx','allox','dtx','lut','zeax','mvb','acar','bcar','dva','mva','totalchla'};
fprintf(fid,'%s\r\n',header_string);

sizea = eval(sprintf('size(phyto.%s)',vars{1}));
len = sizea(1) .* sizea(2);

m = zeros(len, length(vars));
for i = 1:length(vars)
    m(:,i) = eval(sprintf('reshape(phyto.%s,len,1)',vars{i}));
end

m(isnan(m)) = -9999; %Set all NaNs to -9999

dlmwrite(filename, m,'-append','delimiter',',');