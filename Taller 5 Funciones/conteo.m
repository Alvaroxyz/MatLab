function [c]=conteo(x)
% determina la cantidad de términos que deben subarse de la serie 
%1*2*3+2*3*4+3*4*5+4*5*6+... hasta que la suma exceda a un valor dado

c=0;
s=0;
i=1;

while s<x
    s=s+i*(i+1)*(i+2);
    i=i+1;
    c=c+1;
end

