%driver test to print hand of player
deck = populateDeck(); %populate deck

[a,b,c,d] = playerCards(); %call function for cards

handPlayer1 = [deck(a,b),deck(c,d)]; %distribute cards to variable handPlayer1

[suit1, suit2] = cardSuit(a,c); %call function for suit of cards

printHand(handPlayer1(1),handPlayer1(2),suit1,suit2) %print hand
 
%test to see if it prints out "ace" when the card is equal to 1
handPlayer1(1) = 1; %set hand to 1
handPlayer1(2) = 1;
printHand(handPlayer1(1),handPlayer1(2),suit1,suit2)