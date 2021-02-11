%Funci�n que calcula la transformada de fourier a partir de una 
%funci�n en el dominio del tiempo
%Manuel Couto Pintos
%23/10/2019

function result = t_fourier(Xdet)
  result = fftshift(fft(Xdet));
endfunction
