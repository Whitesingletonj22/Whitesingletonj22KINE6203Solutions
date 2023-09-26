function result = checkWin(board)
    result = 0;  % 0: No result, 1: Player wins, 2: Draw
    
    % Check rows, columns, and diagonals for a win
    for i = 1:3
        if all(board(i, :) == 'X') || all(board(:, i) == 'X') || ...
                all(diag(board) == 'X') || all(diag(flipud(board)) == 'X')
            result = 1;
            return;
        elseif all(board(i, :) == 'O') || all(board(:, i) == 'O') || ...
                all(diag(board) == 'O') || all(diag(flipud(board)) == 'O')
            result = 1;
            return;
        end
    end
    
    % Check for a draw
    if all(board(:) ~= '1' & board(:) ~= '2' & board(:) ~= '3' & ...
            board(:) ~= '4' & board(:) ~= '5' & board(:) ~= '6' & ...
            board(:) ~= '7' & board(:) ~= '8' & board(:) ~= '9')
        result = 2;
    end
end
