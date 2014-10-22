clear
load TC9805Data
a = TC9805.conservativetemperature(10:40,:);
b = max(a) - min(a);
x = max(b);
plot(TC9805.latitude,b/x);
% or 

figure(2);
c = max(abs(gradient(a,5)));
d = max(c);
plot(TC9805.latitude,c/d);

plot(TC9805.conservativetemperature(:,1),TC9805.pressure(:,1));
hold on;
plot(TC9805.conservativetemperature(:,7),TC9805.pressure(:,7));

set(gca,'YDir','Reverse');

[row,col] = find(c);



x = max(a);
y = min(a);

