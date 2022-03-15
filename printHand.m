function hi = printHand(card1,card2,suit1,suit2)

if card1 && card2 == 1
    fprintf("Your hand is: Ace of %s, Ace of %s \n",suit1,suit2)
else if card1 == 1
    fprintf("Your hand is: Ace of %s, %d of %s \n",suit1, card2,suit2)
else if card2 == 1
        fprintf("Your hand is: %d of %s, Ace of %s \n",card2,suit1, suit2)
        
else if card1 && card2 == 11
    fprintf("Your hand is: Jack of %s, Ace of %s \n",suit1,suit2)
else if card1 == 11
    fprintf("Your hand is: Jack of %s, %d of %s \n",suit1, card2,suit2)
else if card2 == 11
        fprintf("Your hand is: %d of %s, Jack of %s \n",card2,suit1, suit2)
        
else if card1 && card2 == 12
    fprintf("Your hand is: Queen of %s, Queen of %s \n",suit1,suit2)
else if card1 == 12
    fprintf("Your hand is: Queen of %s, %d of %s \n",suit1, card2,suit2)
else if card2 == 12
        fprintf("Your hand is: %d of %s, Queen of %s \n",card2,suit1, suit2)
 
else if card1 && card2 == 13
    fprintf("Your hand is: King of %s, King of %s \n",suit1,suit2)
else if card1 == 13
    fprintf("Your hand is: King of %s, %d of %s \n",suit1, card2,suit2)
else if card2 == 13
        fprintf("Your hand is: %d of %s, King of %s \n",card2,suit1, suit2)
        
    else
        fprintf("Your hand is: %d of %s, %d of %s \n",card1,suit1, card2,suit2)
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
end
end