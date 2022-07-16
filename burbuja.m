function v = burbuja(v)
% Ordena un vector usando el metodo de la burbuja.
% Creada por GECS-julio2016 para el Curso de MATLAB en la UIS.
% ---------------------------------
n = length(v);
for i = 2:n
for j = 1:n+1-i
if v(j) > v(j+1)
aux = v(j);
v(j) = v(j+1);
v(j+1) = aux;
end
end
end