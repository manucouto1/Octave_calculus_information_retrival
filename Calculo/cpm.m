%Plantilla para el examen práctico de Octave del 4 de diciembre
%Manuel Couto Pintos

clc, clear all, clf
pkg load symbolic

syms x;

%Ejercicio1
f = (x^3 -1) / (x^2 -1);
solve((x^2 -1)==0,x)
%a)
%Puntos problematicos, donde se anula el denominador, en 1 y -1

%b)
limit(f,x,1,'right');
limit(f,x,1,'left');
% Limite por la izquierda y por la derecha de f x-> 1 es 3/2
%Si definimos f a cachos con un valor x = 1 -> f(x) = 3/2 entonces sería continua
%c)
%Hemos visto que cuando x tiende a uno el límite de la funcion tiende a un punto
%Porlo que ahí no tendríamos asíntota vertical, pero nos queda por ver cuando x-> -1
limit(f,x,-1, 'right') % oo
limit(f,x,-1, 'left') % -oo
%Vemos que la función presenta una A.V en x = -1
%Ahora buscamos asíntotas horizontales
limit(f,x,inf) % oo
limit(f,x,-inf) % -oo

% Vemos que no hay asíntotas horizontales por lo que pasamos a comprobar Asintotal Oblicuas
m_d = limit(f/x, x, inf)
n_d = limit( f - m_d*x, inf)
% Como obtenemos una pendiente para la recta de la asintota oblicua tenemos asíntota
% Oblicua por la derecha
m_i = limit(f/x, x, -inf)
n_i = limit( f - m_i*x, -inf)
% Que coincide con la funcion de la A.O por la izquierda
AO = m_d*x + n_d

% d) Representamos graficamente la función junto a las asíntotas

ezplot(f,[-10, 10]);
hold on;
ezplot(AO,[-10, 10]);
plot([-1,-1],[-10, 10]);
hold off;

% e) Podemos comprobar si existen puntos de inflexión viendo donde se anula la derivada

d_f = diff(f,x)

p_i = solve(d_f == 0, x) % Vemos que tenemos 2 puntos de inflexión, en x = -2 y 
% En x = 0;

% f) Polinomio de MacLaurin
fx1 = subs(f, x, 0);
d_fx1 = subs(diff(f,x), x, 0)
d2_fx1 = subs(diff(f,x,2), x, 0)
d3_fx1 = subs(diff(f,x,3), x, 0)

mc_laurin = fx1 + d_fx1*(x) +  (d2_fx1/2)*(x)^2 +  (d3_fx1/6) * (x)^3 

%Ejercicio2

%Ec del area bajo la recta = pi * int( f^2, a,b)

%Ejercicio3 
syms y;

c = sqrt(1-(x-1)^2)

% a)
d_c = diff(c, x)
punto = subs(c, x, sym('3/2'))
pendiente = subs(d_c, x, sym('3/2')) %Pendiente de la ec tangente a la recta
p_p = pendiente*(x - sym('3/2')) + punto; %Ec punto pendiente

ezplot(c,[-1, 5]);
hold on;
ezplot(p_p,[-1, 5]);
plot(double([3/2]), double(punto), '*r')

hold off;

%b)
v = 0:1:5;
y = subs(p_p,x,v);
%1) 
v = 0:1:5; % Conjunto de valores de v = 0:1:5;
% Conjunto de valores de y = subs(p_p,x,v); % se me presenta como matriz
trapz(y)

%2)
h = 1;
v = 0:1:5;
f_trap = @(f,v,h) h/2* (subs(f,v(1)) + 2*(sum(subs(f,x,v(2:length(v)-1)))) + subs(f,x,v(length(v))))

%3)


