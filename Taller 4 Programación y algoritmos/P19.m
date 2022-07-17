% problema 19
%crea un vector v con enteros aleatorios
%crea un entero aleatorio a
%dice si a esta en v y mostrando sus posiciones.

v=randi(1000,[1 1000]);
a=randi(1000);

p=[];
for i=1:1000
    if v(i)==a
        p=[i p];
    end
end

disp("El número "+a+" está en las posiciones "+p);

