%Implemente el código necesario para: sumar los cuadrados de los primeros n números naturales.

b=input('Suma de los cuadrados hasta: ');
s=0;
for j=1:b
    s=s+j*j;
end
disp('La suma de los cuadrados es:');
disp(s);

