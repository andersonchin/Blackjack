%function determines the suit of the card based off which row the card is
%in the 'deck' 2d array
function [suit1 suit2] = cardSuit(a,c)
if a == 1
    suit1 = 'Clubs';
else if a == 2
       suit1 = 'Diamonds' ;
    else if a == 3
          suit1 ='Hearts' ;
        else if a == 4
            suit1 = 'Spades';
            end
        end
    end
end

if c == 1
    suit2 ='Clubs' ;
else if c == 2
        suit2 = 'Diamonds';
    else if c == 3
           suit2 = 'Hearts';
        else if c == 4
               suit2 = 'Spades';
            end
        end
    end
end
end