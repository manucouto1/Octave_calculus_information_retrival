function result = n_euclidea(v) 
  result = 0;
  for i = 1: (size(v)(2))
   result += v(i)^2;
  endfor
  result = sqrt(result);
end