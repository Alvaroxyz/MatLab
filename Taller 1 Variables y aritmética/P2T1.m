x=-10+(10+10)*rand(100,1);
f=(x.^2+2*cos(x))./(2+x.*sin(exp(x.^2)));

M=zeros(100,2);
for j=1:100
    M(j,1)=x(j);
    M(j,2)=f(j);
end


%cálculo del min y máx para las columnas y las filas de la matriz M

