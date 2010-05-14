

    logic_conclusion:-
        logic_window, cursor(3,3),
        L = [],
        logic_build_list(L, 1), obr_list(L, L1), logic_loop_bolezn(L1).

    logic_build_list(L, N):-
        simptom(N,S),
        N1 = N + 1,
        logic_build_list([S|L], N1).

    logic_build_list(_, _).

    logic_loop_bolezn(L):-
        bolezn(N, B, S1, S2, S3, S4, S5, S6, S7, S8),
        L1 = [S1, S2, S3, S4, S5, S6, S7, S8],
        L1 = L,
        write("Bolezn: ", B), readchar(_).

    logic_loop_bolezn(L):-
        write("Izvinite, bolezn ne najdena"), readchar(_).
