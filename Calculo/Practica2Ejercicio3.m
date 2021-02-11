%Mirar practica 2 Ejercicio3
%continuidad  en b = 3825 
clear all;

pkg load symbolic;
syms b;

disp("comprobamos continuidad en b=3825")
l1_izq = limit( sym("0.13")*b, b, sym("3825"));
l1_der = limit(sym("497.25") + sym("0.225") * (b - 3825), b,sym("3825"));

if double(l1_izq) == double(l1_der), disp("la funcion es continua en ese punto")
 else disp(" hay una continuidad de salto")
endif

disp("comprobamos la continuidad en b = 8499")
l2_izq = limit(sym("497.25") + sym("0.225")* (b - 3825),b, sym("8499"));
l2_der = limit(sym("1548.9") + sym("0.225") * (b - 8499), b,sym("8499"));

if double(l2_izq) == double(l2_der), disp("la funcion es continua en ese punto")
 else disp(" hay una continuidad de salto")
endif

%% Dibujamos el tramo de 17526 a 53407

v = 17526:0.1:53407;
y = (3850.79+(v-17526)*0.295).*(v <= 30805)...
   + (7768.09+(v-30805)*0.38).*(v > 30805) ...
   + (13344.59+(v-45480)*0.425).*(v > 45480)...
   + (16713.57+(v-53407)*0.45).*(v >53407);
   
%% Calcular por diferencias divididas 

%Pl2(38/40) -> 10391.68
format long

xi = [ 30805, 45480, 53407];
yi = [ 7768.09, 13344.59, 16713.57];

c1 = diff(yi) ./diff(xi) ; %diferencias divididas de orden 1
c2 = diff(c1) ./ [xi(3) - xi(1)]; %e o vertice da taboa

tabla = [xi', yi',[c1,0]', [c2,0,0]']
disp(' ')

syms x; 
% Para obtener a expresi�n do polinomio de lagrange
P_L2= expand(yi(1) + c1(1) * (x -xi(1)) +...
 c2*(x - xi(1)) * (x - xi(2)))
double(subs(P_L2, x,sym('30805')))

%f = @(x) yi(1) + c1(1) * (x -xi(1)) + c2*(x - xi(1)) * (x - xi(2))
%pl4(38/40) -> 10315.99

