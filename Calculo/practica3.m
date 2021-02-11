clc, clear all, clf
pkg load symbolic

disp('Exercicio 1')
pkg load symbolic % Se a libreria non est� cargada
syms x; f = x*exp(1/x)
disp('Dom(f) = (-inf, 0) U (0, inf)')
disp(' ')
disp('asintotas verticales')
lv_d = limit(f,x, sym('0'), 'right') %Limite lateral pola
%dereita en x = 0
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

% Practica 3
% 1
% f(x) = x*exp(1/x) -> extremos relativos y absolutos + concavidad, convexidad
#syms x; f = x*exp(1/x);
#1º Derivada
df = diff(f);
#2ª Derivada
d2f = diff(f,x,2)
#3º Ver donde se anula
p_c = solve(df==0, x)
# Signo de la derivada segunda
signo_d2f = subs(d2f, x, p_c)
# f"(1)=e + -> Es convexa, un mínimo
if double(signo_d2f) < 0
  fprintf('f ten un maximo relativo en %2.0f', double(p_c))
endif
if double(signo_d2f) > 0
  fprintf('f ten un minimo relativo en %2.0f', double(p_c))
endif
fprintf("\n")

f_p_c = subs(f,x,p_c); # Resultado simbolico
plot(double(p_c), double(f_p_c), '*r')
text(double(p_c), double(f_p_c) - 0.5, 'min') 
title(' estudio gráico de f')
hold off

% Tiene un minimo relativo, no tinene maximos ni absolutos ni relativos

% Practica 3
% 2
% en el intervalo [0.5, 4]

disp('Exercicio 2 da practica 3')
disp('')
figure(2)
ezplot(f, [1/2, 4])
vpa(f_p_c, 7);
f_a = vpa(subs(f, x, sym('1/2')), 7); #Valor aproximado con 7 digitos de aproximacion
f_b = vpa(subs(f, x, sym('4')), 7);

