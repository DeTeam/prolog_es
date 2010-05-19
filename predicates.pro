
predicates
	/*
		Some main stuff
	*/
	main_loop
	main_window
	main_menu
	menu_switch(I)


	/*
		Window stuff
	*/
	titul_window
	about_window
	view_db_window
    dialog_window(S)
    logic_window

	/*
		IO stuff(UI) + Static text
	*/

    titul
    save_db
    load_db
    add_to_db
    
    edit_db
    edit_switch(I)

    add_switch(I)

    view_db
    view_db_switch(I)

    logic_conclusion
    logic_build_list(L, I)
    logic_loop_bolezn(L)
    logic_has_simptom(S)

    view_bolezn_complex(I)
    view_bolezn(I)
    view_bolezn_all
    view_simptom(I)
    view_simptom_all

    titul_text
    about_text
    

	/*
		DB stuff
	*/

    load_db1
    load_db2
	   
    save_db1
    save_db2

    clear_db
    clear_db1
    clear_db2

    default_db


	add_db_simptom
	add_db_bolezn
    delete_db_simptom
	delete_db_bolezn

    /*
        Other stuff
    */

    blank
    obr_list(L, L)
    add_list(I,L,L)
    conc_list(L,L,L)
    compare_lists(L,L)
    sub_list(L,L)
    

