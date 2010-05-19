
    conc_list([],L,L).
	conc_list([H|L1],L2,[H|L3]):-
		conc_list(L1,L2,L3).

    obr_list([],[]).
	obr_list([H|T],L):-
		obr_list(T,Z),
		conc_list(Z,[H],L).

    add_list(X,L,L1):-
        L1=[X|L].

