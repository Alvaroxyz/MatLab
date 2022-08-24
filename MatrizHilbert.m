%Soluciona un sistema de ecuaciones lineal Ax=b donde A es la matriz de
%Hilbert y b=SUMA, utilizando el método de Doolittle 

n=7;

%calculo de la matriz de Hilbert

A=zeros(n,n);

for i=1:n
    for j=1:n
        A(i,j)=1/(i+j-1);
    end
end

b=zeros(n,1);

for i=1:n
    b(i)=sum(A(i,:));
end






