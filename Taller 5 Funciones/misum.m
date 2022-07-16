function suma=misum(x)
%toma un vector y calcula la suma de sus entradas.
%creado por Álvaro Riaño
m=length(x);
suma=0;
for j=1:m
    suma= suma+x(j);
end