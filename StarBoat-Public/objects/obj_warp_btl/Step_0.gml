if (ani_state == 1)
{
	if (not played_sound)
	{
		with (obj_ram)
		{
			if (enemy == enm_Scottish) and (bonus)
			{
				scr_bgm(music_DarkManagic);
			}
			else
			{
				scr_bgm(bgm_UhOhTrouble);
			}
		}
		played_sound = true;	
	}
}

switch (ani_state)
{
	case 0:
		if (blink_count < blink_wait) {blink_count++;}
		else
		{
			blink_count = 0;
			blink = not blink;
			blink_times++;
			if (blink_times > 3)
			{
				ani_state++;
				blink = false;
			}
		}
		break;
	case 1:
		yc[inc_count] += 8;
		inc_count++;
		if (inc_count > 3)
		{
			inc_count = 0;
			ani_state++;
		}
		break;
	case 2:
		yc[ani_count] += 16;
		ani_count++;
		if (ani_count > 3) 
		{
			ani_count = 0;	
		}
		inc_count++;
		if (inc_count > 26+8)
		{
			inc_count = 0;
			room_goto(obj_ram.dest);
		}
		break;
}