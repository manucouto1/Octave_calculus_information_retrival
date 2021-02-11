% Funcion que genera una serie de valores correspondientes a una funcion coseno
% A*cos(2*pi*f*t); siemdo en g_funcion_coseno(A,f,t): 
% A la amplitud, f la frecuencia y t el array de tiempos 

function signal_xdet = plot_cosemo_cosemo(A, f, t)
  signal_xdet = A*cos(2*pi*f*t);
  plot(t, signal_xdet)
  axis([0 0.1 -0.5 0.5])
  xlabel('Tiempo(seg)') 
  ylabel('Amplitud') 
  title('Se�al de entrada en el dominio del tiempo')
endfunction


