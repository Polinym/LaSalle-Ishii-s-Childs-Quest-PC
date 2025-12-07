if (ani_count < ani_wait) {ani_count++;}
else {ani_count = 0; ani_frame = not ani_frame;}
switch (state)
{
	case 0:
		if (obj_ram.text_done)
		{
			obj_ram.text_done = false;
			state++;
		}
		break;
	case 1:
		if (bub_count < bub_wait) {bub_count++;}
		else
		{
			var tmp_index = obj_ram.random_number & 0x7;
			icd(bub_x+(16*tmp_index), bub_y+(scr_rng(0, 72)), depth-1, obj_turtle_bubbles);
			turtle_pos = tmp_index;
			bub_wait += scr_rng(30, 60);
			bub_count = 0;
		}
	
	
		if (kcp(vk_left) and (pos > 0)) {pos += -1;}
		else if (kcp(vk_right) and (pos < 7)) {pos++;}
		else if (kcp(vk_space))
		{
			scr_msg_close();
			state = 2;
		}
		x = start_x+(pos*16);
		break;
	case 2:
		if (wait_count < wait_wait) {wait_count++;}
		else
		{
			turtle = icd(bub_x+(turtle_pos*16), 224, depth-1, obj_turtle);
			state++;
		}
		break;
	case 3:
		if (turtle.y < 58)
		{
			turtle.animating = false;
			wait_count = 0;
			wait_wait = 90;
			state++;
		}
		break;
	case 4:
		if (wait_count < wait_wait) {wait_count++;}
		else
		{
			var tmp_msg = "";
			if (turtle_pos == pos)
			{
				tmp_msg = 120;
				scr_flag_set(flag_GotCrystal);
			}
			else
			{
				tmp_msg = 121;
			}
			scr_msg_sys(tmp_msg);
			state++;
		}
		break;
	case 5:
		if (obj_ram.text_done)
		{
			obj_ram.text_done = false;
			scr_warp(obj_ram.last_room);
		}
		break;
}