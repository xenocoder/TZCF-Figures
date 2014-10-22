function pigs = calcpigs(in)
%This is a script to calculate the algal group concentrations from pigments
% equations are taken from Anderson et al 1996 after Letelier et al 1993

P = 54.27;
C = 0.14;

hex19 = in.hex;
but19 = in.but;

hexprym19 = (P/(P-C)) .* (hex19 - (but19 .* C));
butpel19 = (P/(P-C)) .* (but19 - (hex19 .* (1/P)));

pigs = {};
pigs.chlatotal = in.totalchla;
pigs.chlapro = in.dva; %straight dv-chla relationship
pigs.chlaprym = 1.3 .* hexprym19;
pigs.chlapel = 0.9 .* butpel19;
pigs.chladino = 1.5 .* in.per;
pigs.chladiat = 0.8 .* (in.fuco - (0.02.*hexprym19 + 0.14.*butpel19));
pigs.chlaothers = pigs.chlatotal-pigs.chlapro-pigs.chlaprym-pigs.chlapel-pigs.chladino-pigs.chladiat;

%Taken from Suzuki et al 1997
pigs.chlaeuk = pigs.chlaprym+pigs.chlapel+pigs.chladino+pigs.chladiat;
pigs.chlaprok = pigs.chlatotal - pigs.chlaeuk;

end