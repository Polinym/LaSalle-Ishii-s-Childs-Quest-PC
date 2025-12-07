function scr_japan()
{
	with (obj_ram)
	{
		jpn = true;	
		scr_japan_fonts();
		scr_japan_items();
		scr_japan_chars();
		scr_japan_managic();
		scr_japan_towns();
		scr_japan_halls();
		scr_japan_equips();
		scr_japan_act();
		scr_japan_enemies();
		scr_japan_bck();
		
		scr_japan_foods();
		scr_japan_suits();
		scr_japan_attalks();
		scr_japan_arrudes();
		scr_japan_ram_lines();
		with (obj_script) {scr_japan_lines();}
		with (obj_script_menu) {scr_japan_lines_menu();}
	}
}