scr_ani_frame();
image_index = 6+ani_frame;
if (can_swim)
{
	if (jpn)
	{
		if ((scr_rng(0, 0xff) & 0x3) > 0)
		{
			if (kcp(vk_space))
			{
				x += -1;
			}
		}
	}
	else
	{
		if (turbo_count > 0)
		{
			x += -1;
			turbo_count += -1;
		}
		else
		{
			if (kcp(vk_space))
			{
				x += -1;
				turbo_count = scr_rng(0, 3);
			}
		}
	}
	
	if (x < 33)
	{
		scr_bgm_once(bgm_LevelUp);
		can_swim = false;
		with (obj_swimmer) {can_swim = false;}
		with (obj_swim_prompt)
		{
			over = true;
			won = true;
		}
	}
}