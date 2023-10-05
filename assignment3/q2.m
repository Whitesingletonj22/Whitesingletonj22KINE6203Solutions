function [sum, difference, product, max] = q2(num1, num2)
% This is the second question of assignment 3
%   Calling the function q2 along with two numerical inputs will provide
%   the sum, difference, product, and max value of the numbers.
sum = num1 + num2

if (num1 > num2)
    difference = (num1 - num2)
else 
    difference = num2 - num1
end

product = (num1 * num2)
if (num1 > num2)
        max = num1
elseif (num2 > num1)
    max = num2
else max = num1


end