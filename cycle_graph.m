function A = cycle_graph(n)
% CYCLE_GRAPH adjacency matrix of the cycle graph C_n
% A = CYCLE_GRAPH(N) returns the NxN adjacency matrix A of the cylce graph
% C_N

A = diag(ones(n-1,1),1) + diag(ones(n-1,1),-1);
A(1,end)= 1; A(end,1) = 1;