%Funcion que pinta un conjunto de señales representandolas en el dominio del tiempo

function xdef_signals = plot_signals_xdef(signals, f)
  
  figure
  n = size(signals)(1)
  
  for i = 1:n
    fprintf('iteración %d \n',i) 
    number = 100*n + 10;
    aux= t_fourier(signals(i,:));
    subplot((number+i))
    hold on
    title(sprintf("Señal: %d", i));
    plot(f,abs(aux)/max(abs(aux))); %Dibujo del m�dulo de aux
    axis([-1000 1000 0 1.1]); %Ajuste de los ejes de la figura
    hold off
   endfor
   
endfunction