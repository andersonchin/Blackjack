deck = populateDeck()

handPlayer1 = [];
handPlayer2 = [];

[a,b,c,d] = playerCards()

handPlayer1 = [deck(a,b),deck(c,d)]

deck(a,b) = 0
deck(c,d) = 0
