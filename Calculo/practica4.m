%% PRACTICA 4

clc; clear;
pkg load symbolic;

format long

%% EJERCICIO 4.1
syms x;
L1 = x^sym("2.32");
L2 = x^sym("3.1");

%% Apartado a)
disp(' Apartado A ')
I_G1 = 2*int(x - L1,x,0,1);
Indice_L1 = vpa(I_G1, 5);

%% Apartado b)
disp(' Apartado B ');
I_G2 = 2*int(x - L2,x,0,1);
Indice_L2 = vpa(I_G2, 5)

ezplot(L1, [0 1])
legend(' L1 ')
hold on;

ezplot(L2, [0 1])
title('Curva de lorenz')
hold off;

%% EJERCICIO 4.1 c)

h = 0.1;
xi = 0:0.1:1;
li = [0,0.0001, 0.0016, 0.0243, 0.256, 0.0625, 0.1296, 0.2401, 0.4096, 0.6561, 1.0]; 
n = length(li);

aprox_trap_comp = (h/2)*((xi(1) -li(1)) + sum(2*(xi - li)(2:n - 1)) + (xi(n) - li(n)))

trapz(xi, li)

%% EJERCICIO 4.2
a = -pi/2;
b = -a;

X1=linspace(a,b,10);
trapz(X1,sqrt(cos(X1)))

X1=linspace(a,b,10^2);
trapz(X1,sqrt(cos(X1)))

X1=linspace(a,b,10^3);
trapz(X1,sqrt(cos(X1)))

X1=linspace(a,b,10^4);
trapz(X1,sqrt(cos(X1)))

X1=linspace(a,b,10^5);
trapz(X1,sqrt(cos(X1)))

for n = 1: 5
  AprTrpCmp = trapz(linspace(a,b,10^n), sqrt(cos((linspace(a,b,10^n)))))
endfor