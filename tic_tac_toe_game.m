function tic_tac_toe_game()
    board = zeros(3, 3);  % Initialize the game board
    
    disp('Welcome to Tic-Tac-Toe!');
    disp('Player 1: X, Player 2: O');
    
    player = 1;  % Player 1 starts
    
    while true
        disp(board);  % Display the current board
        
        fprintf('Player %d, enter row (1-3) and column (1-3) [row col]: ', player);
        move = input('');
        
        row = move(1);
        col = move(2);
        
        % Check if the selected cell is empty
        if board(row, col) == 0
            board(row, col) = player;
        else
            disp('Cell already occupied. Try again.');
            continue;
        end
        
        % Check for a win
        if check_win(board, player)
            disp(board);
            fprintf('Player %d wins!\n', player);
            break;
        end
        
        % Check for a draw
        if all(board(:) ~= 0)
            disp(board);
            disp('It''s a draw!');
            break;
        end
        
        % Switch to the other player
        player = 3 - player;
    end
end

function is_win = check_win(board, player)
    % Check rows, columns, and diagonals for a win
    is_win = any(all(board == player, 1)) || ...
             any(all(board == player, 2)) || ...
             all(diag(board) == player) || ...
             all(diag(flipud(board)) == player);
end
