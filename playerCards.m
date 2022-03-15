%generates and returns the numbers used to determine which card the player will get
%from the deck 2d array
function [a b c d] = playerCards()

a = floor(rand()*4+1);
b = floor(rand()*13+1);

c = floor(rand()*4+1);
d = floor(rand()*13+1);

end
