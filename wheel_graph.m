function A = wheel_graph(n)

A = star_graph(n);
A(2:n,2:n) = path_graph(n-1);