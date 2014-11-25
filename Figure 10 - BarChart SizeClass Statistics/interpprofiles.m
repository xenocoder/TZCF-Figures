fid = fopen('meanphyto-werror.csv','w+'); %open file for writing
fprintf(fid, 'year,zone,PSC,mn,se\n');
XI = 1:200;

% 2008 STFZ %
bottom = 175;
ssta = stationlistHPLC.STFZ(1,1);
esta = stationlistHPLC.STFZ(1,2);
x = SE0802.HPLC.pigrats.pressure(:,ssta);

a = SE0802.HPLC.hirata.picopl(:,ssta:esta)./SE0802.HPLC.hirata.SDP(:,ssta:esta).*SE0802.HPLC.hirata.C(:,ssta:esta);
pico = fixhplc08(a);
intpico = interp1(x,pico,XI);
intpico(140:199,:) = repmat(intpico(200,:),60,1); %set all values lower than
mn = mean(sum(intpico(1:bottom,:)))./1000;
sd = std(sum(intpico(1:bottom,:)))./1000;
fprintf(fid, '2008,STFZ,pico,%f,%f\n',mn,sd);

a = SE0802.HPLC.hirata.nanopl(:,ssta:esta)./SE0802.HPLC.hirata.SDP(:,ssta:esta).*SE0802.HPLC.hirata.C(:,ssta:esta);
nano = fixhplc08(a);
intnano = interp1(x,nano,XI);
mn = mean(sum(intnano(1:bottom,:)))./1000;
sd = std(sum(intnano(1:bottom,:)))./1000;
fprintf(fid, '2008,STFZ,nano,%f,%f\n',mn,sd);

a = SE0802.HPLC.hirata.micropl(:,ssta:esta)./SE0802.HPLC.hirata.SDP(:,ssta:esta).*SE0802.HPLC.hirata.C(:,ssta:esta);
micro = fixhplc08(a);
intmicro = interp1(x,micro,XI);
mn = mean(sum(intmicro(1:bottom,:)))./1000;
sd = std(sum(intmicro(1:bottom,:)))./1000;
fprintf(fid, '2008,STFZ,micro,%f,%f\n',mn,sd);

% 2008 TZCF %
bottom = 175;
ssta = stationlistHPLC.TZCF(1,1);
esta = stationlistHPLC.TZCF(1,2);
x = SE0802.HPLC.pigrats.pressure(:,ssta);

a = SE0802.HPLC.hirata.picopl(:,ssta:esta)./SE0802.HPLC.hirata.SDP(:,ssta:esta).*SE0802.HPLC.hirata.C(:,ssta:esta);
pico = fixhplc08(a);
intpico = interp1(x,pico,XI);
intpico(140:199,:) = repmat(intpico(200,:),60,1); %set all values lower than
mn = mean(sum(intpico(1:bottom,:)))./1000;
sd = std(sum(intpico(1:bottom,:)))./1000;
fprintf(fid, '2008,TZCF,pico,%f,%f\n',mn,sd);

a = SE0802.HPLC.hirata.nanopl(:,ssta:esta)./SE0802.HPLC.hirata.SDP(:,ssta:esta).*SE0802.HPLC.hirata.C(:,ssta:esta);
nano = fixhplc08(a);
intnano = interp1(x,nano,XI);
mn = mean(sum(intnano(1:bottom,:)))./1000;
sd = std(sum(intnano(1:bottom,:)))./1000;
fprintf(fid, '2008,TZCF,nano,%f,%f\n',mn,sd);

a = SE0802.HPLC.hirata.micropl(:,ssta:esta)./SE0802.HPLC.hirata.SDP(:,ssta:esta).*SE0802.HPLC.hirata.C(:,ssta:esta);
micro = fixhplc08(a);
intmicro = interp1(x,micro,XI);
mn = mean(sum(intmicro(1:bottom,:)))./1000;
sd = std(sum(intmicro(1:bottom,:)))./1000;
fprintf(fid, '2008,TZCF,micro,%f,%f\n',mn,sd);

% 2009 STFZ %
bottom = 175;
ssta = stationlistHPLC.STFZ(2,1);
esta = stationlistHPLC.STFZ(2,2);
x = SE0902.HPLC.pigrats.pressure(:,ssta);

pico = SE0902.HPLC.hirata.picopl(:,ssta:esta)./SE0902.HPLC.hirata.SDP(:,ssta:esta).*SE0902.HPLC.hirata.C(:,ssta:esta);
intpico = interp1(x,pico,XI);
mn = mean(sum(intpico(1:bottom,:)))./1000;
sd = std(sum(intpico(1:bottom,:)))./1000;
fprintf(fid, '2009,STFZ,pico,%f,%f\n',mn,sd);

nano = SE0902.HPLC.hirata.nanopl(:,ssta:esta)./SE0902.HPLC.hirata.SDP(:,ssta:esta).*SE0902.HPLC.hirata.C(:,ssta:esta);
intnano = interp1(x,nano,XI);
mn = mean(sum(intnano(1:bottom,:)))./1000;
sd = std(sum(intnano(1:bottom,:)))./1000;
fprintf(fid, '2009,STFZ,nano,%f,%f\n',mn,sd);

micro = SE0902.HPLC.hirata.micropl(:,ssta:esta)./SE0902.HPLC.hirata.SDP(:,ssta:esta).*SE0902.HPLC.hirata.C(:,ssta:esta);
intmicro = interp1(x,micro,XI);
mn = mean(sum(intmicro(1:bottom,:)))./1000;
sd = std(sum(intmicro(1:bottom,:)))./1000;
fprintf(fid, '2009,STFZ,micro,%f,%f\n',mn,sd);

