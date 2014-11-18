function out = calchiratamodel(in)
%
% Function to calculate the pico, nano, and micro components based on Chl-a

chla = in.totalchla;

x = log10(chla); 
y = chla;

picopl = -1.*(0.1529 + exp(1.0306.* x -1.5576)) ?1 + a3x + a4;
end