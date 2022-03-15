
handPlayer1 = [2,1];
communityCards = [6,7,13,10,11];

P1 = [handPlayer1,communityCards];
P1 = sort(P1);
straightP1 = [];

for i = 1:length(P1)-1
    if P1(i)+1 == P1(i+1)
        straightP1 = [straightP1,P1(i)];
    end
end

for i = 2:length(P1)
    if P1(i)-1 == P1(i-1)
        straightP1 = [straightP1,P1(i)];
    end
end

straightP1 = unique(straightP1);
straightCount = 0

for i = 2:length(straightP1)-1
    if (straightP1(i) + straightP1(i-1) + straightP1(i+1))/3 == straightP1(i)
        
    
if length(straightP1) >= 5
    count = 0;
    for i = 1:length(straightP1)-1
        if straightP1(i)+1 == straightP1(i+1)
            count = count + 1;
        end
    end
end