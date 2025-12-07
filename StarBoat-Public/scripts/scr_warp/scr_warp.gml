function scr_warp(arg_dest)
{
	with (obj_ram)
	{
		warped = true;
		enc_steps_to = -1;
		dest = arg_dest;
		last_room = room;
		if (ie(obj_player))
		{
			last_x = obj_player.x;
			last_y = obj_player.y;
		}
		room_name = "";
		move_done = false;
		icd(view_xview, view_yview, -999, obj_warp);
	}
}