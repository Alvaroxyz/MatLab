function [maximo,minimo] = trabajandoFuncion(f,a,b)
% llamado de funciones
x = a:0.01:b;
y = f(x);
plot(x,y);
maximo = max(y);
minimo = min(y);