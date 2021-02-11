% Funcion que aproxima la integral de una función aplicando la formula del 
% Trapecio compuesto, recive por parámetros la altura del trapecio junto cond
% La formula a calcular la integral y el vector de puntos de la forma
% f_trap = @(h,f,v) h/2*(f(v(1)) + 2*(f(v(2:length(Vx)-1))) + f(v(length(v))));

function f_trap (h, f, v)
  return h/2*(f(v(1)) + 2*(sum(f(v(2:length(v)-1)))) + f(v(length(v))));
endfunction
