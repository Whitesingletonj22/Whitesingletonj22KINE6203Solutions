function isValid = tri(array)
    % Check if the values can form a valid triangle
    if numel(array) ~= 3
        error('Input must be an array of three values.');
    end
    
    a = array(1);
    b = array(2);
    c = array(3);
    
    if a + b > c && a + c > b && b + c > a
        isValid = true;
    else
        isValid = false;
    end
end
