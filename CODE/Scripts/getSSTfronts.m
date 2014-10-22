function positions = getSSTfronts( data )
%getSSTfronts Summary of this function goes here
%   Detailed explanation goes here

positions = interp1(mean(data.temperature(1:10,:)),data.latitude(1,:),[17,18]);
end

