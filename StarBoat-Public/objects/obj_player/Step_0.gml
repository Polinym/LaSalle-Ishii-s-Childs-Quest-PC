switch (state)
{
	case "ini":
		if not (ie(obj_warp)) {state = "idle";}
		break;
    case "idle":
        ani_wait = 15;
		crate = -1;
		if (kcp(vk_space) and can_menu)
		{
			obj_ram.paused = true;
			scr_open(hud_stress_ow);
			state = "cmds";
		}
		else if (kcp(ord("Z")))
		{
			room_goto(rm_status);
			scr_set_respawn();
			state = "status";
		}
		else
		{
			scr_state_input();
		}
        if (idle_animate) {scr_plr_animate();}
        break;
    case "move":
        scr_plr_animate();
        if (sprinting) {ani_wait = 7;}
        else {ani_wait = 15;}
        if (x != next_x) || (y != next_y)
        {
            scr_dir_step(movespeed);
        }
        else
        {
            state = "idle";
            last_dir[3] = last_dir[2];
            last_dir[2] = last_dir[1];
            last_dir[1] = last_dir[0];
            last_dir[0] = dir;
            if not (scr_ow_stepcheck())
            {
				scr_state_input();
            }
        }
        break;
    case "talk":
        if (obj_ram.text_done)
        {
	        obj_ram.text_done = false;
	        obj_ram.paused = false;
			die(hud_stress_ow);
			die(par_text);
	        state = "idle";
        }
        break;
	case "warp":
		if (warp_count < warp_wait) {warp_count += 1;}
		else
		{
			if (do_blj) {room_goto(rm_warp);}
			else
			{
				scr_warp(obj_ram.dest);
			}
			state = "warp2";	
		}
		break;
	case "warp3":
		if (warp_count < warp_wait) {warp_count += 1;}
		else
		{
			room_goto(obj_ram.dest);
			state = "warp4";	
		}
		break;
	case "explode":
		if (flash_count < flash_wait) {flash_count++;}
		else
		{
			flash_count = 0;
			if (not flash)
			{
				flash = true;
			}
			else
			{
				flash = false;
				flash_total++;
				if (flash_total > 3)
				{
					if (need_water)
					{
						scr_port(explode_char.port_sad);
						scr_msg(obj_script_menu.line[26]);
						obj_text.display = true;
						state = "water_msg";
						reading = true;
					}
					else
					{
						scr_text_a(explode_char.name);
						scr_msg(obj_script_menu.line[27]);
						obj_text.display = true;
						state = "explode2";
						reading = true;
					}
				}
			}
		}
		break;
	case "explode2":
		if (scr_check_reading())
		{
			state = "explode3";
			shake_count = shake_wait;
		}
		break;
	case "explode3":
		if (shake_count < shake_wait) {shake_count++;}
		else
		{
			shake_count = 0;
			if (not shake)
			{
				shake = true;
				cam.x += -1;
				cam.y += -1;
				x += 1;
				y += 1;
			}
			else
			{
				shake = false;
				cam.x++;
				cam.y++;
				x += -1;
				y += -1;
			}
		}
		shake_total++;
		if (shake_total >= shake_duration)
		{
			obj_ram.explode_char = explode_char;
			scr_cuts_load(obj_ram.cuts_explode);
			room_goto(rm_room);
			state = "gone";
		}
		break;
	case "water_msg":
		if (obj_ram.text_done)
		{
			scr_port(-1);
			scr_msg_close();
			hud_stress_ow.state = 2;
			obj_ram.text_done = true;
		}
		break;
}


