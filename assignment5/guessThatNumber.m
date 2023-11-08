function guessThatNumber()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%
%  Bugs Found (7) + 1 that was left off, but I added to correct the
%  programmers oversight.
%
%---------------------------------------------------------------
%       USAGE: guessThatNumber() - Assignment 5
%
%        NAME: John White-Singleton
%
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it, 
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github. There are between 9 - 12 bugs,
%              depending on how you correct them. 
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;    % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (buggy)\n\n', ...
'This program plays the game of Guess That Number in which you have to guess\n', ...
'a secret number.  After each guess you will be told whether your \n', ...
'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3): '); 

while level ~= beginner && level ~= moderate && level ~= advanced  %Bug fixed. || was input instead of &&. Users can now make a difficulty selection
fprintf('Sorry, that is not a valid level selection.\n')
level = input('Please re-enter a level of play (1-3): ');
end

% set highest secret number based on level selected

if level == beginner %Bug found. Was found while getting an "incorrect use of '=' error message."                      

highest = beginnerHighest;

elseif level == moderate

highest = moderateHighest;

else
highest = advancedHighest;    % Bug found. Case match error calling variable    
end

% randomly select secret number between 1 and highest for level of play

secretNumber = randi([1, highest]);  % Bug Found: Was unable to have a correct number be generated randomly, so this code is written to select a random number of the given set.
   

% initialize number of guesses and User_guess

numOfTries = 0;
userGuess = 0;

% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber


% get a valid guess (an integer from 1-Highest) from the user

fprintf('\nEnter a guess (1-%d): ', highest);
userGuess = input('');
while userGuess < 1 || userGuess > highest % Bug Found. >= would include the highest possible number and elimnate a possible solution.

fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);

userGuess = input('');

end % of guess validation loop

% add 1 to the number of guesses the user has made


numOfTries = numOfTries + 1;

% report whether the user's guess was high, low, or correct

if userGuess < secretNumber                         %
fprintf('Sorry, %d is too low.\n', userGuess);      % Bug Found: < and > signs were flipped and needed to be corrected.
elseif userGuess > secretNumber                     %
fprintf('Sorry, %d is too high.\n', userGuess);
elseif numOfTries == 1
fprintf('\nLucky You!  You got it on your first try!\n\n');
else
fprintf('\nCongratulations!  You correctly guessed the secret number, %d, and it only took you %d tries.  Your parents must be so proud! \n\n', ...
secretNumber, numOfTries);  % Bug Found. the program did not display the number of tries it took to guess the number.  added numOfTries for the second %d and it worked.

if numOfTries >= 1 && numOfTries < 4
    fprintf('Not bad, although there is room for improvement...\n');
elseif numOfTries >= 4 && numOfTries < 10
    fprintf('You should practice more...\n');        % Bug Found. The game did not berate the user for their lack of skill.  I made this possible.
elseif numOfTries >= 10 && numOfTries < 15
    fprintf('Maybe you should try Tic-Tac-Toe...\n');
else
    fprintf('Do NOT quit your day job...\n');
end

fprintf('')

fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n');

end  % of guessing while loop

end % Bug fixed by addeding the missing 'end' for the while loop

% end of game