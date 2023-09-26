function tic_tac_toe_game_with_computer()
    board = zeros(3, 3);  % Initialize the game board
    
    disp('Welcome to Tic-Tac-Toe!');
    disp('Player 1: X, Player 2: O');
    
    while true
        disp(board);  % Display the current board
        
        fprintf('Player 1, enter row (1-3) and column (1-3) [row col]: ');
        move = input('');
        
        row = move(1);
        col = move(2);
        
        % Check if the selected cell is empty
        if board(row, col) == 0
            board(row, col) = 1;  % Player 1 is always X
        else
            disp('Cell already occupied. Try again.');
            continue;
        end
        
        % Check for a win
        if check_win(board, 1)
            disp(board);
            fprintf('Player 1 wins!\n');
            break;
        end
        
        % Check for a draw
        if all(board(:) ~= 0)
            disp(board);
            disp('It''s a draw!');
            break;
        end
        
        % Computer's turn (Player 2)
        fprintf('Player 2 (computer) is making a move...\n');
        [row, col] = computer_move(board);
        board(row, col) = 2;  % Player 2 is always O
        
        % Check for a win
        if check_win(board, 2)
            disp(board);
            fprintf('Player 2 (computer) wins!\n');
            break;
        end
    end
end

function [row, col] = computer_move(board)
    % Generate a random move for the computer
    empty_cells = find(board == 0);
    random_index = randi(length(empty_cells));
    [row, col] = ind2sub(size(board), empty_cells(random_index));
end

function is_win = check_win(board, player)
    % Check rows, columns, and diagonals for a win
    is_win = any(all(board == player, 1)) || ...
             any(all(board == player, 2)) || ...
             all(diag(board) == player) || ...
             all(diag(flipud(board)) == player);
end
