if (not held)
{
	if (kcp(vk_right)) {if (x_pos < 1) {x_pos = 1;}}
	else if (kcp(vk_left)) {if (x_pos > 0) {x_pos = 0;}}
	else if (kcp(vk_down)) {if (y_pos < 3) {y_pos++;}}
	else if (kcp(vk_up)) {if (y_pos > 0) {y_pos += -1;}}
	else if (kcp(vk_shift))
	{
		state = 2;
		display = false;
		held = true;
	}
	else if (kcp(vk_space))
	{
		var tmp_pos = (y_pos*2)+x_pos;
		if (names[tmp_pos] != "")
		{
			held = true;
			selected = true;
			obj_concert.perform_arg = tmp_pos;
			obj_text.txt = "";
			hud_act.state = 2;
			state = 2;
		}
	}
}

if (close_update)
{
	if (selected)
	{
		obj_concert.running = true;
	}
	else
	{
		hud_act.reading = true;
		scr_msg("Well?");
		obj_text.display = true;
	}
	instance_destroy();
}