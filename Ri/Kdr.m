function result = Kdr(n)
  result = ((Kd(n)+1) - 2^(floor(log2(Kd(n)+1))));
end