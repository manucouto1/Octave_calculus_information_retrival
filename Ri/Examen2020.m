
kd = @(x) floor(log2(x))
kr = @(x) x - 2^kd(x)
kdd = @(x) log2(kd(x) + 1)
kdr = @(x) (kd(x)+1) - 2^log2(x+1)