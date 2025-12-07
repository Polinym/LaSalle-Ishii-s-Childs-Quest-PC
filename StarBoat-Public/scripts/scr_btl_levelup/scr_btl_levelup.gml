function scr_btl_levelup()
{
	var i;
	scr_bgm_once(bgm_LevelUp);
	var tmp_msg = "Level Up!|";
	var tmp_lvl = obj_ram.menu_level;
	
	with (john)
	{
		lvl = obj_ram.menu_level;
		var tmp_level = obj_ram.level[lvl];
		if (obj_ram.thracia)
		{
			var tmp_last_hp = max_hp;
			var tmp_last_mp = max_hp;
			max_hp = tmp_level[1];
			max_mp = tmp_level[2];
			scr_heal(max_hp-tmp_last_hp);
			scr_healmp(max_mp-tmp_last_mp);
		}
		else
		{
			hp = tmp_level[1]; max_hp = hp;
			mp = tmp_level[2]; max_mp = mp;
		}
		talk = tmp_level[3];
		bear = tmp_level[4];
		charm = tmp_level[5];
	}
	scr_flag_unset(flag_GotRoyalties);
	
	var learned = 0;
	if (array_contains(obj_ram.managic_levels, tmp_lvl)) {learned = 1;}
	else if (array_contains(obj_ram.songs, tmp_lvl)) {learned = 2;}
	else if (array_contains(obj_ram.skits, tmp_lvl)) {learned = 3;}
	switch (learned)
	{
		case 1: tmp_msg += "#And {John} learned#more Managic!|#Neato!"; break;
		case 2: tmp_msg += "#And Lord Irish#taught the band|#a new Skit!| Ooh!"; break;
		case 3: tmp_msg += "#And Lord Irish#taught the band|#a new Song!| Yay!"; break;
		default: tmp_msg += " Yeah!"; break;
	}
	
	state = 9;
	scr_msg(tmp_msg + "/p/p/p");
	reading = true;
	running = false;
}