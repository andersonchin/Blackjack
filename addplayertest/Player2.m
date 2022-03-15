function [deck, handPlayer1, handPlayer2] = Player2()

deck = populateDeck()

[a,b,c,d] = playerCards()

handPlayer1 = [deck(a,b),deck(c,d)]

deck(a,b) = 0
deck(c,d) = 0

[suit1, suit2] = cardSuit(a,c)

[a,b,c,d] = playerCards()

handPlayer2 = [deck(a,b),deck(c,d)]

deck(a,b) = 0
deck(c,d) = 0

[suit3, suit4] = cardSuit(a,c)
end


