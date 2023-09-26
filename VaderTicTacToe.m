disp('Welcome to Tic Tac Toe!')

userInput = input("Do you want to play a game? Y/N: (Please press Y or N followed by the Enter/Return key ", "s");

if (upper(userInput) == 'Y')
    % Play game
    disp(' ')
    disp('Let''s Begin!')
    disp('Player 1: X, Player 2: O');

    % Initialize the board as a cell array of characters
    gameboard = { '1', '2', '3'; '4', '5', '6'; '7', '8', '9' };
    disp('Initial Board:');
    disp(cell2mat(gameboard)); % Display as a matrix for clarity

    while true
        % Player's turn
        isValidMove = false;
        while ~isValidMove
            fprintf('Player 1, enter a number (1-9) to mark your square: ');
            move = input(' ');

            % Check if the move is valid
            [row, col] = find(strcmp(gameboard, num2str(move)));
            if ~isempty(row) && strcmp(gameboard{row(1), col(1)}, num2str(move))
                gameboard{row(1), col(1)} = 'X';
                isValidMove = true;
            else
                disp('Invalid move. Please select an unmarked square.');
            end
        end

        % Display the updated board
        disp('Updated Board:');
        disp(cell2mat(gameboard)); % Display as a matrix for clarity

        % Check for a win or draw after player's move
        if checkWinDraw(gameboard)
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
        if checkWinDraw(gameboard)
            break;  % End the game if there's a winner or draw
        end

        % Randomly select a Darth Vader taunt and display it
        computerTaunts = {
            'I find your lack of strategy disturbing.'
            'The Force is strong with this one... but not strong enough.'
            'Impressive. Most impressive. But you are not a Jedi yet.'
            'You underestimate the power of the dark side.'
            'Your feeble skills are no match for the power of the Sith.'
        };
        randomIndex = randi(length(computerTaunts));
        disp('Computer: ');
        disp(computerTaunts{randomIndex});
    end
else
    % Quit game
    disp('I''ll be here if you change your mind')
end

function isWin = checkWinDraw(gameboard)
    % Check for a win or a draw
    disp('Checking for win or draw...');

    % Convert to matrix for easier win/draw checking
    matBoard = reshape(cell2mat(gameboard), 3, 3);

    % Check rows, columns, and diagonals for a win
    isWin = checkWin(matBoard, 'X') || checkWin(matBoard', 'X') || ...
          checkWin(diag(matBoard), 'X') || checkWin(diag(flipud(matBoard)), 'X');

    if isWin
        disp('Player 1 (X) wins!');
        return;
    end


    disp('No winner yet.');
    isWin = false;  % No winner yet
end

function isWin = checkWin(row, playerSymbol)
    isWin = all(strcmp(row, playerSymbol));
end
