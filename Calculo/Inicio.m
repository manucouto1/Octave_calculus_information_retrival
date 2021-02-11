% Para los diferentes niveles de precision
format long

% Ejercicio1
sqrt(4) == 4^(1/2)

%Ejercicio1.2
%a)
(3^2 + 7)/2
%b)
2^3 - 16*(7 + 24/3)/(2^4*5)
%c)
625^(1/4)
%d)
sqrt(-1)
-1^(1/2)
%e)
sqrt(sqrt(-1))
-1^(1/4)
%f)
sqrt(i)

%Ejercicio1.4 f(x) = e^x = exp(x)
%1) 
exp(500)
%2)
exp(900)
%3) Desborda y nos queda INF - INF -> NaN indeterminación
exp(900) - exp(900)
 
%Ejercicio1.6
%b)
% Cambiar la base de un logaritmo
 log(64)/log(4)
%c)
nthroot(-1,3) %Raiz cúbica 
nthroot(-8,3) 
nthroot(256, 4)

%Ejercicio 1.7
factor(45) %Descompone en factores
factorial(5) %Multiplica n*(n-1) ... (1)
fix(4.57647) %Se queda con el número entero, redondea a 0
fix(-4.57647)
floor(4.57647) %Redondea por lo bajo
floor(-4.57647)
round(4.57647) %Redondea al entero más próximo
round(-4.47647)
floor(-4.47647)

x = [ 0 -1 3 5 ]
y = [ 1 2 7 -1 ]

plot(x,y)
hold on
plot([-2*pi 2*pi], [0 0])
plot([0 0], [-1 1])

%Ejercicio 1.11
%Vector algulos sin
hold off
v = -2*pi:pi/64:2*pi
w = sin(v)
plot(v, w)
hold on
plot([-2*pi 2*pi], [0 0])
plot([0 0], [-1 1])

%Vector algulos cosin
hold off
v = -2*pi:pi/64:2*pi
w = cos(v)
plot(v, w, 'g-.')
hold on
plot([-2*pi 2*pi], [0 0])
plot([0 0], [-1 1])

%Ejercicio 1.8
v = [3 6 2 7 1 5]
v(3)
v([2, 4])
zeros(1,5)
linspace(2, 10, 3)

%Ejercicio 1.9
v = 3:-1.5:-4.5
linspace(3, -4.5,6)
v([2:2:length(v)])

%multiplos de 8 que están en los 100 primeros naturales
w = 8:8:100

%Multiplicación de vectores
v = [1 2 3]
w = [4 -5 0]

prod1 = v * w' % Es un número real 1x3 * 3x1 = 1x1 
prod2 = v' * w % Es matriz 3x3 3x1 * 1x3 3x3
prod3 = v .* w % Multiplica componente a componenete

hold off
v = -3:0.1:3

plot(v,v.^2)
