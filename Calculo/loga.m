2* %funci�n que calcula el log en base a de un n�mero n
%function loga(n, a)
%Manuel Couto Pintos
%2 Octubre 2019

function loga(n, a)
  fprintf('El log en base%d(%d) es: ',a,n) 
  log = log(n)/log(a)
endfunction