% 2009 TZCF %
bottom = 175;
ssta = stationlistHPLC.TZCF(2,1);
esta = stationlistHPLC.TZCF(2,2);
x = SE0902.HPLC.pigrats.pressure(:,ssta);

a = SE0902.HPLC.hirata.picopl(:,ssta:esta)./SE0902.HPLC.hirata.SDP(:,ssta:esta).*SE0902.HPLC.hirata.C(:,ssta:esta);
pico = fixhplc09(a);
intpico = interp1(x,pico,XI);
mn = mean(sum(intpico(1:bottom,:)))./1000;
sd = std(sum(intpico(1:bottom,:)))./1000;
fprintf(fid, '2009,TZCF,pico,%f,%f\n',mn,sd);

a = SE0902.HPLC.hirata.nanopl(:,ssta:esta)./SE0902.HPLC.hirata.SDP(:,ssta:esta).*SE0902.HPLC.hirata.C(:,ssta:esta);
nano = fixhplc09(a);
intnano = interp1(x,nano,XI);
mn = mean(sum(intnano(1:bottom,:)))./1000;
sd = std(sum(intnano(1:bottom,:)))./1000;
fprintf(fid, '2009,TZCF,nano,%f,%f\n',mn,sd);

a = SE0902.HPLC.hirata.micropl(:,ssta:esta)./SE0902.HPLC.hirata.SDP(:,ssta:esta).*SE0902.HPLC.hirata.C(:,ssta:esta);
micro = fixhplc09(a);
intmicro = interp1(x,micro,XI);
mn = mean(sum(intmicro(1:bottom,:)))./1000;
sd = std(sum(intmicro(1:bottom,:)))./1000;
fprintf(fid, '2009,TZCF,micro,%f,%f\n',mn,sd);

% 2011 STFZ %
bottom = 175;
ssta = stationlistHPLC.STFZ(3,1);
esta = stationlistHPLC.STFZ(3,2);
x = SE1102.HPLC.pigrats.pressure(:,ssta);

a = SE1102.HPLC.hirata.picopl(:,ssta:esta)./SE1102.HPLC.hirata.SDP(:,ssta:esta).*SE1102.HPLC.hirata.C(:,ssta:esta);
pico = fixhplc11(a);
intpico = interp1(x,pico,XI);
mn = mean(sum(intpico(1:bottom,:)))./1000;
sd = std(sum(intpico(1:bottom,:)))./1000;
fprintf(fid, '2011,STFZ,pico,%f,%f\n',mn,sd);

a = SE1102.HPLC.hirata.nanopl(:,ssta:esta)./SE1102.HPLC.hirata.SDP(:,ssta:esta).*SE1102.HPLC.hirata.C(:,ssta:esta);
nano = fixhplc11(a);
intnano = interp1(x,nano,XI);
mn = mean(sum(intnano(1:bottom,:)))./1000;
sd = std(sum(intnano(1:bottom,:)))./1000;
fprintf(fid, '2011,STFZ,nano,%f,%f\n',mn,sd);

a = SE1102.HPLC.hirata.micropl(:,ssta:esta)./SE1102.HPLC.hirata.SDP(:,ssta:esta).*SE1102.HPLC.hirata.C(:,ssta:esta);
micro = fixhplc11(a);
intmicro = interp1(x,micro,XI);
mn = mean(sum(intmicro(1:bottom,:)))./1000;
sd = std(sum(intmicro(1:bottom,:)))./1000;
fprintf(fid, '2011,STFZ,micro,%f,%f\n',mn,sd);

% 2011 TZCF %
bottom = 175;
ssta = stationlistHPLC.TZCF(3,1);
esta = stationlistHPLC.TZCF(3,2);
x = SE1102.HPLC.pigrats.pressure(:,ssta);

a = SE1102.HPLC.hirata.picopl(:,ssta:esta)./SE1102.HPLC.hirata.SDP(:,ssta:esta).*SE1102.HPLC.hirata.C(:,ssta:esta);
pico = fixhplc11(a);
intpico = interp1(x,pico,XI);
mn = mean(sum(intpico(1:bottom,:)))./1000;
sd = std(sum(intpico(1:bottom,:)))./1000;
fprintf(fid, '2011,TZCF,pico,%f,%f\n',mn,sd);

a = SE1102.HPLC.hirata.nanopl(:,ssta:esta)./SE1102.HPLC.hirata.SDP(:,ssta:esta).*SE1102.HPLC.hirata.C(:,ssta:esta);
nano = fixhplc11(a);
intnano = interp1(x,nano,XI);
mn = mean(sum(intnano(1:bottom,:)))./1000;
sd = std(sum(intnano(1:bottom,:)))./1000;
fprintf(fid, '2011,TZCF,nano,%f,%f\n',mn,sd);

a = SE1102.HPLC.hirata.micropl(:,ssta:esta)./SE1102.HPLC.hirata.SDP(:,ssta:esta).*SE1102.HPLC.hirata.C(:,ssta:esta);
micro = fixhplc11(a);
intmicro = interp1(x,micro,XI);
mn = mean(sum(intmicro(1:bottom,:)))./1000;
sd = std(sum(intmicro(1:bottom,:)))./1000;
fprintf(fid, '2011,TZCF,micro,%f,%f\n',mn,sd);

fclose(fid);