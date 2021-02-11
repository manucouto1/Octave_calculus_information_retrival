function nr (f, x0, n)
  syms x; df = diff(f);
  iter = sym([x0, zeros(1,n)]);
  for k = 1:n +1
    iter(k + 1) = iter(k) - subs(f, x, iter(k))/subs(df, x, iter(k));
  endfor
  disp('las aproximaciónes son: ')
  vpa(iter(2:n+1), 6)
  iteracion_buscada = vpa(iter(n+1),6)
endfunction