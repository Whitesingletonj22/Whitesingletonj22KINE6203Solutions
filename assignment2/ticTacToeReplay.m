disp('Welcome to Tic Tac Toe!')
playTicTacToeIn = input('Would you like to play again? (yes/no): ', 's');

if strcmpi(playTicTacToeIn, 'yes')
    disp('Great! Let''s get started.')
    startingPlayer = chooseFirstPlayer();
elseif strcmpi(playTicTacToeIn, 'no')
    disp('Alright, maybe another time. Goodbye!')
else
    disp('Invalid input. Please enter ''yes'' or ''no''.')
    startingPlayer = chooseFirstPlayer();
end

playTicTacToe(startingPlayer)