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

% 4
u4=linspace(0,pi/2,10);
z4=0:0.5:3;
[U4,Z4]=meshgrid(u4,z4);
X4=Z4.*cos(U4);
Y4=Z4.*sin(U4);

surf(X4,Y4,Z4);


% 5

u=linspace(0,pi/2,10);
z5=3:1:6;

[U,Z5]=meshgrid(u,z5);

X5=3*cos(U);
Y5=3*sin(U);
z5=3:0.1:6;

surf(X5,Y5,Z5);

% 6
[u6,v6]=meshgrid(linspace(0,pi/2,10));

x6=3*(cos(u6).*cos(v6));
y6=3*(sin(u6).*cos(v6));
z6=3*sin(v6)+6;

surf(x6,y6,z6);


% 8
x8=0:0.1:3;
z8=3:1:6;
[X8,Z8]=meshgrid(x8,z8);
Y8=0*X8;

surf(X8,Y8,Z8);


% 9
u9=0:0.1:3;
v9=linspace(0,pi/2,10);

[U9,V9]=meshgrid(u9,v9);

X9=U9.*cos(V9);
Z9=U9.*sin(V9)+6;
Y9=0*X9;

surf(X9,Y9,Z9);