function [v,t]= burbuja2(v)
%

n = length(v);
%definimos el vector t para entregar las posiciones originales
t=1:n;
for i = 2:n
    for j = 1:n+1-i
        if v(j) > v(j+1)
            aux = v(j);
            v(j) = v(j+1);
            v(j+1) = aux;
            %hacemos la misma transformación para las entradas del vector t
            aux2=t(j);
            t(j)=t(j+1);
            t(j+1)=aux2;
        end
    end
end
