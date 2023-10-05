function [textOut] = q3(num1,num2)
% This is the third question in assignment 3.
%   calling function q3 followed by 2 inputs will determine if the sum of
%   the numbers is even or odd.  If the value is even the program will
%   display "Woo" and if the value is odd the program will display "Hah".
value1 = num1 + num2

if (rem(value1,2)==0)
    textOut = 'Woo'
else 
    textOut = 'Hah'
end

end
