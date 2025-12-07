function scr_player_facing(arg_obj)
{
	with (obj_player)
	{
		switch (dir)
		{
			case "down":	return instance_place(x, y+16, arg_obj); break;
			case "right":	return instance_place(x+16, y, arg_obj); break;
			case "up":		return instance_place(x, y-16, arg_obj); break;
			case "left":	return instance_place(x-16, y, arg_obj); break;
		}
		return -1;
	}
}