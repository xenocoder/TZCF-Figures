ind98 = find(TC9805.pressure(:,1)==100);
ind99 = find(TC9905.pressure(:,1)==100);
ind00 = find(TC0004.pressure(:,1)==100);
ind08 = find(SE0802.pressure(:,1)==100);
ind09 = find(SE0902.pressure(:,1)==100);
ind11 = find(SE1102.pressure(:,1)==100);

clf
plot(TC9805.latitude, TC9805.temperature(ind98,:),'b-','xlim',[26 36])
hold on
plot(TC9905.latitude, TC9905.temperature(ind99,:),'g-','xlim',[26 36])
plot(TC0004.latitude, TC0004.temperature(ind00,:),'r-','xlim',[26 36])
plot(SE0802.latitude, SE0802.temperature(ind08,:),'k-','xlim',[26 36])
plot(SE0902.latitude, SE0902.temperature(ind09,:),'y-','xlim',[26 36])
plot(SE1102.latitude, SE1102.temperature(ind11,:),'m-','xlim',[26 36])

legend('TC9805','TC9905','TC0004','SE0802','SE0902','SE1102');