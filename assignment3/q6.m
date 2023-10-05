function isPrime = q6(num1)
    % Check if the input is less than 2 (not a prime number)
    if (num1) < 2
        isPrime = false;
        return;
    end
    
    
    % Check for divisibility from 2 to the square root of the input
    for i = 2:sqrt(num1)
        if rem(num1, i) == 0
            % If the mumber is divisible it is not a prime number
            isPrime = false;
             
            return;
        end
    end
    
    % If there are no divisors then we know the number is a prime number.
    isPrime = true;
end

