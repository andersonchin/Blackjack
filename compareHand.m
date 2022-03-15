function [winner] = compareHand(handPlayer1,handPlayer2,suitPlayers,communityCards,suitCards)

nothing = 0;
pair = 1;
triples = 2;
straight = 3;
flush = 4;
fullhouse = 5;
four = 6;

%checks for doubles and triples
count = 0;
P1 = [handPlayer1,communityCards];
if P1(1) == P1(2)
    for i = 2:length(P1)
        if P1(1) == P1(i)
            count = count+1;
        end
    end
    
    if count == 1
        pairCardP1 = P1(1);
        strengthP1 = 1;
        double = 1;
    else if count == 2
            tripleCardP1 = P1(1);
            strengthP1 = 2;
            triple = 1;
        else if count == 3
                strengthP1 = 6;
            end
        end
    end
end

if P1(1) ~= P1(2)
    for i = 3:length(P1)
        if P1(1) == P1(i)
            count = count+1;
        end
    end
    
    if count ==1
        pairCardP1 = P1(1);
        strengthP1 = 1;
        card1_double = 1;
    else if count == 2
            tripleCardP1 = P1(1);
            strengthP1 = 2;
            card1_triple = 1;
        else if count == 3
                strengthP1 = 6;
            end
        end
    end
    
    count = 0;
    for i = 3:length(P1)
        if P1(2) == P1(i)
            count = count + 1;
        end
    end
    
    if count ==1
        pairCardP1 = P1(2);
        strengthP1 = 1;
        card2_double = 1;
    else if count == 2
            tripleCardP1 = P1(2);
            strengthP1 = 2;
            card2_triple = 1;
        else if count == 3
                strengthP1 = 6;
            end
        end
    end
end

%player 2
count = 0;
P2 = [handPlayer2,communityCards];
if P2(1) == P2(2)
    for i = 2:length(P2)
        if P2(1) == P2(i)
            count = count+1;
        end
    end
    
    if count ==1
        pairCardP2 = P2(1);
        strengthP2 = 1;
        double = 1;
    else if count == 2
            tripleCardP2 = P2(1);
            strengthP2 = 2;
            triple = 1;
        else if count == 3
                strengthP2 = 6;
            end
        end
    end
end

if P2(1) ~= P2(2)
    for i = 3:length(P2)
        if P2(1) == P2(i)
            count = count+1;
        end
    end
    
    if count ==1
        pairCardP2 = P2(1);
        strengthP2 = 1;
        card1_double = 1;
    else if count == 2
            tripleCardP2 = P2(1);
            strengthP2 = 2;
            card1_triple = 1;
        else if count == 3
                strengthP2 = 6;
            end
        end
    end
    
    for i = 3:length(P2)
        if P2(2) == P2(i)
            count = count + 1;
        end
    end
    
    if count ==1
        pairCardP2 = P2(2);
        strengthP2 = 1;
        card2_double = 1;
    else if count == 2
            tripleCardP2 = P2(2);
            strengthP2 = 2;
            card2_triple = 1;
        else if count == 3
                strengthP2 = 6;
            end
        end
    end
end

if strengthP1 > strengthP2
    winner = 1;
else if strengthP1<strengthP2
        winner = 2;
    end
end
    
if strengthP1 == 1 && strengthP2 == 1
    if pairCardP1 > pairCardP2
        winner = 1;
    else if pairCardP1 < pairCardP2
            winner = 2;
    else if pairCardP1 == pairCardP2
        winner = 0;
        end
        end
    end
end
end