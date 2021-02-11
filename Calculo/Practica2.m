%Practica 2
clear all
pkg load symbolic

syms x

% Limite que si existe 
limit(tan(x), x, sym('pi/4'))

% Limite que no existe
limit(tan(x), x, sym('pi/2')) %Si no se le indica la lateralidad va por la derecha por defecto

%Demostración de que no tiene limite
limit(tan(x), x, sym('pi/2'), 'left') % oo
limit(tan(x), x, sym('pi/2'), 'right')  % -oo
