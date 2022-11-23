n = 5;
c = 0;

% -----------------
% complete_graph
% -----------------

A = complete_graph(n);
B = [0 1 1 1 1; 1 0 1 1 1; 1 1 0 1 1; 1 1 1 0 1; 1 1 1 1 0];


if ~isequal(B,A)
    disp('Double check complete_graph')
    c = c+1;
end

% -----------------
% path_graph
% -----------------

A = path_graph(n);
B = [ 0 1 0 0 0; 1 0 1 0 0; 0 1 0 1 0; 0 0 1 0 1; 0 0 0 1 0];

if ~isequal(B,A)
    disp('Double check path_graph')
    c = c+1;
end 

% -----------------
% cycle_graph
% -----------------

A = cycle_graph(n);
B = [ 0 1 0 0 1; 1 0 1 0 0; 0 1 0 1 0; 0 0 1 0 1; 1 0 0 1 0];

if ~isequal(B,A)
    disp('Double check cycle_graph')
    c = c+1;
end

% -----------------
%  adj2list
% -----------------

A = [ 0 1 1 0; 0 2 2 1; 3 1 0 0; 0 0 0 0];
n = size(A,1);
L = [3 1 3;1 2 1;2 2 2; 3 2 1;1 3 1; 2 3 2; 2 4 1];
 [L1,n1] = adj2list(A);
 if ~isequal(L1,L) || ~isequal(n,n1)
    disp('Double check adj2list - if you cannot find a mistake, come talk to me')
    c = c+1;
 end 
 
% -----------------
% list2adj
% -----------------

A1 = list2adj(L1,n1);
 if ~isequal(A,A1) 
    disp('Double check list2adj - if you cannot find a mistake, come talk to me')
    c = c+1;
 end 

fprintf('Checked all functions in TASK section.\n')
 
 
% ----------------------------------------------------------
if c>0
     fprintf('There are %d functions that need checked.\n\n',c)
else
    disp('WELL DONE! Everything works as it should be!')
end
% ----------------------------------------------------------

prompt = 'Have you coded the functions in the KEEP PRACTICING Section? Y/N: ';
str = input(prompt,'s');
if isempty(str)
    str = 'Y';
end

if strcmp(str,'Y')
	c = 0;
    n = 5;
	% -----------
	% star graph
	% -----------
	A = star_graph(n);
	B = [0 1 1 1 1; 
        1 0 0 0 0; 
        1 0 0 0 0; 
        1 0 0 0 0; 
        1 0 0 0 0];
	if ~isequal(B,A)
    		disp('Double check star_graph')
    		c = c+1;
    end
    
    % ------------
    % wheel graph
    % ------------
    A = wheel_graph(n);
    B = [0 1 1 1 1;
         1 0 1 0 0;
         1 1 0 1 0;
         1 0 1 0 1;
         1 0 0 1 0];
    if ~isequal(B,A)
    		disp('Double check wheel_graph')
    		c = c+1;
    end 
    % ----------------------------------------------------------
if c>0
     fprintf('There are %d functions that need checked.\n\n',c)
else
    disp('WELL DONE! Everything works as it should be!')
end
% ----------------------------------------------------------
end
	

