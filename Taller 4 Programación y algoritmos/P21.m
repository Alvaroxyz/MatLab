%problema 21
%pide un numero n y entrega otro w tal que n*w solo tiene 1 y 0 en su
%expresion decimal. Tambien entrega n*w

n=input('Digite un número: ');

%pedir que n sea necesariamente entero

bandera=0;%avisa si el numero n*w es de 1 y 0

w=1;
while bandera==0
    s=n*w;
    k=floor(log10(s));%la máxima potencia de 10 menor o igual a n
    for i=k:-1:0
        f=floor(s/(10^(i)));%digito de la posicion más grande de s
        if f>1 
            break;%si encuentra un digito distinto de 1 o 0 salta
        elseif i>0
            s=s-10^(i)*f;%quita el digito de la posicion mas grande de s
        else 
            bandera=1;
        end
    end
    w=w+1;
end

disp(w-1);%al finalizar el whil siempre le sumamos 1 a w
disp(n*(w-1));

       
     
