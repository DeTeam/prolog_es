

    blank.

    main_loop:-
		main_window, main_menu.

	main_window:-
		makewindow(15, 65, 7, "Main Menu", 0, 0, 24, 80).

	main_menu:-
		write(" Main menu: "), nl, nl,
		write("   1. About"), nl,
		write("   2. Load DB"), nl,
		write("   3. Save DB"), nl,
		write("   4. New(Clear) DB"), nl,
		write("   5. View DB"), nl,
		write("   6. Add to DB"), nl,
		write("   7. Edit DB"), nl,
		write("   8. Logic Conclusion"), nl, nl,
		write("   0. Exit"), nl,nl,
		write("     Action: "),
		readint(N),
        removewindow,
		menu_switch(N).

    menu_switch(0):-
        exit.

    menu_switch(1):-
        about_window, about_text, readchar(_), main_loop.

    menu_switch(2):-
        load_db, main_loop.

    menu_switch(3):-
        save_db, main_loop.

    menu_switch(4):-
        clear_db, main_loop.

    menu_switch(5):-
        view_db, main_loop.

    menu_switch(6):-
        add_to_db, main_loop.

    menu_switch(7):-
        edit_db, main_loop.

    menu_switch(8):-
        logic_conclusion, main_loop.

