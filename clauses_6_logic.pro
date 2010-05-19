

    logic_conclusion:-
        logic_window, cursor(3,3),
        logic_build_list(L, 1), obr_list(L, L1), logic_loop_bolezn(L1), removewindow.

    logic_build_list(L, N):-
        N < 9,
        simptom(N,_),
        readchar("y"),
        N1 = N + 1,
        add_list(N, L, L1),
        logic_build_list(L1, N1).

    logic_build_list(_, _).

    logic_loop_bolezn(L):-
        bolezn(_, B, S1, S2, S3, S4, S5, S6, S7, S8),
        L1 = [S1, S2, S3, S4, S5, S6, S7, S8],
        L1 = L,
        write("Bolezn: ", B), readchar(_).

    logic_loop_bolezn(_):-
        write("Izvinite, bolezn ne najdena"), readchar(_).
