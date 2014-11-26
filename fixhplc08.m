function out = fixhplc08(in)
% This is a function to interpolate missing values from
    inc = (in(7)-in(10))./3;
    in(8:9,:) = repmat(in(10,:),2,1);
    in(isnan(in)) = 0; %Set NaNs to 0 to allow interpolation to bottom
    
    out = in;
end