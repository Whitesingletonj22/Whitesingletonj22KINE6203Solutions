function [strLength, firstChar, lastChar] = q9(inputStr)
    strLength = length(inputStr);
    firstChar = inputStr(1);
    lastChar = inputStr(end);
end

% to call this function you will need to use multiple lines of commands to
% ensure the function pulls out every aspect of the string you are looking
% for.  here is an example of how to call the function with "XVALUE"
% representing the word you are wanting to have the function evaluate and
% return the length, first and last character of.

% [inputLength, firstCharacter, lastCharacter] = q9('XVALUE');
% disp(inputLength);
% disp(firstCharacter);
% disp(lastCharacter);
