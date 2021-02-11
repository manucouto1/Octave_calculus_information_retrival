syms a b c x; 
solve(a*x^2 +b*x + c == 0, x)
solve(a*x^2 + b*x + c == 0, a)
syms x y;
[x,y] = solve(2*x + 5*y == 0, x + y == 3)
y = (x^2 - 1)/(2*(x + 4)^3); 
[num, den] = numden(y)
solve(den)
expand(den)
factor(y)
