function suma=misum2(x,a)
%toma un vector y un numero, si es 1 calcula la suma de las entradas
%impares, si es 2, suma las entradas pares. (el vector debe ser entonces de
%numeros enteros). Si no se pone segundo argumento, entonces solo calcula la
%suma. 
%Creado por Álvaro Riaño 
suma=0;
n=length(x);
if nargin==1
    suma=misum(x);
elseif nargin==2
    if a==1
        for i=1:n
            if mod(x(i),2)==1
                suma=suma+x(i);
            end
        end
    elseif a==2
        for i=1:n
            if mod(x(i),2)==0
                suma=suma+x(i);
            end
        end
    else
        disp('argumento numérico incorrecto');
    end
else 
    disp('Revise la entrada');
end 