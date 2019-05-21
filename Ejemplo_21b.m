syms t
a=[9 6 1];
b=[5 3];
ciy=[3 -7];
cix=0;
%xi=cos(t)*heaviside(t);
xi=0;
t0=15;
laplace2016a(a,b,ciy,cix,xi,t0)
% a coeficientes de las derivadas de la salida menor a mayor [a_0, ..., a_n]
% b coeficientes de las derivadas de la entrada menor a mayor [b_0, ..., b_m]
% ciy condiciones iniciales de la salida de  menor a mayor [y(0), y(0)^(n-1)]
% cix condiciones iniciales de la entrada de menor a meyor [x(0), x^(m-1)(0)]
% xi función de entrada en terminos de la variable simbolica t previamente
% declarada en el command window
% t0 tiempo final para graficar la solucion, la derivada, y la segunda 
% derivada 