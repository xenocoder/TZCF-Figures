function out = calchiratamodel(in)
%
% Function to calculate the pico, nano, and micro components based on Chl-a

    chla = in.C./1000;

    x = log10(chla);
    y = ones(size(in.C));

    out.picoplmodel = -1.*((0.1529 + exp(1.0306.* x -1.5576)).^-1) -1.8597 .* x + 2.9954;
    out.picoplmodel(out.picoplmodel<0) = 0;
    out.picoplmodel(out.picoplmodel>1) = 1;
    out.microplmodel = (0.9117 + exp(-2.7330 .* x + 0.4003)).^-1;
    out.microplmodel(out.microplmodel<0) = 0;
    out.microplmodel(out.microplmodel>1) = 1;
    out.nanoplmodel = y - out.picoplmodel - out.microplmodel;
    out.nanoplmodel(out.nanoplmodel<0) = 0;
    out.nanoplmodel(out.nanoplmodel>1) = 1;
end