function scr_new_turtle()
{
	with (obj_ram)
	{
		scr_flag_set(flag_ActiveTurtle);
		var tmp_dir = "east";
		turtle_x = scr_rng(2, 9);
		if (scr_pchance(1, 2)) 
		{
			turtle_x = -turtle_x;
			tmp_dir = "west";
		}
		scr_text_a(string(abs(turtle_x)) + " " + tmp_dir);
		
		turtle_y = scr_rng(2, 9);
		tmp_dir = "south";
		if (scr_pchance(1, 2)) 
		{
			turtle_y = -turtle_y;
			tmp_dir = "north";
		}
		scr_text_b(string(abs(turtle_y)) + " " + tmp_dir);
		
	
	}
}