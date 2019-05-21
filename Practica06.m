%% Practica 6 Sistemas Diferenciales
%
% Materia: _Se�ales y Sistemas_
%
% Profesor: _Dr. Rafael Mart�nez Mart�nez_
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
% Sea un sistema diferencial representado por la siguiente expresi�n:
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
% # Muestra la funci�n de transferencia del sistema
% # Muestra la respuesta al impulso (simb�lico, gr�fica)
% # Muestra la respuesta a entrada cero (simb�lico, gr�fica)
% # Muestra la respuesta a estado cero (simb�lico, gr�fica)
% # Muestra la respuesta total (simb�lico, gr�fica)
% # La respuesta total al escal�n con condiciones iniciales 0 (simb�lico, gr�fica)
% # Usando subplot, depliega una figura con 5 gr�ficas
%
%%
% *Funci�n de transferencia*
% 
% De acuerdo a la siguiente definic�on de funci�n de transferencia:
% $H(s)=\frac{P(s)}{Q(s)}$
%
% Y del hecho que podemos reescribir la ecuaci�n diferencial de la
% siguiente forma: $(D^2+2D+2)y(t)=(D+2)x(t)$
%
% Tenemos que: $Q(D)=D^2+2D+2 \qquad P(D)=D+2$
%
% Entonces la funci�n de transferencia es: $H(s)=\frac{s+2}{s^2+2s+2}$
%
%%
% *Respuesta al impulso*
% 
% Para obtener la respuesta al impulso basta con realizar la llamada a la
% funci�n del Ap�ndice A con los siguientes par�metros:
%
% Donde $xi$, que es nuestra entrada del sistema, deber� ser una delta de
% Dirac adem�s de tener condiciones iniciales iguales a cero.
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
% Procedemos a llamar a la funci�n pero ahora con entrada $xi=0$
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
% Procedemos a llamar a la funci�n pero ahora con condiciones iniciales
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
% Procedemos a llamar a nuestra funci�n pero con los parametros completos.
syms t
a=[2 2 1];
b=[2 1];
ciy=[1 0];
cix=0;
xi=exp(-t)*heaviside(t);
t0=15;
laplace2016a(a,b,ciy,cix,xi,t0)
%%
% *Respuesta total al escal�n con condiciones iniciales 0*
%
% Procedemos a llamar a nuestra funci�n con $xi=u(t)$ y condiciones
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
% *C�digo Sistemas diferenciales con Transformada de Laplace*
%
% <include>laplace2016a.m</include>
% 