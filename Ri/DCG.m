%Funcion que computa el DCG, firma DCG(Vector de query)
function res = DCG (v)
  res = 0;
  for i = 1:(size(v)(2))
    if (i<2)
      x(i) = v(i);
    else
      x(i) = v(i)/log2(i);
    endif
    res += x(i);
    dcg(i) = res;
  endfor
  x
  dcg
 end