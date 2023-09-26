function displayGameBoard(board)
    disp('Current game board:');
    for i = 1:size(board, 1)
        disp(board(i, :));
    end
end
