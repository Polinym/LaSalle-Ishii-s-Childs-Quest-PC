function scr_set_level(arg_lvl)
{
	with (obj_ram.john)
	{
		lvl = arg_lvl;
		var tmp_level = obj_ram.level[lvl];
		pp = tmp_level[0];
		hp = tmp_level[1]; max_hp = hp;
		mp = tmp_level[2]; max_mp = mp;
		talk = tmp_level[3];
		bear = tmp_level[4];
		charm = tmp_level[5];
	}
}