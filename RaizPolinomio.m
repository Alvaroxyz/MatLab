function [x1,x2] = RaizPolinomio(a,b,c)
% Calcula las raices de un polinomio de 2do orden
%Creada por Álvaro Riaño
aux = b^2-4*a*c;
if aux < 0
disp('Las raices son complejas');
else
x1 = (-b+sqrt(aux))/(2*a);
x2 = (-b-sqrt(aux))/(2*a);
end
end