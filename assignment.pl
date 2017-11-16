%Definitions for isElementInList(El, List)
isElementInList(X,X).
isElementInList(X,[X|_]).
isElementInList(X,[_|T]):-
    isElementInList(X,T).

%Definitions for reverseList(List, ReversedList)
reverseList([],[]).
reverseList([H|T], R):-
    reverseList(T,A),
    mergeLists(A,[H],R).

%insertElementIntoListEnd(El, List, NewList)
insertElementIntoListEnd(El, [], [El]).
insertElementIntoListEnd(El, [H|T], [H|NewList]):-
    insertElementIntoListEnd(El, T, NewList).


%Definitions for mergeLists(List1, List2, Merged)
mergeLists([], Y, Y).
mergeLists([H|T],Y,X):-
    mergeLists(T, Y, A),
    X = [H|A].
