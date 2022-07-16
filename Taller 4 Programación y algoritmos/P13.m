%dado un número entero sumar sus cifras
n=input('Ingrese un número entero: ');
%como verificar si es entero?

%determinamos la máxima potencia de 10 <=n

pot=0;
while 10^(pot)<=n
    pot=pot+1;
end

pot=pot-1; %el while termina cuando 10^pot es mayor. 

s=n;
cif=zeros(1,pot+1);%vector cifras
for i=pot:-1:0
    cif(i+1)=floor(s/(10^(i)));
    s=s-cif(i+1)*(10^(i));
end

y=sum(cif);
disp(y);
    
