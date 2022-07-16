function t=elimina(v)
%elimina los valores repetidos de un vector
%
%creada por Álvaro Riaño
n=length(v);
t=[];
for i=1:n
    bandera=0;%acá para inicializarla en cada v(i)
    for j=i+1:n
        if v(i)==v(j)
            bandera=1;
            break
        end
    end
    if bandera==0
        t=[t, v(i)];
    end
end





