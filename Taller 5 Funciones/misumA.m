function s=misumA(v)
%realiza lo mismo que la función suma() de matlab:
%entrega la suma de entradas si es un vector
%entrega un vector fila con la suma de las columnas si es una matrix
%para matriz multidimensional XXXXX 
%creada por Álvaro Riaño

if isvector(v)==1
    n=length(v);
    s=0;
    for i=1:n
        s=s+v(i);
    end
elseif ismatrix(v)==1
    v=v.';%traspone la matriz ¿esto modifica a v en el codigo general? NO, no lo modifica.
    [a,~]=size(v); %la virgulilla sirve para que la funcion no me retorne ese valor
    s=zeros([1 a]);
    for i=1:a
        f=v(i,:);
        s(i)=misumA(f);
    end
else 
    disp('No es un vector ni una matriz');
end




    
