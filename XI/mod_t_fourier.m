%Función que calcula el modulo de la transformada de fourier a partir de una 
%función en el dominio del tiempo
%Manuel Couto Pintos
%23/10/2019
function result = mod_t_fourier(xdet)
  Xdef = fftshift(fft(Xdet))
  result = abs(Xdef)/max(abs(Xdef))
endfunction
