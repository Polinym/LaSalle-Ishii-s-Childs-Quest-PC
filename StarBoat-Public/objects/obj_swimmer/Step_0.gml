scr_ani_frame();
image_index = 6+ani_frame;
if (can_swim)
{
	if (delay_count > delay_wait) {delay_count++;}
	else
	{
		delay_count = 0;
		if not ((scr_rng(0, 0xff) & 0x3) > 0)
		{
			x += -1;
		}
	}
	
	if (x < 33)
	{
		obj_swim_player.can_swim = false;
		can_swim = false;
		with (obj_swimmer) {can_swim = false;}
		obj_swim_prompt.over = true;
	}
}