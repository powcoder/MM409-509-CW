function A = path_graph(n)
% PATH_GRAPH adjacency matrix of the path graph P_{n-1}
% A = PATH_GRAPH(N) takes in input a size N and returns the NxN
% adjacency matrix A of the path graph P_{n-1}

A = diag(ones(n-1,1),1) + diag(ones(n-1,1),-1);