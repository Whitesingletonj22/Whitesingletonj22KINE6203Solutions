function spot = generateComputerMove(board)
    availableSpots = find(board >= '1' & board <= '9');
    spot = availableSpots(randi(length(availableSpots)));
end
