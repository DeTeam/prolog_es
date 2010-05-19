
    clear_db1:-
        retractall(simptom(_, _)).

    clear_db2:-
        retractall(bolezn(_, _, _, _, _, _, _, _, _, _)).

    clear_db:-
        clear_db1, clear_db2.

    add_db_simptom:-
        write("Vvedite nomer(1-8): "), readint(N),
        write("Vvedite simptom: "), readln(S),
        retractall(simptom(N,_)),
        assertz(simptom(N,S), simptom_db).

    add_db_bolezn:-
        write("Vvedite nomer: "), readint(N),
        write("Vvedite bolezn: "), readln(B),
        write("Nomer S1: "), readint(S1),
        write("Nomer S2: "), readint(S2),
        write("Nomer S3: "), readint(S3),
        write("Nomer S4: "), readint(S4),
        write("Nomer S5: "), readint(S5),
        write("Nomer S6: "), readint(S6),
        write("Nomer S7: "), readint(S7),
        write("Nomer S8: "), readint(S8),
        retractall(bolezn(N, _, _, _, _, _, _, _, _, _)),
        assertz(bolezn(N,B,S1,S2,S3,S4,S5,S6,S7,S8), bolezn_db).

    delete_db_simptom:-
        write("Vvedite nomer(1-8): "), readint(N),
        retractall(simptom(N,_)).

    delete_db_bolezn:-
        write("Vvedite nomer: "), readint(N),
        retractall(bolezn(N, _, _, _, _, _, _, _, _, _)).


    save_db1:-
        write("Vvedite imya db simptomov: "), readln(N),
        save(N, simptom_db).

    save_db2:-
        write("Vvedite imya db bolezney: "), readln(N),
        save(N, bolezn_db).

    load_db1:-
        write("Vvedite imya db simptomov: "), readln(N),
        existfile(N), consult(N, simptom_db).
    load_db1:-
        write("File ne najden"), load_db.

    load_db2:-
        write("Vvedite imya db bolezney: "), readln(N),
        existfile(N), consult(N, bolezn_db).
    load_db2:-
        write("File ne najden"), load_db.

    default_db:-
        existfile("DB1.DAT"), consult("DB1.DAT", simptom_db),
        existfile("DB2.DAT"), consult("DB2.DAT", bolezn_db).

    default_db.


