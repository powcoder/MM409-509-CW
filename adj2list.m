function [L,n] = adj2list(A)
% ADJ2LIST converts adjacency matrix into adjacency list
% [L,N] = ADJ2LIST(A) converts an adjacency matrix A of order N 
% into the corresponding adjacency list L.

n = size(A,1);
L = zeros(nnz(A),3);

[L(:,1),L(:,2),L(:,3)] = find(A);


% If you want to obtain the same ordering as in the example in the lab:
% [~,r] = sort(L(:,1),'ascend');
% L = L(r,:);