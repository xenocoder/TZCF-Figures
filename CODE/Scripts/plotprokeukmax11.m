function out = plotprokeukmax11(in)
% x1 = in.latitude(1,:); 
% y11 = in.pressure(1:9); % only go to 200 meters
% y1 = y11'; %Flip to row vector (y direcetion)
% x2 = 36:-0.05:26;
% y2 = 5:1:200;
% y2 = y2';
t = in.pigrats.chlaeuk(:,:);
z1 = inpaint_nans(t);

% z1(z1<0) = NaN; %negative values from inpaint, so turned to 0 in order to
% calculate the values. Negative values are found in TC9805 data, so if
% they are acceptable, acceptable from inpaint, as well.
in.pigrats.intlat = [1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1; 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10; 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5; 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5; 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5; 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5 7.5; 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10; 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5 12.5; 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25; 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25 25];
for j=1:21,
    inteuk(:,j) = trapz(in.pigrats.intlat(:,j),z1(:,j));
end 
in.pigrats.inteuk = inteuk(:,:);
a = max(inteuk);
inteukmax = inteuk/a;

hold on;

% dim = 1;
% 
% c = sum(z1,dim);
% 
% d = c/max(c);


plot(in.latitude,inteukmax,'Color',[0 .508 0]);

p = in.pigrats.chlaprok(:,:);
z2 = inpaint_nans(p);
% z2(z2<0) = NaN;

hold on;
for j=1:21,
    intprok(:,j) = trapz(in.pigrats.intlat(:,j),z2(:,j));
end 
in.pigrats.intprok = intprok(:,:);
b = max(intprok);
intprokmax = intprok/b;
% dim = 1;
% 
% pr = sum(z2,dim);
% 
% e = pr/max(pr);

plot(in.latitude,intprokmax,'Color',[.76 0 .76]);

out=1;
end