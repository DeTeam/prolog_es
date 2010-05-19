
    conc_list([],L,L).
	conc_list([H|L1],L2,[H|L3]):-
		conc_list(L1,L2,L3).

    obr_list([],[]).
	obr_list([H|T],L):-
		obr_list(T,Z),
		conc_list(Z,[H],L).

    add_list(X,L,L1):-
        L1=[X|L].

    compare_lists([],[]).
    compare_lists([H1|T1],[H2|T2]):-
        H1=H2, compare_lists(T1,T2).


    sub_list(P,L):-
		conc_list(_,X,L),
		conc_list(P,_,X),!.
	sub_list(P,L).

