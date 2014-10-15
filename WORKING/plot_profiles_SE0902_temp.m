% Script plot_profiles_SE0902_temp
% A Matlab script to plot the temperature profiles within three boxes:
% 26-28N, 30-32N and 34-36N
%
% Written 09/19/14 by Evan Howell (Evan.Howell@noaa.gov)
%
% 
clf
plot(SE0902.temperature(1:188,2), SE0902.pressure(1:188,2),'b-')
axis('ij')
hold on
for i = 3:6
    plot(SE0902.temperature(1:188,i), SE0902.pressure(1:188,i),'b-')
end

plot(SE0902.temperature(1:188,13), SE0902.pressure(1:188,13),'g-')
for i = 14:21
    plot(SE0902.temperature(1:188,i), SE0902.pressure(1:188,i),'g-')
end

plot(SE0902.temperature(1:188,29), SE0902.pressure(1:188,29),'r-')
for i = 30:36
    plot(SE0902.temperature(1:188,i), SE0902.pressure(1:188,i),'r-')
end