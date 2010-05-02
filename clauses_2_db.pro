
    clear_db1:-
        retreatall(simptom(_, _)).

    clear_db2:-
        retreatall(bolezn(_, _, _, _, _, _, _, _, _, _)).

    clear_db:-
        clear_db1, clear_db2.

    add_db_simptom:-
        write("Vvedite nomer(1-8)": ), readint(N),
        write("Vvedite simptom: "), readln(S),
        assertz(simptom(N,S), simptom_db).

    add_db_bolezn:-
        write("Vvedite nomer(1-8)": ), readint(N),
        write("Vvedite bolezn: "), readln(B),
        write("Nomer S1: "), readint(S1),
        write("Nomer S2: "), readint(S2),
        write("Nomer S3: "), readint(S3),
        write("Nomer S4: "), readint(S4),
        write("Nomer S5: "), readint(S5),
        write("Nomer S6: "), readint(S6),
        write("Nomer S7: "), readint(S7),
        write("Nomer S8: "), readint(S8),
        assertz(bolezn(N,B,S1,S2,S3,S4,S5,S6,S7,S8), bolezn_db).


    save_db1:-
        write("Vvedite imya db simptomov: "), readln(N),
        save(n, simptom_db).

    save_db2:-
        write("Vvedite imya db bolezney: "), readln(N),
        save(n, bolezn_db).

    load_db1:-
        write("Vvedite imya db simptomov: "), readln(N),
        existfile(N), consult(n, simptom_db).

    load_db2:-
        write("Vvedite imya db bolezney: "), readln(N),
        existfile(N), consult(n, bolezn_db).

