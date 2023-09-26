%Lauren Crawford 
%Tic Tac Toe Game 10/06/2022 
%this code will execute a game of tic tac toe from imputs from player 1(you) 
%welcome message
disp('Welcome to Tic Tac Toe')
% ask the user if they want to play
doYouWantToPlay = input('Do you want to play a game of Tic Tac Toe? (please type yes or no)','s');%asking they player if they would like to play a game%
board = ["1","2","3" ;"4","5","6";"7","8","9"];%creating the game board

for peopleMoving = [1 5]%for the moves 1 through 5%
    while doYouWantToPlay%while asking the question do you want to play tic tac toe 
        if doYouWantToPlay == "no"%conditional for when they say no
            disp("ok, you can play again at another time :(")
            break%break out of this loop 


        elseif doYouWantToPlay == "yes"%conditional for when they say yes to do you want to play 
            %play the tic tac toe game
            board = ["1","2","3" ;"4","5","6";"7","8","9"];%board created
            disp(board)%displaying the game board
            answer = "yes";
            %for peopleMoving = 1:9
            while(answer=="yes")
                while(doYouWantToPlay == "yes")
                    %disp(board)
                    %ask user for move
                    checkForLegalMove = true;%control variable 
                    while(checkForLegalMove)
                        userMove = input('Where do you want to move on the game board input numbers 1-9?','s');%asking they user where on the game board would they like to go%
                        if (userMove == '9' && board(3,3)=='9')%moving in the 9 spot
                            board(3,3) = "X"; % if you select this spot it replaces they number wit hthe letter X
                            checkForLegalMove = false;%checking to make sure the spot is not already taken 
                        elseif(userMove == '8' && board(3,2)=='8')
                            board(3,2)= "X";
                            checkForLegalMove = false;
                        elseif(userMove == '7' && board(3,1)=='7')
                            board(3,1) = "X";
                            checkForLegalMove = false;
                        elseif (userMove == '6' && board(2,3)=='6')
                            board(2,3)= "X";
                            checkForLegalMove = false;
                        elseif (userMove == '5' && board(2,2)=='5')
                            board(2,2) = "X";
                            checkForLegalMove = false;
                        elseif (userMove == '4' && board(2,1)=='4')
                            board (2,1) = "X";
                            checkForLegalMove = false;
                        elseif (userMove == '3' && board(1,3)=='3')
                            board(1,3) = "X";
                            checkForLegalMove = false;
                        elseif (userMove == '2' && board(1,2)=='2')
                            board(1,2) = "X";
                            checkForLegalMove = false;
                        elseif (userMove == '1' && board(1,1)=='1')
                            board(1,1) = "X";
                            checkForLegalMove = false;
                        elseif(userMove ~= '1' && userMove ~='2' && userMove ~='4' && userMove ~= '5' && userMove ~= '6' && userMove ~= '7' && userMove ~= '8' && userMove ~= '9')
                             disp("invalid move, please pick and available number")
                             disp(board)
                        end

                    end

                    if(board(1,1) == 'X' && board(2,1) == 'X' && board(3,1) == 'X')%checking for winning moves, if not met go to next check move 
                        disp('you win!')%once above statement is met display you win
                        break%break from loop 
                    elseif (board(1,2) == 'X' && board(2,2) == 'X' && board(3,2) == 'X')
                        disp('you win!')
                        break
                    elseif (board(1,3) == 'X' && board(2,3) == 'X' && board(3,3) == 'X')
                        disp('you win!')
                        break
                    elseif (board(1,1) == 'X' && board(1,2) == 'X' && board(1,3) == 'X')
                        disp('you win!')
                        break
                    elseif (board(2,1) == 'X' && board(2,2) == 'X' && board(2,3) == 'X')
                        disp('you win!')
                        break
                    elseif (board(3,1) == 'X' && board(3,2) == 'X' && board(3,3) == 'X')
                        disp('you win!')
                        break
                    elseif (board(1,1) == 'X' && board(2,2) == 'X' && board(3,3) == 'X')
                        disp('you win!')
                        break
                    elseif (board(3,1) == 'X' && board(2,2) == 'X' && board(1,3) == 'X')
                        disp('you win!')
                        break
                    elseif (board(1,1) ~= '1' && board(1,2) ~= '2' && board(1,3) ~= '3' && board(2,1) ~= '4' && board(2,2) ~= '5' && board(2,3) ~= '6' && board (3,1) ~= '7' && board(3,2) ~= '8' && board(3,3) ~='9')
                        disp("game tied")%game tied condition where whn none of the spots are available then display game tied because there is no place else to go 
                        break
                    end

                    checkForLegalMove = true;
                    while(checkForLegalMove)%computer moves
                        computerMove = randi([1 9]);%computer moves in a random spot 
                        if(computerMove == 9) && (board(3,3)=="9")
                            board(3,3) = "O"; %replace the number on the game board with an O if the above statement is true 
                            checkForLegalMove = false;
                        elseif(computerMove == 8) && (board(3,2)=="8")
                            board(3,2)= "O";
                            checkForLegalMove = false;
                        elseif (computerMove == 7) && (board(3,1)=="7")
                            board(3,1) = "O";
                            checkForLegalMove = false;
                        elseif (computerMove == 6) && (board(2,3)=="6")
                            board(2,3)= "O";
                            checkForLegalMove = false;
                        elseif (computerMove == 5) && (board(2,2)=="5")
                            board(2,2) = "O";
                            checkForLegalMove = false;
                        elseif (computerMove == 4) && (board(2,1)=="4")
                            board (2,1) = "O";
                            checkForLegalMove = false;
                        elseif (computerMove == 3) && (board(1,3)=="3")
                            board(1,3) = "O";
                            checkForLegalMove = false;
                        elseif (computerMove == 2) && (board(1,2)=="2")
                            board(1,2) = "O";
                            checkForLegalMove = false;
                        elseif (computerMove == 1) && (board(1,1)=="1")
                            board(1,1) = "O";
                            checkForLegalMove = false;
                        end
                    end

                    if(board(1,1) == 'O' && board(2,1) == 'O' && board(3,1) == 'O')%these are the computer moves winning moves 
                        disp('you lose!')%they display you  lose when the computer beats you 
                        break%break from loop 
                    elseif (board(1,2) == 'O' && board(2,2) == 'O' && board(3,2) == 'O')
                        disp('you lose!')
                        break
                    elseif (board(1,3) == 'O' && board(2,3) == 'O' && board(3,3) == 'O')
                        disp('you lose!')
                        break
                    elseif (board(1,1) == 'O' && board(1,2) == 'O' && board(1,3) == 'O')
                        disp('you lose!')
                        break
                    elseif (board(2,1) == 'O' && board(2,2) == 'O' && board(2,3) == 'O')
                        disp('you lose!')
                        break
                    elseif (board(3,1) == 'O' && board(3,2) == 'O' && board(3,3) == 'O')
                        disp('you lose!')
                        break
                    elseif (board(1,1) == 'O' && board(2,2) == 'O' && board(3,3) == 'O')
                        disp('you lose!')
                        break
                    elseif (board(3,1) == 'O' && board(2,2) == 'O' && board(1,3) == 'O')
                        disp('you lose!')
                        break
                    end

                end

                answer = input('please use the word yes to restart the game or the word no to end the game:','s');
                %once they have won, lost, or tied they then are broken
                %from the loop and sent down here where they are asked if
                %they want to restart the game or end the game 
                if answer == "yes"%when they say yes
                    clear board%clear the game board 
                    board = ["1","2","3" ;"4","5","6";"7","8","9"];%display the new cleared gameboard 
                elseif answer == "no"%when they say no
                    disp('game over')
                    doYouWantToPlay = false;
                    break %break from loop ending the game 
                elseif answer ~= "yes" || "no"%anything not yes or no asks them to retry and pick yes or no 
                    disp('invalid answer:')
                    answer = input('Would you like to play again? Yes of No','s');
                         if answer == "yes"
                           answer = "yes";
                           clear board
                           board = ["1","2","3" ;"4","5","6";"7","8","9"];
                        elseif answer =="no"
                            disp('game over')
                            doYouWantToPlay = false;
                         end
                    break
                end
                
            end

        end

    end
    break

end

%This concludes the game.


