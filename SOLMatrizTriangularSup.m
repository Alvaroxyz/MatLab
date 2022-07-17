%toma un sistema con una matriz triangular superior y lo resuelve.

%hacer una que tome datos de excell o externos para la matriz A y el vector
%b y revise si es diagonal superior y calcule la solución. 

n=input('Número de filas de la matriz: ');
m=input('Número de columnas de la matriz: ');

A=zeros(n,m);

for i=1:n
    for j=1:m
        A(i,j)=input('Digite la entrada ');
    end
end

b=zeros(m,1);
for j=1:m
    b(j)=input('Digite el siguiente valor del vector: ');
end


