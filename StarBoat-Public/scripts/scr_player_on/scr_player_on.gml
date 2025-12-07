function scr_player_on(arg_x, arg_y, arg_obj)
{
	with (obj_player)
	{
		if (place_meeting(arg_x, arg_y, arg_obj))
		{
			return instance_place(arg_x, arg_y, arg_obj);	
		}
		else {return -1;}
	}
}