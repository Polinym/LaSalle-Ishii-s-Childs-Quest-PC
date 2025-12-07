if (scr_suit(suit_Cursed)) {john.hex = true;}
depth = -999;
random_number++;
if (random_number > 0xff) {random_number = 0;}

if (secret_lens)
{
	if (secret_alpha < 0.5) {secret_alpha += 0.05;}	
}
else
{
	if (secret_alpha > 0) {secret_alpha += -0.02;}
}

/*
if (kcp(ord("R"))) {game_restart();}
else if (kcp(ord("S"))) {scr_save();}
else if (kcp(ord("M")))
{
	mute = not mute;
	if (mute) {scr_bgm_stop();}
}
*/
if (kc(vk_shift))
{
	if (kcp(ord("R"))) {game_restart();}
	else if (kcp(ord("M"))) 
	{
		mute = not mute;
		if (mute) {scr_bgm_stop();}
	}
}

if (keyboard_check(vk_shift))
{
	if (kcp(ord("R"))) {game_restart();}
	else if (kcp(ord("L"))) {enc_steps_to = -1;}
	else if (kcp(ord("A"))) {wtw = not wtw;}
	else if (kcp(ord("D"))) 
	{
		show_dbg = not show_dbg;
		show_debug_overlay(show_dbg);
	}
	else if (kcp(ord("M"))) 
	{
		mute = not mute;
		if (mute) {scr_bgm_stop();}
	}
	
	else if (kcp(ord("W"))) 
	{
		var tmp = get_asset("Which room?");
		if (tmp != -1)
		{
			goto_pt = 1;
			if (tmp == rm_ow) {goto_pt = 30;}
			scr_warp(tmp);	
		}
	}
	else if (kcp(ord("P")))
	{
		switch (get_str("Enter a command!"))
		{
			case "save": scr_save(); break;
			case "load": scr_load(); break;
			case "file_index": file_index = get_int("Enter a file index."); break;
			case "item":
				var item = get_int("Which item?");
				if (item != -1)
				{
					scr_item_add(item);	
				}
				break;
			case "time": obj_concert.time = 999; break;
			case "free_win": obj_concert.ap_to_win = 1; break;
			case "hp":
				var tmp_hp = get_int("What HP?");
				john.hp = clamp(tmp_hp, 1, john.max_hp);
				break;
			case "mp":
				var tmp_hp = get_int("What MP?");
				john.mp = clamp(tmp_hp, 1, john.max_mp);
				break;
			case "stress":
				var tmp_stress = clamp(get_int("What amount of Stress?"), 0, 99);
				for (var i = 1; i < 4; i++)
				{
					party[i].stress = tmp_stress;
				}
				break;
			case "water": with (meg) {water = not water;}; break;
			case "water2": with (liz) {water = not water;}; break;
			case "water3": with (ely) {water = not water;}; break;
			case "hex": with (john) {hex = not hex;} break;
			case "heal": scr_fullheal(); break;
			case "relax": scr_destress(); break;
			case "full":
				for (var i = item_count; i < 6; i++)
				{
					scr_item_add(item_Banana);
				}
				break;
			case "stars":
				with (john)
				{
					equip = [mic_Stars, dress_Stars, shoes_Stars, makeup_Stars];	
				}
				break;
			case "bare":
				with (john)
				{
					equip = [mic_None, dress_Casual, shoes_Barefoot, makeup_None];
				}
				break;
			case "paint":
				var tmp_paint = get_str("Which Paint?");
				switch (string_lower(tmp_paint))
				{
					case "red": paints[paint_Red] = true; break;
					case "orange": paints[paint_Orange] = true; break;
					case "yellow": paints[paint_Yellow] = true; break;
					case "green": paints[paint_Green] = true; break;
					case "blue": paints[paint_Blue] = true; break;
					case "indigo": paints[paint_Indigo] = true; break;
					case "violet": paints[paint_Violet] = true; break;
				}
				break;
			case "paints":
				for (var i = 0; i < 7; i++)
				{
					paints[i] = true;	
				}
				break;
			case "monshou_no_nazo":
			case "rich":
				money = 999999;
				break;
			case "royalties":
				scr_flag_unset(flag_GotRoyalties);
				break;
			case "meow":
			case "level":
			case "lvl": scr_set_level(clamp(get_int("What level?"), 1, 32)); break;
			case "scottish":
				scr_cuts_load(cuts_boss_default);
				scr_warp(rm_room);
				if (ie(obj_player))
				{
					obj_player.state = "dbg";	
				}
				break;
			case "yield":
				with (obj_btl)
				{
					turn = enemy.stress;
				}
				break;
			case "botw":
				for (var i = 0; i < 8; i++)
				{
					cities[i][3] = true;
					towns[i][3] = true;
				}
				break;
			case "flag":
				var tmp_flag = get_int("Which flag?");
				if (tmp_flag > -1) and (tmp_flag < 32)
				{
					scr_flag_set(tmp_flag);
				}
				break;
				break;
			case "unset":
			case "flag_unset":
				var tmp_flag = get_int("Which flag?");
				if (tmp_flag > -1) and (tmp_flag < 32)
				{
					scr_flag_unset(tmp_flag);
				}
				break;
		}
	}
	
}
