function scr_cuts_warp(arg_dest, arg_pt)
{
	with (obj_ram)
	{
		last_room = arg_dest;
		goto_pt = arg_pt;
		warped = true;
		respawn = false;	
	}
}