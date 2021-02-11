%Computa la F beta con firma F(beta, precision, recall)
function result = F (beta, p, r)
 result = (beta^2 + 1) * p * r / (r + beta^2 * p);
end