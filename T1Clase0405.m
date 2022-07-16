m=input('Cuántas filas quiere que tenga la matriz: ');
n=input('Cuántas columnas quiere que tenga: ');
A=zeros(m,n);
S=0;
x=rand; 
f=0; 

if n<m
    f=(x*(m-n))+n;%Es necesario hacer esta transformación pues rand 
    % solo asigna valores aleatorios entre (0,1) no entre (n,m)
elseif m<n
    f=(x*(n-m))+m;
else 
    f=m; %se considera este caso, 
    % dado que rand asigna valores entre (0,1), sin tomar los extremos.
end 

for i=1:m 
    for j=1:n 
        if i<j
            A(i,j)=sin(pi*i)+cos(pi*j);%el valor de esta expresión 
            % solo depende de la columna, 
            % puesto que sin(pi*i)=0, para i=0,1,2,...
        elseif i==j
            A(i,j)=f;%Con esta definición se le asigna 
            % el mismo valor a toda la diagonal de la matriz
        else 
            for r=1:3*i %Se establece r como contador (variable local)
                a=r*r+i;
                S=a+S;
            end
            A(i,j)=S;
            S=0;
        end
    end
end 

disp(A);

