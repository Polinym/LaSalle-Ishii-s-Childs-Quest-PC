if (not on)
{
	if (wait_count < wait_wait) {wait_count++;}
	else
	{
		on = true;	
		wait_count = 0;
		obj_swim_player.can_swim = true;
		with (obj_swimmer) {can_swim = true;}
	}
}
if (over)
{
	if (wait_count < wait_wait) {wait_count++;}
	else
	{
		wait_count = 0;
		if (won)
		{
			with (obj_ram)
			{
				if (john.lvl > 0x11)
				{
					scr_cuts_load(cuts_swim_won);
				}
				else
				{
					scr_cuts_load(cuts_swim_deny);
				}
			}
		}
		else
		{
			scr_cuts_load(obj_ram.cuts_swim_lost);
		}
		room_goto(rm_room);
	}
}