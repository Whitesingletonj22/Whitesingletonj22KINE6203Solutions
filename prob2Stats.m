function [sum, difference, product, max] = prob2Stats(num1, num2)
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here
sum = num1 + num2;

if (num1 >= num2)
      difference = (num1 - num2);
else 
    difference = (num2 - num1);
end
product = (num1 * num2)
if (num1 > num2)
        max = num1
elseif (num2 > num1)
    max = num2
else max = num1
end