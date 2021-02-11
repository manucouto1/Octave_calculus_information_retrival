%EJERCICIO tipo v-byte encoding
% Nos dicen que se codifica el docID, tf y las posiciones de los términos en los documentos
original = ["00000010"; "10000011"; "10000011"; "00000001"; "10000000"; "10000001"; 
"10000001"; "10000010"; "10000001"; "10000100"];
% Manualmente hacemos la separación de cada parte viendo si el bit es un 0 o un 1
v_byte(original)

%   259     3   128     1     1     2     1     4

% Primer documento 259 con tf=3 en las posiciones 128, 129, 130
% Segundo documento 261 con tf=1 en la posición 4

%EJERCICIO 5 Junio 2017
original2 = ["00000011"; "10000011"; "10001001"; "11111110"];
v_byte(original2)
%   387     9   126
% 387 , 396, 522