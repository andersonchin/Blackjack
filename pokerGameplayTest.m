%poker gameplay mechanics
deck = populateDeck();

%player 1 distribute cards
    [a,b,c,d] = playerCards(); %call function for cards
    handPlayer1 = [deck(a,b),deck(c,d)]; %distribute cards to variable handPlayer1
    
    deck(a,b) = 0; %delete the dealt hands
    deck(c,d) = 0;
    
    [suit1, suit2] = cardSuit(a,c); %call function for suit of cards
    
    suitPlayers = [a,c];
%player 2 distrubute cards
    [a,b,c,d] = playerCards(); %call function for cards
    handPlayer2 = [deck(a,b),deck(c,d)]; %distribute cards to variable handPlayer1
    
    while handPlayer2(1) == 0 || handPlayer2(2) == 0 %if player is dealt deleted cards, redeal hands
        [a,b,c,d] = playerCards();
        handPlayer2 = [deck(a,b),deck(c,d)];
    end
    
    [suit3, suit4] = cardSuit(a,c);
    
    deck(a,b) = 0; %delete the dealt hands
    deck(c,d) = 0;
    
    suitPlayers = [suitPlayers,a,c];
    %% 
  
    [a,b,c,d,e,f] = generateFlop();
    communityCards = [deck(a,b),deck(c,d),deck(e,f)];
    
   while communityCards(1) == 0 || communityCards(2) == 0 || communityCards(3) == 0 %if player is dealt deleted cards, redeal hands
        [a,b,c,d,e,f] = generateFlop();
        communityCards = [deck(a,b),deck(c,d),deck(e,f)];
   end
   
   [commSuit1, commSuit2, commSuit3] = cardSuitFlop(a,c,e);
   
   deck(a,b) = 0;
   deck(c,d) = 0;
   deck(e,f) = 0;
   
   suitCards = [a,c,e];
  
   [a,b] = generateSingle;
   communityCards = [communityCards, deck(a,b)];
   while communityCards(4) == 0
       [a,b] = generateSingle();
       communityCards(4) = [deck(a,b)];
   end
   
   deck(a,b) = 0;
   
   suitCards = [suitCards,a];
   
   commSuit4 = cardSuitSingle(a);
   
   [a,b] = generateSingle;
   communityCards = [communityCards,deck(a,b)];
   while communityCards(5) == 0
       [a,b] = generateSingle();
       communityCards(5) = [deck(a,b)];
   end
   
   deck(a,b) = 0;
   
   suitCards = [suitCards,a];
   
   commSuit5 = cardSuitSingle(a);
   
   printHand(handPlayer1(1),handPlayer1(2),suit1,suit2)
   printHand(handPlayer2(1),handPlayer2(2),suit3,suit4)
   deck;
   communityCards;
   
   
   
   