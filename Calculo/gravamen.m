%Función que calcula el gravamen correspondiente a una base liquidable
%Manuel Couto Pintos
%23/10/2019

function cantidad = gravamen(base)
 format bank
 cantidad =0
  cuota_integra = [497.25, 1548.90, 3850.79, 7768.09, 13344.59, 16713.57, 32280.42, 49670.42, 74170.42, 137920.42]
  base_liquidable = [3850, 8499, 17526, 30805, 45480, 53407, 88000, 125000, 175000, 300000]
  tipo_marginal = [0.225,0.255, 0.295, 0.38, 0.425, 0.45, 0.47, 0.49, 0.51, 0.52]
  
  f0 = @(base) base * 0.13;
  f1 = @(x,base) cuota_integra(x)+ (base - base_liquidable(x)) * tipo_marginal(x);
  
  if base < 3850
  cantidad = f0(base)
  else
    count = 1;
    while (cantidad == 0 && count <10)
      if (base <= base_liquidable(count))
        cantidad = f1(1,base);
        count
      endif
      count = count + 1;
    endwhile
   endif
  
endfunction
