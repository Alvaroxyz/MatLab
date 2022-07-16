function suma = sc(n)
% suma de los cubos de 1 a n
if n>1
suma=sc(n-1)+n^3;
else
suma=1;
end