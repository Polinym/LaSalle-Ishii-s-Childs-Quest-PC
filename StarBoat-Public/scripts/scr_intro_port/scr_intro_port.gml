function scr_intro_port(arg_x, arg_y, arg_name)
{
	if (jpn)
	{
		var tmp_spr = asset_get_index("spr_port_intro_" + arg_name + "_jpn");	
		if (tmp_spr != -1)
		{
			asset_get_index("spr_port_intro_" + arg_name);	
		}
	}
	else
	{
		var tmp_spr = asset_get_index("spr_port_intro_" + arg_name);	
	}
	icd(arg_x, arg_y, -10, obj_room_port).sprite_index  = tmp_spr;
}