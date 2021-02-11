clear all;
%Ejercicio1.20
x = [1/5, 3, 2, -7, 0.2];
[x',sqrt(x)', x.^(1/3)'] %El apóstrofe combierte filas en columnas

a = 0:1/8:2*pi
hold off
title("Ejemplo coseno")
hold on
xlabel("valor de x")
ylabel("valor de y = cos(x)")
plot(a,cos(a))
axis([0 2*pi -1.5 1.5])
plot([0  2*pi], [max(cos(a))])
plot([0  2*pi], [ 0 0])
plot([0 0], [-1 1])


a = [pi/3, pi/4, pi/6]
t = [1, 2, 3]
v = 20
g = 9.81

hold off
x = v*cos(a(1)).*t
y = v*sin(a(1)).*t - (1/2)*g*t.^2
plot(x,y)
hold on
x = v*cos(a(2)).*t
y = v*sin(a(2)).*t - (1/2)*g*t.^2
plot(x,y)
x = v*cos(a(3)).*t
y = v*sin(a(3)).*t - (1/2)*g*t.^2
plot(x,y)

syms x; y = x^2 + sin(3*x) - 1/2;

solve(y == 0, x)

