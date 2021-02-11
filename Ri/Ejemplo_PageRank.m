% EJERCICIO Tipo Page Rank Ej:2 Julio 2018
% Matriz de adyacencia
m = [ 0, 1, 0, 1;
      1, 1, 1, 1;
      0, 0, 0, 1;
      0, 1, 1, 0]
% Matriz de transición de probabilidad      
mtp = MTP(m)
% MTP con teleporting 80%
mtp_alfa = MTP_ALFA(mtp, 0.8)
% Conociendo con certeza que un randome surfer está con toda probabilidad en nodo 1
v = [1, 0, 0, 0]
v * mtp_alfa

% EJERCICIO Tipo Page Rank Ej:2 Julio 2017
% Matriz de adyacencia
m = [ 1, 0, 0, 1;
      0, 1, 0, 1;
      0, 0, 1, 1;
      0, 0, 0, 1]
% Matriz de transición de probabilidad      
mtp = MTP(m)
% MTP con teleporting 20%
mtp_alfa = MTP_ALFA(mtp, 0.2)
% Suponiendo una distribución uniforme
v = [0.25, 0.25, 0.25, 0.25]
x1 = v * mtp_alfa
x2 = x1 * mtp_alfa