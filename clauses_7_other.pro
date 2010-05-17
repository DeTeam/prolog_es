
    obr_list([], L1).
    obr_list([H|T], L1):-
        obr_list(T, [H|L1]).

