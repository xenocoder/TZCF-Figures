function out = fixhplc08(in)
    in(8:9,:) = repmat(in(10,:),2,1);
    in(isnan(in)) = 0; %Set NaNs to 0 to allow interpolation to bottom
    
    out = in;
end