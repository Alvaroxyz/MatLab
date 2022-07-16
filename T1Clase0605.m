sn=0;
n=1;%para comenzar calculando sn para n=1

while sn~=100
    %definimos los parametros que vamos a estar usando
    a=floor(sqrt(n));%de aqui que a^2 sea el cuadrado mas grande menor a n
    t=a-1;
    i=n-(a)^2;%usamos directamente a pues a=t+1

    %calculamos el valor de sn:
    if i<=a%ya está garantizado que 0<=i y que i<=2*a
        sn=(((t*(t+1)*(t+2))/3)+((i*(i+1))/2))/n;
    else
        b=2*a-i;%esto es para simplificar 
        sn=((((t+1)*(t+2)*(t+3))/3)-((b*(b+1))/2))/n;
    end
    %contamos uno más, en caso de que sn no sea 100
    n=n+1;
end
disp(n-1);%la última no cuenta
disp(sn);