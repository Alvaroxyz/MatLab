%problema 15

n=input('Cuántos lanzamientos quiere que se realicen: ');

c=0;%contador para los que caen dentro 
for i=1:n
    a=rand;
    b=rand;
    d=sqrt((a-0.5)^2+(b-0.5)^2);%distancia del punto (a,b) al centro del círculo.
    if d<=0.5
        c=c+1;
    end
end

disp("la cantidad de lanzamientos que cayeron dentro del círculo es: " + c);
