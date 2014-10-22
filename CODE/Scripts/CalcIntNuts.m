function nutsout = CalcIntNuts(NUTS)
% CalcIntNuts integrates the nutrients through the water column accounding 
% for this being bottle data 

[~,cs] = size(NUTS.nitrate);
nutsout = zeros(cs, 3);

function total = sumit(a,pressure)
% The subfunction to actually sum the data
    ind = isnan(a)==0;
    val = a(ind);
    valmid=(val(2:end,:)+val(1:end-1,:))/2;
    
    press = pressure(ind);
    bins = press(2:end,:)-press(1:end-1,:);
    total = sum(valmid.*bins);
end

for i = 1:cs
    nutsout(i,1) = sumit(NUTS.nitrate(:,i), NUTS.pressure(:,i));
    nutsout(i,2) = sumit(NUTS.phosphate(:,i), NUTS.pressure(:,i));
    nutsout(i,3) = sumit(NUTS.silicate(:,i), NUTS.pressure(:,i));
end

end