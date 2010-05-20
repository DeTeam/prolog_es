
    titul_window:-
        makewindow(1, 15, 0, "Titulniy list", 3, 3, 20, 70), clearwindow.
    about_window:-
        makewindow(2, 15, 0, "O programme", 3, 3, 20, 70), clearwindow.
    view_db_window:-
        makewindow(3, 15, 0, "Prosmort DB", 3, 3, 20, 70), clearwindow.
    dialog_window(T):-
        makewindow(4, 15, 0, T, 3, 3, 20, 70), clearwindow, write(T),nl.
    logic_window:-
        makewindow(5, 15, 0, "Logicheskij vivod", 3, 3, 20, 70), clearwindow.

