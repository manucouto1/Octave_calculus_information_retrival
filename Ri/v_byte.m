function result = v_byte (sv)
  aux="";
  count=1;
  for i = 1:(size(sv)(1))
    s2 = sv(i,2:8);
    aux = strcat(aux, s2);
    if(sv(i)(1) == "1")
      result(count) = bin2dec(aux);
      count++;
      aux="";
    endif
  endfor
endfunction