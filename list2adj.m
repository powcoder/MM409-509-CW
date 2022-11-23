function A = list2adj(L,n)
% LIST2ADJ converts adjacency list into adjacency matrix
% A = LIST2ADJ(L,N) builds an order N adjacency matrix A from the
% corresponding adjacency list.

A = sparse(L(:,1),L(:,2),L(:,3),n,n);
% A = full(A);