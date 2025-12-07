if (not held)
{
if (suit_mode)
{
	if (kcp(vk_right) and (x_pos < 1)) {x_pos++;}
	else if (kcp(vk_left) and (x_pos > 0)) {x_pos += -1;}
	
	if (kcp(vk_down) and (y_pos < 3)) {y_pos++;}
	else if (kcp(vk_up) and (y_pos > 0)) {y_pos += -1;}
	
	if (kcp(vk_space))
	{
		slot = (2*y_pos)+x_pos;
		if (item_names[slot] != "")
		{
			var tmp_msg;
			var old_suit = john.suit;
			scr_text_a(suits[slot][0]);
			if (old_suit == slot)
			{
				john.suit = -1;
				tmp_msg = 129;
			}
			else
			{
				john.suit = slot;
				tmp_msg = 128;
			}
			with (obj_player)
			{
				sprite_index = scr_john_spr();	
			}
			scr_msg_sys(tmp_msg);
			hud_cmds_ow.reading = true;
			state = 2;
			depth += 200;
		}
	}
	else if (kcp(vk_shift))
	{
		scr_snd(snd_cq_menu_blip_high);
		display = false;
		state = 2;
		fail = true;
	}
}
else
if (paint_mode)
{
	if 
	(
		kcp(vk_right)
		or kcp(vk_left)
		or kcp(vk_up)
		or kcp(vk_down)
		or kcp(vk_space)
		or kcp(vk_shift)
	)
	{
		scr_snd(snd_cq_menu_blip_high);
		display = false;
		state = 2;
		fail = true;
	}
	
}
else if (to_mode)
{
	if (kcp(vk_right)) {if (to_pos < 2) {to_pos++;}}
	else if (kcp(vk_left)) {if (to_pos > 0) {to_pos += -1;}}
	else if (kcp(vk_shift))
	{
		display = false;
		state = 2;
		fail = true;
		held = true;
	}
	else if (kcp(vk_space))
	{
		scr_snd(snd_cq_menu_blip);
		var tmp_targ = obj_ram.party[to_pos+1];
		var tmp_msg;
		scr_text_a(tmp_targ.name);
		if (tmp_targ.water)
		{
			tmp_targ.water = false;
			tmp_msg = 31;
		}
		else
		{
			tmp_msg = 32;
		}
		held = true;
		scr_item_remove(slot);
		scr_msg_sys(tmp_msg);
		if (in_btl)
		{
			with (hud_btl_cmds)
			{
				state = 2;
				run_btl = false;
			}
			with (obj_btl)
			{
				reading = true;
				state = 3;
			}
		}
		else
		{
			hud_cmds_ow.reading = true;
			depth += 200;
		}
		state = 2;
	}
}
else if (prompt_mode)
{
	if (not held)
	{
		if (kcp(vk_right)) {if (prompt_pos < 1) {prompt_pos = 1;}}
		else if (kcp(vk_left)) {if (prompt_pos > 0) {prompt_pos = 0;}}
		else if (kcp(vk_shift)) 
		{
			if (toss_mode)
			{
				prompt_mode = false;
				x_pos = 0; y_pos = 0;
				last_row = "";
			}
			else
			{
				display = false;
				held = true;
				fail = true;
				state = 2;
			}
		}
		else if (kcp(vk_space))
		{
			scr_snd(snd_cq_menu_blip);
			if (toss_mode)
			{
				if (prompt_pos > 0)
				{
					prompt_mode = false;
					x_pos = 0; y_pos = 0;
					last_row = "";
				}
				else
				{
					if (obj_ram.item_toss[item])
					{
						scr_text_a(obj_ram.item_names[item]);
						scr_msg(obj_ram.line_left_item);
						scr_item_remove(slot);
						scr_item_add(obj_ram.get_item);
						fail = false;
					}
					else
					{
						obj_room.reading = false;
						scr_msg(obj_ram.line_no_discard);
						fail = true;
					}
					with (par_text) {depth += -100;}
					reading = true;
					held = true;
				}
			}
			else
			{
				scr_item_use();
			}
		}
	}
}
else
if (state == 1)
{
	if (kcp(vk_right) and (y_pos < 3)) {x_pos = 1;}
	else if (kcp(vk_left) and (y_pos < 3)) {x_pos = 0;}
	else if (kcp(vk_down))
	{
		if (y_pos == 2)
		{
			if (x_pos == 0) and (has_paints)
			{
				y_pos++;
			}
			else if (x_pos == 1) and (has_suits)
			{
				y_pos++;
			}
		}
		else
		{
			if (y_pos < 2) {y_pos++;}
		}
	}
	else if (kcp(vk_up))
	{
		if (y_pos == 3)
		{
			y_pos += -1;
			x_pos = 0;
		}
		else
		{
			if (y_pos > 0) {y_pos += -1;}
		}
	}
	else if (kcp(vk_space))
	{
		var tmp_pos = (y_pos*2)+x_pos;
		slot = tmp_pos;
		if (tmp_pos == 6)
		{
			scr_snd(snd_cq_menu_blip);
			for (var i = 0; i < 6; i++)
			{
				if (obj_ram.paints[i])
				{
					item_names[i] = obj_ram.paint_names[i];
				} 
				else {item_names[i] = "";}
			}
			if (obj_ram.paints[6])
			{
				last_row = obj_ram.paint_names[6];
			}
			else {last_row = "";}
			paint_mode = true;
		}
		else if (tmp_pos == 7)
		{
			scr_snd(snd_cq_menu_blip);
			x_pos = 0; y_pos = 0;
			var tmp_suit;
			for (var i = 0; i < 8; i++)
			{
				tmp_suit = suits[i];
				if (tmp_suit[2])
				{
					item_names[i] = tmp_suit[0];
				}
				else
				{
					item_names[i] = "";
				}
				suit_mode = true;
				last_row = "";
			}
		}
		else
		{
			var tmp_item = items[tmp_pos];
			if (tmp_item != 0)
			{
				scr_snd(snd_cq_menu_blip);
				prompt_pos = 0;
				prompt_mode = true;
				if (toss_mode)
				{
					last_row = "   TOSS   KEEP";
				}
				else
				{
					switch (tmp_item)
					{
						case item_Burger:
						case item_DoubleBurger:
						case item_HotDog:
						case item_RosettaStone:
						case item_Banana:
							last_row = "   EAT    DISCARD";
							break;
						case item_HealthyDrink:
							last_row = "   DRINK  DISCARD";
							break;
						case item_WaterBottle:
							last_row = "   GIVE   DISCARD";
							break;
						case item_Candy:
							if (in_btl)
							{
								last_row = "   USE    DISCARD";
							}
							else
							{
								last_row = "   EAT    DISCARD";
							}
							break;
						default:
							last_row = "   USE    DISCARD";
							break;
					}
				}
				item = tmp_item;
			}
		}
	}
	else if (kcp(vk_shift) and (not toss_mode))
	{
		scr_snd(snd_cq_menu_blip_high);
		fail = true;
		state = 2;
		display = false;
		held = true;
	}
}
}

