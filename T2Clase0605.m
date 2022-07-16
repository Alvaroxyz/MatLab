m=100;%la cota hasta donde queremos probar primos q.

q=1:m;
q(isprime(q)==0)=[];%quita las entradas que no son numeros primos en el vector
l0=length(q);
p=q(5:25);%p es un vector con los primos de 2 digitos.
l1=21; %entradas de p

A=zeros(l1,l0);

%definimos cada fila de A como los numeros de la forma p+100q 
for j=1:l1
    for i=1:l0
        A(j,i)=p(j)+100*q(i);
    end
end

%definimos el vector de cuadrados
a=floor(sqrt(A(l1,l0)));%una cota para el vector de cuadrados
x=1:2:a; %solo necesitamos cuadrados de numeros impares
y=x.^2;
l2=length(y);

b=zeros(1,l1);

%definimos la entrada b(j) como la cantidad de cuadrados iguales a
%p(j)+100q con q un primo.
c=0;    %contador
for j=1:l1
    for i=1:l0
        u=find(y==A(j,i));%find da la posicion de una entrada del vector 'y' que sea igual a la entrada A(j,i).
        if size(u)==[1,1]%este es el caso en que la entrada A(j,i) si esta en el vector 'y'
            c=c+1;
        end
    end
    b(j)=c;
    c=0;
end

%definimos la suma de todos los primos para los que si existe q
s=0;
for j=1:l1
    if b(j)~=0
        s=s+p(j);
        disp(p(j));
    end
end

disp(s)






















