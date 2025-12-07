function scr_mng_level()
{
	with (obj_ram)
	{
		var tmp_char = party[0];
		var tmp_lvl = tmp_char.lvl;
		var lvls = managic_levels;
		for (var i = 0; i < 8; i++)
		{
			if (tmp_lvl < lvls[i]) {return i; }
		}
		return 8;
	}
}