if (close_for_move)
{
	state = 2;
	with (hud_btl_cmds)
	{
		state = 2;
		run_btl = false;
	}
	use_move = true;
	close_for_move = false;
}

if (update)
{
	txt = "";
	items = obj_ram.items;
	item_count = obj_ram.item_count;
	paints = obj_ram.paints;
	has_boats = false;
	has_paints = false;
	var tmp_item;
	for (var i = 0; i < 6; i++)
	{
		tmp_item = items[i];
		if (tmp_item == item_Boats)
		or (tmp_item == item_MagicPaint) {has_boats = true;}
		if (paints[i]) {has_paints = true;}
		//if (jpn) {item_names[i] = scr_name_split(obj_ram.item_names[tmp_item], 9)}
		//else {item_names[i] = scr_item_name(tmp_item);}
		item_names[i] = scr_name_split(obj_ram.item_names[tmp_item], 9)
	}
	if (paints[6])
	{
		has_paints = true;
	}
	if (has_boats)
	{
		last_row = "";
		has_paints = false;
	}
	else
	if (has_paints)
	{
		//last_row = "Paints"; or oils
		if (has_suits) {last_row = scr_icon("white_paint") + string_repeat(" ", 10) + scr_icon("suit");}
		else {last_row = scr_icon("white_paint");}
	}
	else if (has_suits)
	{
		last_row = string_repeat(" ", 11) + scr_icon("suit");
	}
	update = false;
}	
if (close_update)
{
	if (use_move)
	{
		with (obj_btl)
		{
			state = 1;
			running = true;
		}
	}
	else
	if (fail)
	{
		if (in_btl)
		{
			depth += 200;
			scr_msg(obj_ram.line_btl_cmds);
			obj_text.display = true;
			hud_btl_cmds.reading = true;
		}
		else
		{
			hud_cmds_ow.state = 2;
		}
	}
	instance_destroy();
}
if (scr_check_reading())
{
	die(par_text);
	obj_room.reading = true;
	last_row = "";
	prompt_mode = false;
	prompt_pos = 0;
	held = false;
}