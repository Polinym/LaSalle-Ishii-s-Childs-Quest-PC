if (held) {image_index = 0; image_speed = 0;}
else if (cooldown > 0) 
{
	cooldown += -1;
}
else
{
if (kcp(vk_down))
{
	if (pos < last_pos) {pos++;}
	else {pos = 0;}
	update = true;
}
else if (kcp(vk_up))
{
	if (pos > 0) {pos += -1;}
	else {pos = last_pos;}
	update = true;
}
else if (kcp(vk_space))
{
	var success = true;
	switch (pos)
	{
		case 0: 
			//scr_newgame();
			//scr_warp(rm_char);
			obj_ram.keyboard_mode = 0;
			room_goto(rm_keyboard);
			break;
		case 1: 
			if (can_load)
			{
				scr_load();
			}
			else
			{
				scr_snd(snd_cq_hex);
				success = false;
			}
			break;
		case 2:
			obj_ram.entered_settings = true;
			scr_warp(rm_game);
			held = true;
			break;
	}
	if (success) {instance_destroy();}
}

if (update)
{
	y = start_y + (16 * pos);
	image_index = 0;
	update = false;
}
}

if (kcp(ord("X")))
{
	if (can_load)
	{
		scr_load();
	}
	else
	{
		obj_ram.goto_pt = 8;
		room_goto(rm_english);
	}
	held = true;
}