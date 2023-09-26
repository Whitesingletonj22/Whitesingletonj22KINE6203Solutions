disp('Welcome to Tic Tac Toe!')

userInput = input('Do you want to play a game? Y/N: ', 's');

if upper(userInput) == 'Y'
    disp(' ')
    disp('Let''s Begin!')
    disp('Player 1: X, Player 2: O');
    
    gameboard = reshape(char('1':'9'), 3, 3);
    disp('Initial Board:');
    disp(gameboard);
    
    playerWin = false;
    computerWin = false;
    
    while true
        % Player's turn
        move = input('Player 1, enter a number (1-9) to mark your square: ');
        gameboard = updateBoard(gameboard, move, 'X');
        disp('Updated Board:');
        disp(gameboard);

        % Check for a win or draw after player's move
        [playerWin, drawGame] = checkWinDraw(gameboard);
        if any (playerWin) || any (drawGame)
            break;  % End the game if there's a winner or draw
        end

        % Computer's turn
        disp('Computer''s turn:');

        % Generate a random move for the computer
        availableMoves = find(~cellfun(@isempty, gameboard));
        computerMoveIndex = randi(length(availableMoves));
        computerMove = str2double(gameboard{availableMoves(computerMoveIndex)});
        gameboard{availableMoves(computerMoveIndex)} = 'O';

        % Display the updated board after computer's move
        disp('Updated Board after computer''s move:');
        disp(cell2mat(gameboard)); % Display as a matrix for clarity

        % Check for a win or draw after computer's move
        [computerWin, drawGame] = checkWinDraw(gameboard);
        if computerWin || drawGame
            break;  % End the game if there's a winner or draw
        end
       
    end

    if playerWin
        disp('Player 1 (X) wins!');
    elseif computerWin
        disp('Player 2 (O) wins!');
    else
        disp('It''s a draw!');
    end
else
    disp('I''ll be here if you change your mind')
end

function updatedBoard = updateBoard(board, move, symbol)
    [row, col] = find(board == move);
    if ~isempty(row) && board(row, col) == num2str(move)
        board(row, col) = symbol;
        updatedBoard = board;
    else
        disp('Invalid move. Please select an unmarked square.');
        updatedBoard = board;
    end
end

function move = generateRandomMove(board)
    availableMoves = find(board >= '1' & board <= '9');
    moveIndex = randi(length(availableMoves));
    move = board(availableMoves(moveIndex));
end

function [isWin, isDraw] = checkWinDraw(board)
    isWin = checkWin(board, 'X') || checkWin(board, 'O');
    isDraw = all(board >= 'X' & board <= 'O');
end

function isWin = checkWin(board, playerSymbol)
    rows = all(board == playerSymbol, 2);
    cols = all(board == playerSymbol, 1);
    diag1 = all(diag(board) == playerSymbol);
    diag2 = all(diag(flipud(board)) == playerSymbol);
    isWin = any(rows) || any(cols) || diag1 || diag2;
end
