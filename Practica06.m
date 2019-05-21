%% Practica 6 Sistemas Diferenciales
%
% Materia: _Señales y Sistemas_
%
% Profesor: _Dr. Rafael Martínez Martínez_
%
% Grupo: _2TV1_
%
% Alumnos:
% 
% _Panama Segura Sayuri_
%
% _Perez Escobar Hiram Etzael_
%
% _Robles Filio Eduardo_ 
%
% _Rodriguez Moreno Luis Manuel_
%
%% Problema.
% 
% Sea un sistema diferencial representado por la siguiente expresión:
%
% $\frac{d^2}{dt^2}y(t)+2\frac{d}{dt}y(t)+2y(t)=\frac{d}{dt}x(t)+2x(t)$
%
% con condiciones iniciales:
%
% $y(0^-)=1 \qquad y'(0^-)=0$
%
% y entrada $x(t)=e^{-t}u(t)$
%
% Desarrolle:
%
% # Muestra la función de transferencia del sistema
% # Muestra la respuesta al impulso (simbólico, gráfica)
% # Muestra la respuesta a entrada cero (simbólico, gráfica)
% # Muestra la respuesta a estado cero (simbólico, gráfica)
% # Muestra la respuesta total (simbólico, gráfica)
% # La respuesta total al escalón con condiciones iniciales 0 (simbólico, gráfica)
% # Usando subplot, depliega una figura con 5 gráficas
%
%%
% *Función de transferencia*
% 
% De acuerdo a la siguiente definicíon de función de transferencia:
% $H(s)=\frac{P(s)}{Q(s)}$
%
% Y del hecho que podemos reescribir la ecuación diferencial de la
% siguiente forma: $(D^2+2D+2)y(t)=(D+2)x(t)$
%
% Tenemos que: $Q(D)=D^2+2D+2 \qquad P(D)=D+2$
%
% Entonces la función de transferencia es: $H(s)=\frac{s+2}{s^2+2s+2}$
%
%%
% *Respuesta al impulso*
% 
% Para obtener la respuesta al impulso basta con realizar la llamada a la
% función del Apéndice A con los siguientes parámetros:
%
% Donde $xi$, que es nuestra entrada del sistema, deberá ser una delta de
% Dirac además de tener condiciones iniciales iguales a cero.
syms t
a=[2 2 1];
b=[2 1];
ciy=[0 0];
cix=0;
xi=dirac(t);
t0=15;
laplace2016a(a,b,ciy,cix,xi,t0)
%%
% *Respuesta a entrada cero*
%
% Procedemos a llamar a la función pero ahora con entrada $xi=0$
syms t
a=[2 2 1];
b=[2 1];
ciy=[1 0];
cix=0;
xi=0;
t0=15;
laplace2016a2(a,b,ciy,cix,xi,t0)
%%
% *Respuesta a estado cero*
%
% Procedemos a llamar a la función pero ahora con condiciones iniciales
% iguales a cero
syms t
a=[2 2 1];
b=[2 1];
ciy=[0 0];
cix=0;
xi=exp(-t)*heaviside(t);
t0=15;
laplace2016a(a,b,ciy,cix,xi,t0)
%%
% *Respuesta total*
%
% Procedemos a llamar a nuestra función pero con los parametros completos.
syms t
a=[2 2 1];
b=[2 1];
ciy=[1 0];
cix=0;
xi=exp(-t)*heaviside(t);
t0=15;
laplace2016a(a,b,ciy,cix,xi,t0)
%%
% *Respuesta total al escalón con condiciones iniciales 0*
%
% Procedemos a llamar a nuestra función con $xi=u(t)$ y condiciones
% iniciales iguales a cero
syms t
a=[2 2 1];
b=[2 1];
ciy=[0 0];
cix=0;
xi=heaviside(t);
t0=15;
laplace2016a(a,b,ciy,cix,xi,t0)
%%
% *Graficas*
%
% <<Graficas_7.jpg>>
%
%% Apendice A
%
% *Código Sistemas diferenciales con Transformada de Laplace*
%
% <include>laplace2016a.m</include>
% 