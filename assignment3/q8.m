function q8(a, b)
    % Take your input values and find the lower and higher of the two
    % inputs
    lowerNum = min(a, b);
    higherNum = max(a, b);

    % Display the numbers from lower number until it reaches the higher
    % number
    for i = lowerNum:higherNum % creates a loop where i is used to represent the start of the loop given the lower number, and repeat the process of adding 1 to itself until it reaches the max number.
        disp(i);
    end
end
