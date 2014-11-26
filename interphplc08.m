function out = interphplc08(in,x,XI)
    in(8:9,:) = repmat(in(10,:),2,1);
    pigval = nanmean(in,2);
    pigval(isnan(pigval)) = 0; %Set NaNs to 0 to allow interpolation to bottom
    out = interp1(x,pigval,XI);
    out(140:199) = repmat(out(200),60,1);
end