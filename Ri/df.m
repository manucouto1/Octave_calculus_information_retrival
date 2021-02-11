% funcion term frequency
function result = df(dw,w)
  result = 0;
  for i = 1:(size(dw)(1))
    if(dw(i,w)>0)
      result += 1;
    endif
  endfor
end