%toma un sistema con una matriz cuadrada triangular superior y lo resuelve.

A=[1 2 3 4 5 6; 0 4 6 7 5 6; 0 0 7 4 5 6; 0 0 0 3 3 5; 0 0 0 0 5 2; 0 0 0 0 0 6];

b=[3 7 4 5 8 5]';

n=length(A);%numero de filas de A.

x=b(n)/A(n,n);

for i=n-1:-1:1
    vi=A(i,i+1:n);
    xi=(b(i)-sum(vi.*x))/A(i,i);
    x=[xi, x];
end

x=x';

y=A\b;