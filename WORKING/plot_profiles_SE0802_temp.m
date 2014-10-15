% Script plot_profiles_SE0802_temp
% A Matlab script to plot the temperature profiles within three boxes:
% 26-28N, 30-32N and 34-36N
%
% Written 09/19/14 by Evan Howell (Evan.Howell@noaa.gov)
%
% 
plot(SE0802.temperature(1:196,2), SE0802.pressure(1:196,2),'b-')
axis('ij')
hold on
for i = 3:10
    plot(SE0802.temperature(1:196,i), SE0802.pressure(1:196,i),'b-')
end

plot(SE0802.temperature(1:196,18), SE0802.pressure(1:196,18),'g-')
for i = 19:26
    plot(SE0802.temperature(1:196,i), SE0802.pressure(1:196,i),'g-')
end

plot(SE0802.temperature(1:196,34), SE0802.pressure(1:196,34),'r-')
for i = 35:42
    plot(SE0802.temperature(1:196,i), SE0802.pressure(1:196,i),'r-')
end