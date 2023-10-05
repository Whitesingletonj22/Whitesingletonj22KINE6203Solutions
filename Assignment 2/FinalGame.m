

function ticTacToeGameFinal()
    disp('Welcome to Tic Tac Toe!')
    playTicTacToe = input('Would you like to play? (yes/no): ', 's');
    
    if strcmpi(playTicTacToe, 'yes')
        disp('Great! Let''s get started.')
        chooseFirstPlayer();
    elseif strcmpi(playTicTacToe, 'no')
        disp('Alright, maybe another time. Goodbye!')
    else
        disp('Invalid input. Please enter ''yes'' or ''no''.')
        chooseFirstPlayer();
        
    end
    playTicTacToe();
end


function playTicTacToe()
   
     % Ask the player if they want to go first, second, or random
    playerChoice = input('Do you want to go first, second, or should it be random? (1st/2nd/random): ', 's');
    
    if strcmpi(playerChoice, '1st')
        disp('You will go first.')
       playTicTacToe('You');
    elseif strcmpi(playerChoice, '2nd')
        disp('You will go second.')
       playTicTacToe('Computer');
    elseif strcmpi(playerChoice, 'random')
        firstPlayer = ('You', 'Computer');
        currentPlayer = randsample(firstPlayer, 1);
        disp([currentPlayer{1}, ' will go first.']);
        playTicTacToe(currentPlayer{1});
    else
        disp('Invalid input. Please enter ''1st'', ''2nd'', or ''random''.')
    end
end

function playTicTacToe(startingPlayer)
   % Initialize the game board and available spots
    board = ['1', '2', '3'; '4', '5', '6'; '7', '8', '9'];
    availableSpots = ['1', '2', '3', '4', '5', '6', '7', '8', '9'];
    
    % Main game loop
    currentPlayer = startingPlayer;
    while true
        % Display the current game board
        disp('Current game board:');
        disp(board);
        
        disp([currentPlayer, '''s turn!']);
        
        if strcmpi(currentPlayer, 'You')
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
        
        % Check for a win or a draw
        result = checkWin(board);
        if result == 1
            disp('Current game board:');
            disp(board);
            disp(['Congratulations! ', currentPlayer, ' win.'])
            break;
        elseif result == 2
            disp('Current game board:');
            disp(board);
            disp('It''s a draw.')
            break;
        end
        
        % Switch player for the next turn
        currentPlayer = switchPlayer(currentPlayer);
    end
     % Display the final game board after the game ends
    disp(board);
end
    
  

function [row, col] = getSpotLocation(spot)
    row = ceil(spot / 3);
    col = mod(spot - 1, 3) + 1;
end

function spot = generateComputerMove(board)
    availableSpots = find(board >= '1' & board <= '9');
    spot = availableSpots(randi(length(availableSpots)));
end

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

function nextPlayer = switchPlayer(currentPlayer)
    if strcmpi(currentPlayer{1}, 'You')
        nextPlayer = ('Computer');
    else
        nextPlayer = ('You');
    end
end




