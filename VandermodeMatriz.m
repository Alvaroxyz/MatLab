%Vandermode matrix
v=[1.0 1.2 1.4 1.6 1.8 2.0]';
b=[0 1 0 1 0 1]';
n=length(v);

A=zeros(n,n);

for j=1:6
    A(:,j)=v.^(n-j);%asigna a la j-ésima columna de A
end

%B=vander(v);

