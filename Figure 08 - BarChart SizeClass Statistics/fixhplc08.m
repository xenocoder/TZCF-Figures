function out = fixhplc08(in)
    in(10,1) = mean(in(10,2:3)); %set bottom of first profile to mean of proximal stations to constrain bottom
    in(8:9,:) = repmat(in(10,:),2,1);
    in(isnan(in)) = 0; %Set NaNs to 0 to allow interpolation to bottom
    
    out = in;
end