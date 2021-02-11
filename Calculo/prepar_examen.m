clear all
close all
fs = 48000 %Frecuencia de muestreo
A = 0.1 %Amplitud
Ts = 1/fs %Periodo de muestreo 
T = 1 %Duraci�n de la se�al en segundos 
f = 44100 %Frecuencia de se�al sinosoidal
f1 = 330 %Frecuencia
f2 = 440
f3 = 550

t = Ts:Ts:T; %Vector de tiempo

Xdet = A*cos(2*pi*f*t);
Xdet1 = A*cos(2*pi*f1*t);
Xdet2 = A*cos(2*pi*f2*t);
Xdet3 = A*cos(2*pi*f3*t);

plot_filtered(Xdet, @(x,y,z,q)lowpass_filter(x,y,z,q),0);



