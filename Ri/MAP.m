% Funcion que computa el MAP de una query con relevancia binaria y un número de
% relevantes de una colección con la firma MAP(vector query, nRelevantes)

function map = MAP(v, r)
  precN = 0;
  recallN = 0;
  map = 0;
  for i = 1:(size(v)(2))
    if(v(i)>0)
      precN+=1;
      recallN+=1;
    endif
    prec(i) = precN/i;
    recall(i) = recallN / r;
    if(v(i)>0)
      map+=prec(i);
    endif
  endfor
  prec
  recall
  map = map/r;
end