function playTicTacToeGameFinal()
    % Initialize the game board
    board = ['1', '2', '3'; '4', '5', '6'; '7', '8', '9'];
    
    % Randomly select who goes first
    firstPlayer = {'You', 'Computer'};
    currentPlayer = randsample(firstPlayer, 1);
    disp([currentPlayer{1}, ' will go first.']);

    % Display the initial game board
    displayGameBoard(board);
    
    % Main game loop
    while true
        % Player's turn
        if strcmpi(currentPlayer{1}, 'You')
            disp('Your turn!')
            disp('Select a spot (1-9): ')
            spot = input('', 's');
            [row, col] = getSpotLocation(str2double(spot));
            
            % Check if the spot is valid and available
            if ~isempty(row) && board(row, col) == spot
                board(row, col) = 'X';
            else
                disp('Invalid move. Try again.')
                continue;
            end
        else
            disp('Computer''s turn!')
            spot = generateComputerMove(board);
            [row, col] = getSpotLocation(spot);
            board(row, col) = 'O';
        end
        
        % Display the updated game board
        displayGameBoard(board);
        
        % Check for a win or a draw
        result = checkWin(board);
        if result == 1
            disp('Congratulations! You win.')
            break;
        elseif result == 2
            disp('It''s a draw.')
            break;
        end
        
        % Switch player for the next turn
        currentPlayer = switchPlayer(currentPlayer);
    end
end
