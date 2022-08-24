%PROBLEMA DE LA DIFUSIÓN DEL CALOR (EXPERIMENTO)

%CONTEXTO:
%Los bordes de una lámina rectangular tienen una temperatura controlada de
%a°C, b°C, c°C y d°C respectivamente. Queremos estudiar cómo se difunde el
%calor al interior de la lámina. Para ello realizamos un modelo discreto de
%la situación, que consiste en un mallado cuadrado para la lámina.

%Nos interesa saber cuál será la temperatura en cada uno de los nodos de
%dicho mallado. Para ello asumimos que la temperatura en cada punto es el
%promedio de las temperaturas de los cuatro nodos vecinos. A partir de
%allí, se construye una matriz asociada para determinar las temperaturas en
%cada punto. 

%Este programa determina las temperaturas para un mallado de cualquier
%dimensión. 

n=input('Introduzca la dimensión del mallado: ');
a=input('Temperatura del primer lado: ');
b=input('Temperatura del segundo lado: ');
c=input('Temperatura del tercer lado: ');
d=input('Temperatura del cuarto lado: ');


%Cálculo de la matriz del sistema
e=n^2;
A=zeros(e,e);

for i=1:e
    r=mod(i,n);

    A(i,i)=4;

    %nodo de la izquierda
    if r~=1
        A(i,i-1)=-1;
    end
    
    %nodo de la derecha
    if r~=0 
        A(i,i+1)=-1;
    end

    %nodo de abajo
    if n<i
        A(i,i-n)=-1;
    end

    %nodo de arriba
    if i<n^2-(n-1)
        A(i,i+n)=-1;
    end
end


%Cálculo de la matriz B0
B0=zeros(e,4);
for i=1:e
    y=mod(i,n);
    %nodos del lado derecho
    if y==0
        B0(i,4)=d;
    end
    
    %nodos del lado izquierdo
    if y==1
        B0(i,2)=b;
    end

    %nodos de abajo
    if i<n+1
        B0(i,1)=a;
    end

    %nodos de arriba
    if n^2-n<i
        B0(i,3)=c;
    end
end

%Cálculo del vector B=At, donde t es la solución del sistema

B=zeros(e,1);
for i=1:e
    B(i,1)=sum(B0(i,:));
end

%Ahora solo falta hallar las soluciones del sistema At=B

t=A\B;
disp(t)







