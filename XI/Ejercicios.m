clear; close all;

%Ejercicio1
z = -2 + 2*j;
x = real(z)
y = imag(z)
m = abs(z)
a1 = atan(y/x)  %rad
a2 = angle(z)     %rad

a1g = a1*180/pi%grados
a2g = a2*180/pi%grados

figure(2);
plot(z, 'or')
axis([-6 6 -6 6])
xlabel('Parte real')
ylabel('Parte imag')
title('Nuemro complejo')
grid

%Ejercicio2
 m = 1;
 g = 90;
 r = g * pi/180;
 z = m * exp(j*r)
 
x = real(z)
y = imag(z)
m = abs(z)
a1 = atan(y/x)  %rad
a2 = angle(z)     %rad

a1g = a1*180/pi%grados
a2g = a2*180/pi%grados

figure(2);
plot(z, 'or')
axis([-6 6 -6 6])
xlabel('Parte real')
ylabel('Parte imag')
title('Nuemro complejo')
grid




