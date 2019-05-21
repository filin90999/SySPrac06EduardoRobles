% Ejemplo: resolver y^(2)+2y^(1)+2y=x^(1)+2x con y^(1)(0)=0
% y(0)=0, x(0)=0, x(t)=exp(-t)u(t), para 5 segundos, se resuleve como
syms t
fourier2016a([2 2 1],[2 1],exp(-t)*heaviside(t),5)