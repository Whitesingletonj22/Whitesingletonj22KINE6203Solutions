%%% Tic Tac Toe Game %%%
% The code plays the game Tic Tac Toe
% Written by: John

% Detailed Description Here
% What should user do to begin

%Tested using MatLab 2023a
%Tested on Macbook Pro

% Last updated: 9/7/23

%
% Welcome Message

disp('Welcome to Tic Tac Toe!')

userInput = input("Do you want to play a game? Y/N: (Please press Y or N followed by the Enter/Return key ", "s");

if (upper(userInput) == 'Y')
    % play game
    disp (' ')
    disp ('Lets Begin!')
    disp('Player 1: X, Player 2: O');

    gameboard = ["1" "2" "3"; "4" "5" "6"; "7" "8" "9"];
    disp(gameboard)

% Initialize a flag to check if the move is valid
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
    disp(gameboard);

else
    % quit game
    disp ('Ill be here if you change your mind')
end

 

   