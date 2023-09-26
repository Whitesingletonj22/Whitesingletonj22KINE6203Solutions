function [playerOutput]  = chooseFirstPlayer()
    playerChoice = input('Do you want to go 1st, 2nd, or should it be random? (1st/2nd/random): ', 's');
    
    if strcmpi(playerChoice, '1st')
        disp('You will go first.')
        playerOutput = 'You';
    elseif strcmpi(playerChoice, '2nd')
        disp('You will go second.')
        playerOutput = 'Computer';
    elseif strcmpi(playerChoice, 'random')
        firstPlayer = {'You', 'Computer'};
        selectedPlayer = randsample(firstPlayer, 1);
        disp([selectedPlayer{1}, ' will go first.']);
        playerOutput = selectedPlayer{1};
    else
        disp('Invalid input. Please enter ''1st'', ''2nd'', or ''random''.')
        chooseFirstPlayer();
    end
end
