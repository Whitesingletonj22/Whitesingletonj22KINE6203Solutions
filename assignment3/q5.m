function goodTri = q5(sides)
    % Ensure there are exactly 3 parts to the element, otherwise display an
    % error to correct the number of elements.
    if numel(sides) ~= 3
        disp('Triangles must have exactly 3 sides.');
    end
    
    % goodTri is checking every aspect of the triangle to make sure that
    % every combination of the "sides" results in a valid triangle.
    goodTri = (sides(1) + sides(2) > sides(3)) &&  (sides(1) + sides(3) > sides(2)) && (sides(2) + sides(3) > sides(1));
end

%%% To run this function call it using sides, and set the value to the 3
%%% lengths of the triangle you choose to test. Example...(sides = [3, 4, 5])
%%%  Then follow this with the isValid = q5(sides) to determine if the
%%%  triangle is valid.  if it is a valid triangle it will result with a
%%%  logical value of 1.