function playTicTacToeWithDarthVaderInspiredTaunt()
    board = zeros(3, 3);  % Initialize an empty 3x3 board

    disp('Tic Tac Toe Game!');
    disp('Player 1: X');
    disp('Player 2 (Darth Vader): O');

    currentPlayer = 1;  % Player 1 starts the game

    while true
        displayBoard(board);

        if currentPlayer == 1
            fprintf('Player %d, enter your move (row [1-3], column [1-3]): ', currentPlayer);
            row = input('Row: ');
            col = input('Column: ');

            if isValidMove(board, row, col)
                board(row, col) = currentPlayer;
            else
                disp('Invalid move. Try again.');
                continue;
            end
        else
            disp('Darth Vader is making a move...');
            [row, col, taunt] = getComputerMoveWithDarthVaderInspiredTaunt();
            board(row, col) = currentPlayer;
            disp(['Darth Vader says: "', taunt, '"']);
        end

        if checkWin(board, currentPlayer)
            displayBoard(board);
            if currentPlayer == 1
                disp('Player 1 wins!');
            else
                disp('Darth Vader wins!');
            end
            break;
        elseif all(board(:) ~= 0)
            displayBoard(board);
            disp('It''s a draw!');
            break;
        end

        currentPlayer = 3 - currentPlayer;  % Switch player
    end
end

function [row, col, taunt] = getComputerMoveWithDarthVaderInspiredTaunt()
    [row, col] = getRandomMove(board);
    
    taunts = {
        'Your efforts are futile, young one.',
        'I find your lack of strategy disturbing.',
        'The Dark Side guides my moves to victory.',
        'Your destiny is to lose this game.'
    };
    
    randomIndex = randi(length(taunts));
    taunt = taunts{randomIndex};
end

% Rest of the functions remain unchanged...

% Call the playTicTacToeWithDarthVaderInspiredTaunt function to play the game with Darth Vader-inspired taunting computer.
playTicTacToeWithDarthVaderInspiredTaunt();
