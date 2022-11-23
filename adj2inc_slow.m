function B = adj2inc_slow(A)
% ADJ2INC_SLOW builds the incidence matrix 
% B = ADJ2INC_SLOW(A) builds the incidence matrix of the graph starting from the
% adjacency matrix using one too many for loops. 
if ~isempty(find(diag(A),1))
    A = A - diag(diag(A));
    disp('Loops removed from the graph')
end

if isequal(A,A') % if the graph is symmetric work only in the upper triangular part
    A = triu(A);
end

m = nnz(A); % find number of undirected edges
n = size(A,1); % find number of nodes 
B = zeros(m,n); % pre-allocate space for B
edge = 1; % set a counter 

for i = 1:n % browse by rows 
    for j = 1:n % browse by columns
        if A(i,j) == 1 % if we find an edge 
            B(edge,i) = 1; % store the start node in the corresponding row
            B(edge,j) = -1; % store the end node in the same row 
            edge = edge+1; % update the counter - at the next step we will 
                           % record the new start/end nodes in the new line
        end
    end
end

