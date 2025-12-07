if (scr_check_yesno())
{
	if (obj_ram.yesno)
	{
		scr_msg(lines[obj_ram.yes_line]);
	}
	else
	{
		scr_msg(lines[obj_ram.no_line]);
	}
}
else
if (scr_check_reading())
{
	if (cue_cuts != -1)
	{
		scr_cuts_load(cue_cuts);
		scr_warp(room);
		with (obj_ram)
		{
			last_room = save_room;
			cue_cuts = -1;
		}
	}
	else
	{
		scr_warp(obj_ram.last_room);
	}
}
else if (scr_check_quading())
{
	scr_mall_quad();
}