% Archivo que dibuja una función definida a trozos
% Manuel Couto Pintos
% 2 de octubre

x = linspace(-2, 3, 1000);
y = (1-2*x).*(x<= -1)  + ((x+1).^3 + 2*x) .*(x > -1)
plot (x, y, '.');
title('funcion a trozos')

ar_circ(2)