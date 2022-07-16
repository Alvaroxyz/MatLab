%% Sólidos de revolución
t=0:0.1:10;
r=sqrt(t);

[x6,y6,z6]=cylinder(r); %calcula la matiz del cilindro pero no lo grafica

surf(z6,y6,x6); %sale orientada en el eje en el que se puso Z 

xlabel('Eje x'), ylabel('Eje y'), zlabel('Eje z');

%% esfera centro origen radio 2
t=-2:0.1:2;
r=sqrt(4-(t.^2));

[x6,y6,z6]=cylinder(r);
surf(x6,y6,z6);
disp(r);

%arreglar para que quede con centro en 0,0

%% curvas paramétricas
t = 0:pi/500:pi;
xt1 = sin(t).*cos(10*t);
yt1 = sin(t).*sin(10*t);
zt1 = cos(t);

plot3(xt1,yt1,zt1);

%% 6
[u6,v6]=meshgrid(0:0.1:pi/2);

x6=3*(cos(u6).*cos(v6));
y6=3*(sin(u6).*cos(v6));
z6=3*sin(v6);

surf(x6,y6,z6);

%% 2

y2=0:0.1:3;
z2=3:0.1:6;
x2=zeros(length(z2));

[X2,Y2]=meshgrid(x2,y2);


surf(X2,Y2,z2);












