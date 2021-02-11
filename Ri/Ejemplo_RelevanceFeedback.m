%EJERCICIO Relevance feedback
qr = [0, 2, 2, 0, 1, 2, 1, 0, 0, 0]
% Query con un ranquing de 5 relevantes
%Calcular MAP corte 10 -> Se pone 5 porque el numero de relevantes para esa query es 5
MAP(qr, 5)
%Calcule el F con beta 1
%mirando el resultado de MAP podemos ver que con corte 10 tenemos un recall de 1.0
% y una precisión de 0.5
F(1,0.5,1)
% NDCG con relevancia gradual 
% Pimero se computa el DCG@10
dcg = DCG(qr)
% Ahora definimos como sería el resultado ideal de la Query
q_ideal=[2,2,2,1,1,0,0,0,0,0]
%computamos su DCG
dcg_i = DCG(q_ideal)
%dividimos los DCG para obtener el NDCG
dcg / dcg_i



