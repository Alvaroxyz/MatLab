%Problema 1
ven=[2000 5000 100 800 300 1000 2200 350 50 1300]'; %vector ventas
n=length(ven);
com=zeros(1,n)';%creamos un vector para las comisiones 
%toca trasponer los vectores para que sean columnas.
for i=1:n
    if ven(i)<=400
        com(i)=ven(i)*0.01;
    elseif 400<ven(i)&& ven(i)<1000
        com(i)=ven(i)*0.03;
    else
        com(i)=ven(i)*0.05;
    end
end

%nombres= {'Ventas','Comisión'};%nombre de cada columna. 
% Se pone en formato celda porque es formato tecto. 
% También se puede poner como string

t=table(ven,com);
disp(t);

%como cambiarles los nombres de las columnas.


    



