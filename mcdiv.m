function d=mcdiv(a,b)
%Halla el máximo común divisor entre a y b recursivamente 
%Creadad por Álvaro Riaño
if a==b
    d=a;
else
    if a>b
        d=mcdiv(a-b,b);
    else 
        d=mcdiv(a,b-a);
    end
end