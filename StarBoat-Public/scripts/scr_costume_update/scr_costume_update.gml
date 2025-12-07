function scr_costume_update(arg_char, arg_spr)
{
	arg_char.spr = arg_spr;
	
	var tmp_target = obj_player;
	if (arg_char != obj_ram.edgar)
	{
		tmp_target = obj_player_ally;
	}
	
	if (ie(tmp_target))
	{
		with (tmp_target)
		{
			sprite_index = char.spr;	
		}
	}
}