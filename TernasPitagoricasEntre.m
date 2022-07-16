function A = TernasPitagoricasEntre(n,m)
%encuentra las ternas pitagoricas con numeros entre n y m 
%creada por Álvaro Riaño
c=1;
A=zeros(c,3);

for i=n:m
    for j=n:m
        for k=n:m
            if i^2+j^2==k^2
                A(c,1)=i;
                A(c,2)=j;
                A(c,3)=k;
                c=c+1;
            end
        end
    end
end