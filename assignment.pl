%Definitions for isElementInList(El, List)
isElementInList(_, [], false).
isElementInList(El, [H|T]):-
    El == H, !;
    isElementInList(El, T).

%Definitions for reverseList(List, ReversedList)
reverseList([],[]).
reverseList([H|T], ReversedList):-
    mergeLists(T, [H], ReversedList).
%insertElementIntoListEnd(El, List, NewList)
insertElementIntoListEnd(El, List, NewList):-
    reverseList(List, R),
    mergeLists(R, [El], NewList).

%Definitions for mergeLists(List1, List2, Merged)
mergeLists([], List2, List2).
mergeLists([H|T], List2, Merged):-
    mergeLists(T , [H|List2], Merged).










