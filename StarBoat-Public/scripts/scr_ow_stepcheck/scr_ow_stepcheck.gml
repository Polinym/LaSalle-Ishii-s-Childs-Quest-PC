function scr_ow_stepcheck()
{
	if (scr_suit(suit_Light)) {scr_heal(1);}
	if (scr_suit(suit_Master)) {scr_healmp(1);}
	
	
	if (place_meeting(x, y, obj_gate) and not on_gate)
	{
		var tmp_gate = instance_place(x, y, obj_gate);
		if (tmp_gate.usable)
		{
			obj_ram.goto_pt = tmp_gate.goto_pt;
			obj_ram.goto_dir = tmp_gate.dest_dir;
			do_blj = tmp_gate.warp;
		
			obj_ram.glow = 0;
		
			obj_ram.dest = tmp_gate.dest;
			//scr_warp(tmp_gate.dest);
			state = "warp";
			return true;
		}
	}
	else
	if (place_meeting(x, y, obj_ow_shop))
	{
		var tmp_shop = instance_place(x, y, obj_ow_shop);
		obj_ram.menu_shop = tmp_shop.shop;
		obj_ram.menu_shop_type = tmp_shop.shop_type;
		obj_ram.dest = rm_shop;
		scr_set_respawn();
		state = "warp3";
		return true;
	}
	else if (place_meeting(x, y, obj_espot))
	{
		var tmp_espot = instance_place(x, y, obj_espot);	
		obj_ram.enemy = tmp_espot.enemy;
		scr_btl();
	}
	else if (place_meeting(x, y, obj_cuts))
	{
		var tmp_cuts = instance_place(x, y, obj_cuts);
		with (tmp_cuts)
		{
			obj_ram.room_line = line;
			obj_ram.room_bck = bck;
			/*
			if (obj_ram.jpn)
			{
				var tmp_name = sprite_get_name(port);
				var tmp_index = asset_get_index(tmp_name + "_jpn");
				if (tmp_index != -1)
				{
					port = tmp_index;	
				}
				else
				{
					switch (port)
					{
						case spr_enm_Rhiannon: port = spr_port_rhiannon_jpn; break;	
					}
				}
			}
			*/
			obj_ram.room_port = port;
			obj_ram.room_ui = ui;
			obj_ram.room_take = take;
			obj_ram.room_arg = arg;
			obj_ram.aud_hall = hall;
			obj_ram.room_bgm = bgm;
		}
		obj_ram.dest = rm_room;
		scr_set_respawn();
		state = "warp3";
		return true;
	}
	else
	{
		var on_sea = ((l_seablock != -1) and place_meeting(x, y, l_seablock));
		var on_enc = ((l_enc != -1) and (place_meeting(x, y, l_enc)));
		var tmp_char;
		switch (room)
		{
			case rm_english:
			case rm_english2:
			case rm_town_green:
			case rm_town_yellow:
			case rm_town_other:
			case rm_town_gray:
			case rm_town_wahaii:
				break;
			default:
				for (var i = 1; i < 4; i++)
				{
					tmp_char = obj_ram.party[i];
					if (tmp_char.water)
					{
						var tmp_dec = true;
						if (scr_suit(suit_Ice) and (scr_pchance(2, 3))) {tmp_dec = false;}
						if (tmp_dec) {tmp_char.stress++;}
						if (tmp_char.stress > 99)
						{
							need_water = false;
							state = "explode";
							explode_char = tmp_char;
							return true;
						}
					}
				}
				break;
		}
		if ( (on_sea or on_enc) and (not obj_ram.peaceful) )
		{
			var enc_steps = obj_ram.enc_steps_to;
			if (enc_steps > 0)
			{
				enc_steps += -1;
				if (enc_steps == 0) and (not scr_item_has(item_MasterCape))
				{
					var tmp_char = scr_water_char();
					var water_chance = scr_pchance(1, 16);
					if (scr_suit(suit_Ice)) {water_chance = scr_pchance(1, 32);}
					if (water_chance and (tmp_char != -1)) or kc(ord("O"))
					{
						tmp_char.water = true;
						obj_ram.fought = true;
						scr_enc_update();
						enc_steps = obj_ram.enc_steps_to;
						need_water = true;
						obj_ram.explode_char = tmp_char;
						explode_char = tmp_char;
						state = "explode";
						return true;
					}
					else
					{
						state = "btl";
						obj_ram.menu_slot = get_tile(l_enc, x, y);
						obj_ram.fought = true;
						if (obj_ram.menu_slot > 0) or (on_sea)
						{
							if (on_sea)
							{
								with (obj_ram) 
								{
									enemy = squids[scr_rng(0, 9)];
									btl_bck = bck_ocean;
								}
							}
							else
							{
								with (obj_ram)
								{
									var tmp_count = -1;
									var tmp_enc = enc[menu_slot];
									for (var i = 0; i < 4; i++)
									{
										if (tmp_enc[i] == -1) {break;}
										tmp_count++;
									}
									enemy = tmp_enc[scr_rng(0, tmp_count)];
									enc_steps_to = -1;
								}
							}
							scr_btl();
							return true;
						}
					}
				}
				obj_ram.enc_steps_to = enc_steps;
			}
		}
	}
	if (on_gate) 
	{
		if (not place_meeting(x, y, obj_gate))
		{
			on_gate = false; 
		}
	}
	return false;
}