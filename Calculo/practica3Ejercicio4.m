clear all
pkg load symbolic

%Ejercicio
%Usamo el teorea de Bolzano
syms x; f = 4*x^2 + 5*x - 2;

%Multiplicamos fen un extremo por f en el otro
double(subs(f,x,-3)*subs(f, x, 0))

solve(f)

double(ans(2))

%Ejercicio 4
%Apartado e
%Newto-Rapson
syms x; f = 4*x^2 + 5*x -2;

d_f = diff(f,x)

x0 = -3;

x1 = x0 - double(subs(f, x, x0)) / subs(d_f, x, x0)

#nr(f,-3,4)

% x1 = x0 - 

#{
v = -2*pi:pi/25:2*pi; 
y = log(v +10);
t = sin(v); 
z = abs(v); 
w = exp(v -1);

subplot(2, 2, 1); plot(v, y, 'c++')
subplot(2, 2, 2); plot(v, z, 'm--')
subplot(2, 2, 3); plot(v, t, 'yo')
subplot(2, 2, 4); plot(v, w, 'k*')
#}

v = -10:0.1:10;
y = subs(f,x,v);
subplot(2, 1, 1); ezplot(f, v)
hold on; 
v = -3:0.01:0; 
plot(v, 0*v); 
hold off;

subplot(2,1,2)
g = -sqrt(2 - 5*x)/2; ezplot(g, [-3,0])
hold on; v = -3:0.01:0; plot(v,v) 






