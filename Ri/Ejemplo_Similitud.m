%Language models
% EJERCICIO de df y idf
% En la matriz las filas representan los documentos y las columnas los términos
se = 3
aproxima = 3 
verano = 2
outono = 1
templado = 1
lluvioso = 1
% Se, aproxima, verano, outono, templado, lluvioso
vector_terms = [se, aproxima, verano, outono, templado, lluvioso]
%doc frequencys ->  tf en los documentos
d1 = [1, 1, 1, 0, 1, 0]
d2 = [1, 1, 1, 0, 0, 1]
d3 = [1, 1, 0, 1, 0, 0]
m = [d1;d2;d3]
m_x = m'
% La query = verano ,templado
% tf en la query
q = [0, 0, 1, 0, 1, 0]
% inverse doc frequency de los terminos
% computa el log10 del inverso de la frecuencia del termino en la colección de documentos
Nterminos = (size(m)(2));
idf_x = arrayfun(@(x) idflog10(m,x), 1:Nterminos)
% pesos de los terminos en la query
pesos_q = (idf_x .* q)

% raw tf
tf_r = m(1,:)
% raw tf * idflog10
tf_rx = (tf_r .* idf_x)
% D1 weights
D1 = tf_rx / n_euclidea(tf_rx)
% simetría q, D1
sum ((tf_rx / n_euclidea(tf_rx)) .*  pesos_q)

tf_r = m(2,:)
% raw tf * idflog10
tf_rx = (tf_r .* idf_x)
% D1 weights
D1 = tf_rx / n_euclidea(tf_rx)
% simetría q, D1
sum ((tf_rx / n_euclidea(tf_rx)) .*  pesos_q)

tf_r = m(3,:)
% raw tf * idflog10
tf_rx = (tf_r .* idf_x)
% D1 weights
D1 = tf_rx / n_euclidea(tf_rx)
% simetría q, D1
sum ((tf_rx / n_euclidea(tf_rx)) .*  pesos_q)

