function out = fixhplc09(in)
    in(9,1:2) = repmat(in(9,3),1,2); %set bottom of first profile to mean of proximal stations to constrain bottom
    in(isnan(in)) = 0; %Set NaNs to 0 to allow interpolation to bottom
    
    out = in;
end