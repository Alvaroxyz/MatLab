%problema 20 

%Genere una matriz A donde la triangular inferior presente el triángulo de pascal
% para n filas

n=input('Cuántas filas del triángulo de pascal quiere ver:');

A=zeros(n,n);
A(1,1)=1;

for i=2:n
    for j=1:i
        if j==1
            A(i,j)=1;
        else
            A(i,j)=A(i-1,j-1)+A(i-1,j);
        end
    end
end


disp(A);