function nextPlayer = switchPlayer(currentPlayer)
    if strcmp(currentPlayer, 'You')
        nextPlayer = {'Computer'};
    else
        nextPlayer = {'You'};
    end
end
