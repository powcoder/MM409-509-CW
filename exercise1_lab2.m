function p = exercise1_lab2(n)
% The task was: Write a function that takes a number n as input and 
% returns another number which equals: 0, if the input is larger than 10 
% but smaller than 15; 12, if the input is smaller than 10; n, otherwise. 

p = n; % set p to n (the "otherwise" condition)

if n > 10 && n<15 % first check: if 10<n<15, then
    p = 0;        % set p to 0
else              % otherwise, 
    if n<10       % if n<10
        p = 12;   % set p to 12
    end
end % if none of the conditions 10<n<15 and n<10 is satisfied, then p   
    % remains set to n, and nothing else needs done

end


