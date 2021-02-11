%Ejercicios 1 y 2 de la pr�ctica 2
%Ejercicio 1: Estudo completo das asintitas de y = x*exp(1/x)
% Manuel Couto 1.2
%Outubro de 2019

clc, clear all, clf

disp('Exercicio 1')
pkg load symbolic % Se a libreria non est� cargada
syms x; f = x*exp(1/x)
disp('Dom(f) = (-inf, 0) U (0, inf)')
disp(' ')
disp('asintotas verticales')
lv_d = limit(f,x, sym('0'), 'right') %Limite lateral polaf
%dereita en x = inf
lv_e = limit(f,x, sym('0'), 'left')%Limite lateral pola
%esquerda en x = 0
disp('A recta x = 0 e asintota vertival pola dereita')
disp(' ')
disp('Asintotas horizontales')
lh_d = limit(f, x ,inf) %limite para ver se hay A.H
%pola dereita
lh_e = limit(f,x ,-inf) %limite para ver se hay A. H.
%pola esquerda

disp('Estudo da asintota oblicua pola dereita')
m_d = limit(f/x, x, inf) %Pendiente de A, o. pola dereita
%se existe
n_d = limit(f - m_d*x, x, inf) %ordenada na orixe da A.O
%pola dereita
disp('Ecuacion da asintota oblicua pola dereita')
AO_d = m_d * x + n_d
disp(' ')

disp('Estudo da asintota oblicua pola esquerda')
m_e = limit(f/x, x, -inf) %Pendiente de A, o. pola esquerda
%se existe
n_e = limit(f - m_d*x, x, -inf) %ordenada na orixe da A.O
%pola esquerda
disp('Ecuacion da asintota oblicua pola esquerda')
AO_e = m_e* x + n_e
disp(' ')

%Representaci�n gr�fica
ezplot(f, [-10,10])
hold on;
plot([0,0], [-10,10], '--k') %debuxa a A.V de exuaci�n x = 0
%de cor negra
set(ezplot(x + 1), 'color', 'r', 'linestyle', '-.') %
plot([-10, 10], [0, 0], '--k') %debuxa o eixe de abscisas
%de  10 a -10 en cor negra
hold off
%fin de ejercicio

%Ejercicio 2
disp('ejercicio 2')
xi = [0,2,-1], yi = [3, 7, 10]; %Tabla de datos

%La funci�n diff resta el elemento n del vector - el elemento n-1
%Es muy util para diferencias divididas 
c1 = diff(yi) ./ diff(xi) ; %diferencias divididas de orden 1
c2 = diff(c1) ./ (xi(3) - xi(1)); %e o vertice da taboa
syms x; %empregamos a librer�a symbilica
% Para obtener a expresi�n do polinomio de lagrange
P_L = expand(yi(1) + c1(1) * (x -xi(1)) + c2*(x - xi(1)) * (x - xi(2)))
  disp('Comprobaci�n de que o polinomio e o correcto')
  if double(subs(P_L, x, xi(1))) == yi(1) ...
    && double(subs(P_L, x, xi(2))) == yi(2) ...
    && double(subs(P_L, x, xi(3))) == yi(3)
    disp('El polinomio  e correcto')
  else disp('hay errores nas contas')
  endif