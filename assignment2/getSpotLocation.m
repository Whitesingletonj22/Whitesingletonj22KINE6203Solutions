function [row, col] = getSpotLocation(spot)
    row = ceil(spot / 3);
    col = mod(spot - 1, 3) + 1;
end
