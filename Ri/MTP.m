function result = MTP (m)
  for i = 1:(size(m)(1))
    count(i)=0;
    for j = 1:(size(m)(2))
      count(i)+=m(i,j);
    endfor
  endfor
  for i = 1:(size(m)(1))
    for j = 1:(size(m)(1))
      result(i,j) = m(i,j)/count(i);
    endfor
  endfor
end