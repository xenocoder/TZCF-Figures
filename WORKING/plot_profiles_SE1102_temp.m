% Script plot_profiles_SE1102_temp
% A Matlab script to plot the temperature profiles within three boxes:
% 26-28N, 30-32N and 34-36N
%
% Written 09/19/14 by Evan Howell (Evan.Howell@noaa.gov)
%
% 
clf
plot(SE1102.temperature(1:196,1), SE1102.pressure(1:196,1),'b-')
axis('ij')
hold on
for i = 2:8
    plot(SE1102.temperature(1:196,i), SE1102.pressure(1:196,i),'b-')
end

plot(SE1102.temperature(1:196,16), SE1102.pressure(1:196,16),'g-')
for i = 17:24
    plot(SE1102.temperature(1:196,i), SE1102.pressure(1:196,i),'g-')
end

plot(SE1102.temperature(1:196,32), SE1102.pressure(1:196,32),'r-')
for i = 33:40
    plot(SE1102.temperature(1:196,i), SE1102.pressure(1:196,i),'r-')
end