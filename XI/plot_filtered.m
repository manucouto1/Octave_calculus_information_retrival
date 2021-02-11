% Funcion que muestra una señal en el dominio del tiempo, su representación en el
%dominio de la frecuencia, el resultado de aplicarle un filtro en el dominio de 
%la frecuencia y el resultado de pasarlo de vuelta al domino del t

function plot_filtered(Xdet,  filter, f, t)

  Xdef=t_fourier(Xdet); % Transformada de Fourier de xdet
  
  HL = filter();
  
  Ydef = Xdef.*HL; % Aqu� se aplica el filtro a la se�al en el dominio de las frecuencias
  Ydet = t_fourier_inversa(Ydef); %Aqu� se sintetiza la se�al en el dominio del tiempo

  figure
  subplot(411)
  plot(t, Xdet); %Dibujo del m�dulo de Xdet
  axis([0 0.1 -0.5 0.5]);

  subplot(412)
  plot(f, abs(Xdef)/max(abs(Xdef))); %Dibujo del m�dulo de Xdef
  hold on
  plot(f,abs(HL));
  hold off
  axis([-1000 1000 0 1.1]); %Ajuste de los ejes de la figura

  subplot(413)
  plot(f,abs(Ydef)/max(abs(Ydef))); %Dibujo del m�dulo de Xdef
  axis([-1000 1000 0 1.1]); %Ajuste de los ejes de la figura

  subplot(414)
  plot(t,Ydet); %Dibujo del m�dulo de Xdef
  axis([0 0.1 -0.5 0.5]); %Ajuste de los ejes de la figura

endfunction
