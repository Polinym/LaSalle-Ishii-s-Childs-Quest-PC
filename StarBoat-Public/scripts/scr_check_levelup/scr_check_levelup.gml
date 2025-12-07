function scr_check_levelup()
{
	var max_level = obj_ram.max_level;
	var last_level = john.lvl;
	var next_level = -1;
	var tmp_pop = john.pp;
	var levels = obj_ram.level;
	for (var i = last_level+1; i < max_level; i++)
	{
		if (tmp_pop >= levels[i][0])
		{
			next_level = i;
			state = 11;
		} else {break;}
	}
	if (next_level != -1)
	{
		obj_ram.menu_level = next_level;
	}
}