% d1: Tempus, reports, a, profit, but, revenue, is, down
% d2: Quorus, Global, narrows, quarter, loss, but, revenue, decreses, further
% q : revenue down
%fd -> Frecuencia del término en el documento
p = @(fd,fc,D,C,delta) (1-delta) * (fd/D) + delta * (fc/C)
C = 17
delta = 0.5
% Documento 1
f1r = 1
f1d = 1
D1 = 8
% Documento 2
f2r = 1
f2d = 0
D2 = 9

pd1 = p(f1r,f1r+f2r,D1,C, delta) * p(f1d,f1d+f2d,D1,C, delta) 
pd2 = p(f2r,f1r+f2r,D2,C, delta) * p(f2d,f1d+f2d,D2,C, delta) 