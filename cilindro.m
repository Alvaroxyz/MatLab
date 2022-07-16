function [a,v] = cilindro(r,h)
% Toma valores y calcula el área y el volúmen del cilíndro
a = 2*pi*r*h+2*pi*r^2;
v = pi*r^2*h;