function [s1,s2] = mystery_function(n)
s1 = 0; 
s2 = 0;
for i = 1:n % cycle over all numbers from 1 to n
    if mod(n,2) == 0 % if n is even
        s1 = s1 + i; % add i to s1
    else             % otherwise
    s2 = s2 + i;     % add i to s2
    end
end
end

% This matrix will return s1 ~= 0 and s2 == 0 if n is even, and s1 == 0 and
% s2 ~= 0 if n is odd. 