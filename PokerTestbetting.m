%poker test betting and formatting mechanics
startingMoney = input("decide on the starting money: ");
blinds = input("decide on the blinds: ");
moneyPlayer1 = startingMoney; %set money
moneyPlayer2 = startingMoney;
printBlank()

whoseTurn = 1;
round = 1;
while round == 1;
%% this section distributes and prints the hand of each player
%if mod(whoseTurn,2) ~= 0
    printPass(1)
    promptReady()
    printBlank()
    moneyPlayer1 = moneyPlayer1 - blinds;
    moneyPlayer2 = moneyPlayer2 - blinds;
    pot = blinds*2;
    
    deck = populateDeck(); %populate deck
    
    %player 1 distribute cards
    [a,b,c,d] = playerCards(); %call function for cards
    handPlayer1 = [deck(a,b),deck(c,d)]; %distribute cards to variable handPlayer1
    
    deck(a,b) = 0; %delete the dealt hands
    deck(c,d) = 0;
    
    [suit1, suit2] = cardSuit(a,c); %call function for suit of cards
    
    %player 2 distrubute cards
    [a,b,c,d] = playerCards(); %call function for cards
    handPlayer2 = [deck(a,b),deck(c,d)]; %distribute cards to variable handPlayer1
    
    while handPlayer2(1) == 0 || handPlayer2(2) == 0; %if player is dealt deleted cards, redeal hands
        [a,b,c,d] = playerCards();
        handPlayer2 = [deck(a,b),deck(c,d)];
    end
    
    deck(a,b) = 0; %delete the dealt hands
    deck(c,d) = 0; 
    
    [suit3, suit4] = cardSuit(a,c);
    %% this section is the code for the first round of betting
    betPlayer1 = 0; %initialise
    betPlayer2 = 0;
    
    printMoney(moneyPlayer1)
    printHand(handPlayer1(1),handPlayer1(2),suit1,suit2) %print hand of player 1
    
    %prompts user for action
    actionP1 = input('Player 1 - Would you like to check(1), raise(2) or fold(3)?: ');
    while actionP1 ~= 1 && actionP1 ~= 2 && actionP1 ~= 3 %elimnates inputs other than 1 2 or 3
        actionP1 = input('Player 1 - Would you like to check(1), raise(2) or fold(3)?: ');
    end
    
    %if user inputs 2, assign raise amount to 'betPlayer1', add amound to
    %pot and reduce from player's overall money
    if actionP1 == 2
        betPlayer1 = input('how much would you like to raise?: ');
        pot = pot + betPlayer1;
        moneyPlayer1 = moneyPlayer1 - betPlayer1;
    
        %if user inputs 3, add one to 'whoseTurn', give pot money to Player
        %2 and restart while loop
    else if actionP1 == 3
            printBlank();
            whoseTurn = whoseTurn + 1;
            moneyPlayer2 = moneyPlayer2 + pot
            continue
        end
    end
    %end
    
    %player 2 turn
    printBlank()
    printPass(2)
    promptReady()
    printBlank()
    printMoney(moneyPlayer2)
    printHand(handPlayer2(1),handPlayer2(2),suit3,suit4)
    
    %if player one checked, print following message
    if actionP1 == 1
        fprintf('Player 1 has checked \n')
        %else if player one raised, print following message
    else if actionP1 == 2
            fprintf('Player 1 has raised $%d \n',betPlayer1)
        end
    end
    
    %prompt player 2 for action
    actionP2 = input('Player 2 - Would you like to check(1), raise(2), call(3) or fold(4)?: ');
    while actionP2 ~= 1 && actionP2 ~= 2 && actionP2 ~= 3 && actionP2 ~= 4 %eliminates inputs other than 1-4
        actionP2 = input('Player 2 - Would you like to check(1), raise(2), call(3) or fold(4)?: ');
    end
    
    %if player 1 has raised, eliminates option to check and reprompts
    %action
    while actionP1 == 2 && actionP2 == 1
        fprintf('Player 2 has raised so you cannot check \n')
        actionP2 = input('Player 2 - Would you like to check(1), raise(2) or fold(3)?: ');
    end
    
    %if player 2 chooses to raise again, ask for input
    if actionP2 == 2
        betPlayer2 = input('how much would you like to raise?: ');
        while betPlayer2 <= betPlayer1 %if input is less than or equal to the amount player1 has raised, print message and reprompt
            fprintf('To raise, you must bet more than Player 1 has \n');
            betPlayer2 = input('how much would you like to raise?: ');
        end
        pot = pot + betPlayer2 %add money to pot
        moneyPlayer2 = moneyPlayer2 - betPlayer2 %reduce bet money from overall money
        while betPlayer2 > betPlayer1 %reprompts message and action to player 1
            printBlank()
            printPass(1)
            promptReady()
            printBlank()
            printMoney(moneyPlayer1)
            fprintf('Player 2 has re-raised by $%d \n', betPlayer2-betPlayer1)
            actionP1 = input('Player 1 - Would you like to call(1) or fold(2)?: ');
            while actionP1 ~= 1 && actionP1 ~= 2 %eliminates inputs other than call or fold
                actionP1 = input('Player 1 - Would you like to call(1) or fold(2)?: ');
            end
            if actionP1 == 1 %if call, add difference of bets to the pot
                moneyPlayer1 = moneyPlayer1 - abs(betPlayer1-betPlayer2);
                pot = pot + abs(betPlayer1 - betPlayer2);
                betPlayer1 = betPlayer2;
            end
            if actionP2 == 2
                break
            end
        end
    end
    
    if actionP1 == 2 && actionP2 == 2
        printBlank();
        moneyPlayer2 = moneyPlayer2 + pot;
        whoseTurn = whoseTurn + 1;
        continue
    end
    
    if actionP2 == 3
        betPlayer2 = betPlayer1;
        pot = pot + betPlayer2;
        moneyPlayer2 = moneyPlayer2 - betPlayer2;
    end
    
    if actionP2 == 4
        printBlank();
        whoseTurn = whoseTurn + 1;
        moneyPlayer1 = moneyPlayer1 + pot;
        continue
    end
end
%end



