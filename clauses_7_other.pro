
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

    delete_list([], _, []).
	delete_list([X|T], X, Lx):-
		!,
		delete_list(T, X, Lx).
	delete_list([H|T], X, [H|T1]):-
		delete_list(T, X, T1).

    incl_list(X,[X|_]):- !.
	incl_list(X,[_|T]):-
		incl_list(X,T).


    sub_list2([], _).
    sub_list2([H|T], L):-
        incl_list(H, L), sub_list2(T, L).

