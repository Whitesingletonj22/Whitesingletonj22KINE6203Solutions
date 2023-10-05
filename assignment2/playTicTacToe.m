%%% Tic Tac Toe Game %%%
% The code plays the game Tic Tac Toe
% Written by: John

% This version of Tic-Tac-Toe
% 
% To begin, please type ticTacToeJohn into the command window.  I hope you
% enjoy this game.

%Tested using MatLab 2023a
%Tested on Macbook Pro

% Last updated: 9/7/23

%
% Welcome Message

function playTicTacToe(currentPlayer)
    disp('Welcome to Tic Tac Toe!')
    
    % Initialize the game board and available spots
    board = ['1', '2', '3'; '4', '5', '6'; '7', '8', '9'];
    availableSpots = ['1', '2', '3', '4', '5', '6', '7', '8', '9'];
    
  
    
    % Main game loop
    while true
        % Display the current game board
        displayGameBoard(board);
        
        %disp(currentPlayer, '''s turn!');
        
        if strcmp(currentPlayer, 'You') % I was unaware of the strcmp command and had to use a mixture of google searches and the chatGPT engine to determine how to get this section to work correctly.
            disp('Select a spot (1-9): ')
            spot = input('', 's');
            [row, col] = getSpotLocation(str2double(spot));
            
            % Check if the spot is valid and available
            if ~isempty(row) && ismember(spot, availableSpots)
                board(row, col) = 'X';
                availableSpots = setdiff(availableSpots, spot);
            else
                disp('Invalid move. Try again.')
                continue;
            end
        else
            disp('Computer''s turn!')
            %spot = generateComputerMove(availableSpots);
            spot = availableSpots(randi(length(availableSpots)));
            [row, col] = getSpotLocation(str2double(spot));
            disp(row)
            disp(col)
            board(row, col) = 'O';
            %availableSpots(availableSpots == spot) = [];
            availableSpots = setdiff(availableSpots, spot); % setdiff was a command that I was not aware of its function till Professor Rider showed me how it worked.  I now understand that it takens the choices inputs out of the available selctions of a given number set.
        end
        
        % Check for a win or a draw
        result = checkWin(board);  % Pulls in the checkWin function to determine if there is a legal win based on play or computer inputs.
        if result == 1
            displayGameBoard(board);
            disp(['Congratulations! ', currentPlayer, ' win.'])
            break;
        elseif result == 2
            displayGameBoard(board);
            disp('It''s a draw.')
            break;
        end
        
        % Switch player for the next turn
        currentPlayer = switchPlayer(currentPlayer);
    end
    
    % Display the final game board after the game ends
    displayGameBoard(board);

    ticTacToeReplay()
end


