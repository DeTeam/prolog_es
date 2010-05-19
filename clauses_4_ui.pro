
    titul:-
        titul_window, titul_text, readchar(_), removewindow.

    save_db:-
        dialog_window("Save DB"), cursor(2,2), save_db1, save_db2, removewindow.

    load_db:-
        dialog_window("Load DB"), cursor(2,2), load_db1, load_db2, removewindow.

    edit_db:-
        dialog_window("Kakuju DB ?"), cursor(2,2),
        write("  1. Simptom "),nl,
        write("  2. Bolezn"), nl,
        readint(N), removewindow,
        edit_switch(N).

    edit_switch(1):-
        delete_db_simptom.

    edit_switch(2):-
        delete_db_bolezn.


    add_to_db:-
        dialog_window("Simptom ili bolezn?"), cursor(2,2),
        write("  1. Simptom "),nl,
        write("  2. Bolezn"), nl,
        write("  0. Main Menu"), nl,
        readint(N), removewindow,
        add_switch(N).

    add_switch(1):-
        dialog_window("Add simptom"),
        add_db_simptom,
        removewindow, add_to_db.

    add_switch(2):-
        dialog_window("Add bolezn"),
        add_db_bolezn,
        removewindow, add_to_db.

    add_switch(_).

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

    view_simptom(N):-
        simptom(N, S),
        not(S=""),
        write(" Simptom[",N,"]: ", S), nl.

    view_simptom(_):-
        write("Simptom ne najden"), nl.
    
    view_bolezn(N):-
        bolezn(N, S, _, _, _, _, _, _, _, _),
        write(" Bolezn[",N,"]: ", S).

    view_bolezn(_):-
        write("Bolezn ne najdena"), nl.

    view_bolezn_complex(N):-
        bolezn(N, S, S1, S2, S3, S4, S5, S6, S7, S8),
        write(" Bolezn[",N,"]: ", S),nl,
        write(" Simptomi:"),nl,
        view_simptom(S1), view_simptom(S2), view_simptom(S3), view_simptom(S4),
        view_simptom(S5), view_simptom(S6), view_simptom(S7), view_simptom(S8),nl,nl.

    view_bolezn_complex(_):-
        write("Bolezn ne najdena"), nl.

