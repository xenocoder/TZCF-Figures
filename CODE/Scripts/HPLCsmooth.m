HPLCSMOOTH = {};

a = SE1102.HPLC;

x = a.latitude;
y = a.pressure;

HPLCSMOOTH.latitude = (26:0.05:36);       % interpolate between actual values to smooth plot
HPLCSMOOTH.pressure = (5:0.5:200)';

HPLCSMOOTH.chlda = smoothit(x,y,a.chlda);
HPLCSMOOTH.chlc = smoothit(x,y,a.chlc);
HPLCSMOOTH.per = smoothit(x,y,a.per);
HPLCSMOOTH.but = smoothit(x,y,a.but);
HPLCSMOOTH.fuco = smoothit(x,y,a.fuco);
HPLCSMOOTH.hex = smoothit(x,y,a.hex);
HPLCSMOOTH.pras = smoothit(x,y,a.pras);
HPLCSMOOTH.viola = smoothit(x,y,a.viola);
HPLCSMOOTH.ddx = smoothit(x,y,a.ddx);
HPLCSMOOTH.allox = smoothit(x,y,a.allox);
HPLCSMOOTH.dtx = smoothit(x,y,a.dtx);
HPLCSMOOTH.lut = smoothit(x,y,a.lut);
HPLCSMOOTH.zeax = smoothit(x,y,a.zeax);
HPLCSMOOTH.mvb = smoothit(x,y,a.mvb);
HPLCSMOOTH.acar = smoothit(x,y,a.acar);
HPLCSMOOTH.bcar = smoothit(x,y,a.bcar);
HPLCSMOOTH.dva = smoothit(x,y,a.dva);
HPLCSMOOTH.mva = smoothit(x,y,a.mva);
HPLCSMOOTH.totalchla = smoothit(x,y,a.totalchla);
