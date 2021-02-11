clear; close all;

%crear vecores y matrices
z = zeros(1,20);
m = zeros(20);

z = 1:2:40;
z1 = [1 2 3 4 5 6 7 8 9];

%Asignar valores concretos
m(1,1) = 40;
m1 = [1 2; 3 4];


%Extraer valores de vectores y matrices
z(20)
z1(1)

m(1,1)
m1(1,2)

%Asignar un valor a toda una columna
m(1:20, 1) = 6;

m(1,1)

%Bucles No son recomendables 
for k = 1:10 
  z(k) = k;
end;