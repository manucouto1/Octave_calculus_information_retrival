
% EJERCICIO de df y idf
% En la matriz las filas representan los documentos y las columnas los términos
% terminos = Se, aproxima, verano, templado, lluvioso, otoño
m = [1, 1, 1, 1, 0, 0;
     1, 1, 1, 0, 1, 0;
     1, 1, 0, 0, 0, 1];
% La query = verano ,templado
q = [0, 0, 1, 1, 0, 0];
% inverse doc frequency de los terminos
idf_x = arrayfun(@(x) idflog10(m,x), 1:6)
% pesos de los terminos en la query
pesos_q = (idf_x .* q)
% raw tf
tf_r = m(1,:)
% raw tf * idflog10
(tf_r .* x1')
% D1 weights
pesos_q / n_euclidea(x1' .* q)
% simetría q, D1
sum ((pesos_q / n_euclidea(x1' .* q)) .*  pesos_q)



%EJERCICIO tipo v-byte encoding
% Nos dicen que se codifica el docID, tf y las posiciones de los términos en los documentos
original = ["00000010"; "10000011"; "10000011"; "00000001"; "10000000"; "10000001"; 
"10000001"; "10000010"; "10000001"; "10000100"];
% Manualmente hacemos la separación de cada parte viendo si el bit es un 0 o un 1
v_byte(original)






     
