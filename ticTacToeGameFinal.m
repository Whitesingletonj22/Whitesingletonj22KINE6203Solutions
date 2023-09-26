function ticTacToeGameFinal()
    disp('Welcome to Tic Tac Toe!')
    playGame = input('Would you like to play? (yes/no): ', 's');
    
    if strcmpi(playGame, 'yes')
        disp('Great! Let''s get started.')
        chooseFirstPlayer();
    elseif strcmpi(playGame, 'no')
        disp('Alright, maybe another time. Goodbye!')
    else
        disp('Invalid input. Please enter ''yes'' or ''no''.')
        ticTacToeGameFinal();
    end
end
