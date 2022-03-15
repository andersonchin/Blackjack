%tests to see if suit function works
deck = populateDeck(); %populate deck
 
[a,b,c,d] = playerCards(); %call function for cards

handPlayer1 = [deck(a,b),deck(c,d)]; %assign cards to handPlayer1

[suit1, suit2] = cardSuit(a,c) %call suit function




