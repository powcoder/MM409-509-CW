function A  = star_graph(n)

A = zeros(n); 
A(1,2:n) = 1;
A = A+A';
