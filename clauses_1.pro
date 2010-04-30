
clauses

    main_loop:-
		main_window, main_menu.

	main_window:-
		makewindow(99,65,7,"Main Menu",0,0,24,80).

	main_menu:-
		write(" Main menu: "), nl, nl,
		write("   1. About"), nl,
		write("   2. Load DB"), nl,
		write("   3. Save DB"), nl,
		write("   4. New DB"), nl,
		write("   5. View DB"), nl,
		write("   6. Add to DB"), nl,
		write("   7. Edit DB"), nl,
		write("   8. Logic Conclusion"), nl, nl,
		write("   0. Exit"), nl,nl,
		write("     Action: ")m
		readchar(N),
		menu_switch(N).	