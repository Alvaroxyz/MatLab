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

%% qué hace meshgrid y surf

x=1:6;
y=0:0.1:0.6;
[X,Y]=meshgrid(x,y);

Z=X.^2+Y;

surf(Y,X,Z);

%% silueta del sólido 

%1

t1=linspace(0,3*sqrt(2),10);
y1=(sqrt(2)/2)*t1;
z1=(sqrt(2)/2)*t1;
x1=0*y1;

plot3(x1,y1,z1);
hold on;

%2

z2=linspace(3,6,10);
y2=3*ones(length(z2));
x2=0*z2;

plot3(x2,y2,z2);

%3 

t3=linspace(0,pi/2,10);
y3=3*cos(t3);
z3=6+3*sin(t3);
x3=0*y3;

plot3(x3,y3,z3);

%4,5,6

z4=0:9;
y4=0*z4;
x4=0*z4;

plot3(x4,y4,z4);

%7

t7=linspace(0,3*sqrt(2),10);
x7=(sqrt(2)/2)*t7;
z7=(sqrt(2)/2)*t7;
y7=0*x7;

plot3(x7,y7,z7);

%8

z8=linspace(3,6,10);
x8=3*ones(length(z8));
y8=0*z8;

plot3(x8,y8,z8);

%9
t9=linspace(0,pi/2,10);
x9=3*cos(t9);
z9=6+3*sin(t9);
y9=0*x9;

plot3(x9,y9,z9);

%10

t10=linspace(0,pi/2,10);
x10=3*cos(t10);
y10=3*sin(t10);
z10=3*ones(length(t10));

plot3(x10,y10,z10);

%11
x11=3*cos(t10);
y11=3*sin(t10);
z11=3+3*ones(length(t10));

plot3(x11,y11,z11);

%12
%faltan las rayas horizontales.


%% solido 

% 2

y2=0:0.1:3;
z2=3:1:6;

[Y2,Z2]=meshgrid(y2,z2);
X2=0*Y2;%simplemente zeros del tamaño de y.


surf(X2,Y2,Z2);

hold on;
% 3
u3=0:0.1:3;
v3=linspace(0,pi/2,10);

[U3,V3]=meshgrid(u3,v3);

Y3=U3.*cos(V3);
Z3=U3.*sin(V3)+6;
X3=0*Y3;

surf(X3,Y3,Z3);

hold on;
% 4
u4=linspace(0,pi/2,10);
z4=0:0.5:3;
[U4,Z4]=meshgrid(u4,z4);
X4=Z4.*cos(U4);
Y4=Z4.*sin(U4);

surf(X4,Y4,Z4);

hold on;

% 5

u=linspace(0,pi/2,10);
z5=3:1:6;

[U,Z5]=meshgrid(u,z5);

X5=3*cos(U);
Y5=3*sin(U);
z5=3:0.1:6;

surf(X5,Y5,Z5);

hold on;
% 6
[u6,v6]=meshgrid(linspace(0,pi/2,10));

x6=3*(cos(u6).*cos(v6));
y6=3*(sin(u6).*cos(v6));
z6=3*sin(v6)+6;

surf(x6,y6,z6);

hold on;

% 8
x8=0:0.1:3;
z8=3:1:6;
[X8,Z8]=meshgrid(x8,z8);
Y8=0*X8;

surf(X8,Y8,Z8);

hold on;

% 9
u9=0:0.1:3;
v9=linspace(0,pi/2,10);

[U9,V9]=meshgrid(u9,v9);

X9=U9.*cos(V9);
Z9=U9.*sin(V9)+6;
Y9=0*X9;

surf(X9,Y9,Z9);










