function scr_btl_dmg(arg_dmg)
{
	var tmp_msg = "";
	if (obj_ram.thracia)
	{
		if (scr_pchance(1, 10))
		{
			arg_dmg = 0;	
		}
	}
	if (arg_dmg > 0)
	{
		enemy.hp += -arg_dmg;
		scr_text_a(string(arg_dmg));
		tmp_msg = 63;
		if (enemy.hp < 1)
		{
			state = 5;	
		}
	}
	else
	{
		tmp_msg = 64;
	}
	return tmp_msg;
}