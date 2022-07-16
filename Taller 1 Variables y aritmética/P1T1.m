A=[1,2;3,4];
B=[5,6;7,8];
C=[1,0;0,1];
Z=zeros(2,2);

D=[A,Z,Z;Z,B,Z;Z,Z,C];
disp(D)

b=linspace(0,1,6)';%es necesario tomar la transpuesta para que el número de filas de b conicida con D.

%la solución al sistema de ecuaciones Dx=b es 

x=D\b;
