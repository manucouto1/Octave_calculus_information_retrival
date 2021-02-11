clc; clear all;
pkg load symbolic;

format long

syms x;

a = -pi/2;
b = -a;

v1 = linspace(a, b, 10);
v2 = linspace(a, b, 100);
v2 = linspace(a, b, 1000);
v2 = linspace(a, b, 10000);
v2 = linspace(a, b, 100000);

f = @(x) sqrt(cos(x));
Vx = @(n) linspace(a,b,10^n);

for n = 1:5
  aprox = trapz(Vx(n), f(Vx(n)))
endfor


my_trap = @(h,f,v) h/2*(f(v(1)) + 2*sum(f(v(2:length(v)-1))) + f(v(length(v))));



h = 0.1;
xi = 0:0.1:1;
li = [0,0.0001, 0.0016, 0.0243, 0.256, 0.0625, 0.1296, 0.2401, 0.4096, 0.6561, 1.0]; 
Vx = 1:length(xi);

f_gin = @(x) 2*(xi(x) - li(x))

my_trap(0.1, f_gin, Vx)

2 * trapz(xi, li)

%Practica3
clc; clear all;
pkg load symbolic;

syms x;

f = x*exp(1/x);

% Extremos relativos y absolutos
disp("Primera derivada")
df = diff(f)
disp("Ver donde se anula la derivada")
p_c = solve(df==0, x) %La primera derivada vale 0 en x = 1
disp("Segunda derivada")
d2f = diff(f,x,2)
disp("Signo de la derivada segunda en el punto de inflexión")
signo_d2f = subs(d2f, x, p_c) %Signo de la segunda derivada en el punto x=1

if double(signo_d2f) < 0
  fprintf('f ten un maximo relativo en %2.0f', double(p_c))
endif
if double(signo_d2f) > 0
  fprintf('f ten un minimo relativo en %2.0f', double(p_c))
endif
fprintf("\n")



clc; clear all;
pkg load symbolic;

syms x;

f = 4*x^2 + 5*x - 2;

if( subs(f,x,0) * subs(f,x,4) < 0), disp("Por bolzano hay almenos una solucion");
else disp("Por bolzano no se puede demostrar");
endif

solutions = solve(f == 0, x)




%% %%%%%%%%%%%%%%%%%%%%%%%%%%
clc; clear all;
pkg load symbolic;

syms x;

f = sqrt(x^3/(x+1));

%Estudiamos la continuidad
%Punto donde se anula el denominador
punto_problematico = solve(x+1==0,x);

l_der = limit(f, x, punto_problematico,'right');
l_izq = limit(f, x, punto_problematico, 'left');  
%El limite de f cuando tiende a x = -1 por la izquierda es inf por lo tanto tenemos 
%una asintota vertical ahí

aH_d = limit(f, x, inf);
aH_i = limit(f, x, -inf);

%No son un número concreto así que no existe asintota orizontal

m_d = limit(f/x, x, inf);

n_d = limit(f - x*m_d, x, inf);

aOd = m_d*x + n_d;%tiene una asintota oblicua por la derecha

m_i = limit(f/x, x, -inf);

n_i = limit(f - x*m_i, x, -inf);

aOi = m_i*x + n_i;

ezplot(f, [-10, 10]);
hold on;
plot([0, 0], [-10, 10]);
plot([[-10, 10], [0, 0]);
plot([-1,-1], [-10, 10], '--k') %debuxa a A.V de exuaci�n x = -1
set(ezplot(aOd, [-10, 10]), 'color', 'g', 'linestyle', '-.');
set(ezplot(aOi, [-10, 10]), 'color', 'b', 'linestyle', '--');
hold off;
%Viendo la gráfica me doy cuenta de que entre -1 y 0 el denominador es positivo y
%el numerador es negativo por lo tanto el dominio de la función va de (-inf, -1) U [0, +inf)

%Continuando con el estudio de la función comprobaremos los puntos de inflexión
%para intentar determinar máximos y minimos relativos.

d_f = diff(f, x);

p_i = solve(d_f == 0, x);




