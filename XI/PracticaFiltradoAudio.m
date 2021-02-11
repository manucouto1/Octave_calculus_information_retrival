clear all
close all
fs = 48000 %Frecuencia de muestreo
A = 0.1 %Amplitud
Ts = 1/fs %Periodo de muestreo 
T = 1 %Duraci�n de la se�al en segundos 

flow=600 %frecuencia corte LP_filter

t = Ts:Ts:T; %Vector de tiempo
L = length(t);
f=-fs/2+fs/L:fs/L:fs/2; %Declaraci�n del eje de frecuencias

figure
subplot(511)
Xdet = plot_coseno(A,460,t);
subplot(512)
Xdet1 = plot_coseno(A,575,t); 
subplot(513)
Xdet2 = plot_coseno(A,690,t); 
subplot(514)
Xdet3 = plot_coseno(A,920,t);

subplot(515)
XdetSum = Xdet + Xdet1 + Xdet2 +Xdet3;
plot(t, XdetSum)
axis([0 0.1 -0.5 0.5])
xlabel('Tiempo(seg)') 
ylabel('Amplitud') 
title('Se�al de entrada en el dominio del tiempo')

signals = [Xdet; Xdet1; Xdet2; Xdet3; XdetSum];

plot_signals_xdef(signals, f)

%LP Filter representaci�n del proceso de filtrado
plot_filtered(signals(5,:), @()bandpass_filter(L,fs,f,500, 700), f, t)
#L,fs,f, 440
#for i = 1 : (size(signals)(1))
  #plot_filtered(signals(i,:), @()lowpass_filter(L,fs,f,440), f, t)
  %HP 
  #plot_filtered(signals(i,:), @()highpass_filter(L,fs,f,440))
  %BP
  #plot_filtered(signals(i,:), @()bandpass_filter(L,fs,f,440,660))
  %EBP
  #plot_filtered(signals(i,:), @()Ebpass_filter(L,fs,f,440,660))


#sound(Xdet, fs)
#pause(2)
#sound(Xdet1, fs)
#pause(2)
#sound(Xdet2, fs)
#pause(2)
#sound(Xdet3, fs)
#pause(2)
#sound(XdetSum, fs)
#pause(2)
