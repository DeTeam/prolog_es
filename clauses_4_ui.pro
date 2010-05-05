
    titul:-
        titul_window, titul_text, readchar(_), removewindow.

    save_db:-
        dialog_window("Save DB"), cursor(2,2), save_db1, save_db2, removewindow.

    load_db:-
        dialog_window("Load DB"), cursor(2,2), load_db1, load_db2, removewindow.

    edit_db:-
        dialog_window("Kakuju DB ?"), cursor(2,2),
        write("  1. Simptom "),nl
        write("  2. Bolezn"), nl,
        readint(N), removewindow,
        edit_switch(N).

    edit_switch(1):-
        delete_db_simptom.
    edit_switch(2):-
        delete_db_bolezn.

    view_db:-
        view_db_window, view_bolezn_all, nl,
        write("1. Bolezn"),nl,
        write("2. Simptom"),nl,
        write("0. Main Menu"),nl,
        write("Action: "), readint(N), view_db_switch(N).

    view_db_switch(0):-
        removewindow.

    view_db_switch(1):-
        write("Bolezn id: "), readint(N),
        clearwindow,
        view_bolezn_complex(N), nl,
        write("Press any key..."), readchar(_), view_db.

    view_db_switch(2):-
        write("Simptom id: "), readint(N),
        clearwindow,
        view_simptom(N), nl,
        write("Press any key..."), readchar(_), view_db.

    view_bolezn_all:-
        view_bolezn(_), fail.
    view_bolezn_all.

    view_simptom_all:-
        view_simptom(_), fail.
    view_simptom_all.

    view simptom(I):-
        simptom(I, S),
        not(S=""),
        write(" Simptom[",I,"]: ", S), nl.
    
    view_bolezn(I):-
        bolezn(I, S, _, _, _, _, _, _, _, _),
        write(" Bolezn[",I,"]: ", S).

    view_bolezn_complex(I):-
        bolezn(I, S, S1, S2, S3, S4, S5, S6, S7, S8),
        write(" Bolezn[",I,"]: ", S),nl,
        write(" Simptomi:"),nl,
        view simptom(S1), view simptom(S2), view simptom(S3), view simptom(S4),
        view simptom(S5), view simptom(S6), view simptom(S7), view simptom(S8),nl,nl.
