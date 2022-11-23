function A = complete_graph(n)
% COMPLETE_GRAPH builds adjacency matrix of the complete graph K_n
% A = COMPLETE_GRAPH(N) given an input size N returns the NxN adjacency
% matrix A of the complete graph K_n, where all the nodes are connected to
% each other

A = ones(n) - eye(n);

% alternatively: 
% A = ones(n); 
% A = A - diag(diag(A));