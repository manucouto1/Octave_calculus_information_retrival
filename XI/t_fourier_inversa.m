%Funcion que calcua la transformada de fourier inversa a partir
%de una señal en el dominio de las frecuencias
%Manuel Couto Pintos
%23/10/2019

function ans = t_fourier_inversa(Ydef)
  %Cálculo de la transformada de Fourier inversa
  ydet = ifft(fftshift(Ydef));
  ans = real(ydet);
endfunction
