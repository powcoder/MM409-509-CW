function B = adj2inc_better(A)
% ADJ2INC builds the incidence matrix 
% B = ADJ2INC(A) builds the incidence matrix of the graph starting from the
% adjacency matrix.
if ~isempty(find(diag(A),1))
    A = A - diag(diag(A));
    disp('Loops removed from the graph')
end

if isequal(A,A') % if the graph is symmetric work only in the upper triangular part
    A = triu(A);
end

m = nnz(A);
n = size(A,1);
B = zeros(m,n);

[I,J] = find(A);

for i = 1:length(I)
    B(i,I(i)) = 1;
    B(i,J(i)) = -1;
end