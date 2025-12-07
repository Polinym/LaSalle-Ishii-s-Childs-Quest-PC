function scr_freespace(arg_x, arg_y)
{
	if (obj_ram.wtw) {return true;}
	else
	{
		return not 
		(
		place_meeting(arg_x, arg_y, obj_blocker)
		or ((use_newcol) and (place_meeting(arg_x, arg_y, col_layer)))
		or ((l_seablock != -1) and (not has_boats) and (place_meeting(arg_x, arg_y, l_seablock)))
		or (place_meeting(arg_x, arg_y, par_npc))
		or (place_meeting(arg_x, arg_y, obj_player))
		)
	}
}