if (not held)
{
	if (kcp(vk_down)) {if (pos < 4) {pos++;}}	
	else if (kcp(vk_up)) {if (pos > 0) {pos += -1;}}
	else if (kcp(vk_shift))
	{
		scr_snd(snd_cq_menu_blip_high);
		close_shop = true;
	}
	else if (kcp(vk_space))
	{
		if (pos == 0)
		{
			scr_snd(snd_cq_menu_blip_high);
			close_shop = true;
		}
		else
		{
			scr_snd(snd_cq_menu_blip);
			var tmp_pos = pos-1;
			var tmp_item = shop[tmp_pos];
			item = tmp_item;
			cost = prices[tmp_pos];
			slot = scr_item_freeslot();
			var tmp_msg = 0;
			switch (type)
			{
				case SHOP_ITEM:
					cmd = "buy_item";
					scr_text_a(obj_ram.item_names[tmp_item]);
					tmp_msg = 97;
					held = true;
					scr_msg_sys_talk(tmp_msg);
					yesnoing = true;
					break;
				case SHOP_EQUIP:
					cmd = "buy_equip";	
					scr_text_a(obj_ram.equips[tmp_item][1]);
					tmp_msg = 98;
					held = true;
					scr_msg_sys_talk(tmp_msg);
					yesnoing = true;
					break;
				case SHOP_FOOD:
					cmd = "buy_food";	
					scr_text_a(obj_ram.food[tmp_item][0]);
					tmp_msg = 99;
					held = true;
					scr_msg_sys_talk(tmp_msg);
					yesnoing = true;
					break;
				case SHOP_HOTEL:
					cmd = "buy_room";	
					cost = prices[tmp_pos];
					var tmp_room = "";
					switch (tmp_pos)
					{
						case 0: tmp_room = "small room"; break;
						case 1: tmp_room = "standard room"; break;
						case 2: tmp_room = "suite room"; break;
						case 3: tmp_room = "imperial room"; break;
					}
					scr_text_a(tmp_room);
					tmp_msg = 100;
					held = true;
					scr_msg_sys_talk(tmp_msg);
					yesnoing = true;
					break;
				case SHOP_AIRPORT:
					var has_tickets = false;
					switch (tmp_pos)
					{
						case 0: item = item_BotsonTicket; break;
						case 1: item = item_FreattleTicket; break;
						case 3: item = item_WahaiiTicket; break;
					}
					has_tickets = scr_item_has(item);
					if (has_tickets)
					{
						scr_msg_sys_talk(101);
						reading = true;
						held = true;
						cmd = "plane";
					}
					else
					{
						scr_msg_sys_talk(102);	
						reading = true;
						held = true;
						cmd = "exit";
					}
					break;
				case SHOP_DON:
					item = pos-1;
					cmd = "buy_paint";
					scr_text_a(paint_icons[item] + "Paint");
					scr_msg_sys_talk(103);
					held = true;
					yesnoing = true;
					break;
			}
		}
	}
}

if (scr_check_reading())
{
	switch (cmd)
	{
		case "ini":
			held = false;
			break;
		case "exit":
			scr_warp(obj_ram.last_room);
			break;
		case "equip_again":
			cmd = "shop_again";
			scr_msg_sys_talk(104);
			yesnoing = true;
			break;
		case "plane":
			var tmp_dest = rm_ow;
			var tmp_pt = 1;
			switch (pos-1)
			{
				case 0: 
					tmp_dest = rm_ow; tmp_pt = 29;  
					scr_city_unlock(city_Botson);
					break;
				case 1: 
					tmp_dest = rm_city; tmp_pt = 12; 
					scr_city_unlock(town_Melville);
					break;
				case 3: 
					with (obj_ram) 
					{
						cue_cuts = cuts_wahaii;
						save_room = rm_wahaii;
					}
					scr_town_unlock(town_Lonohuhu);
					tmp_dest = rm_wahaii; tmp_pt = 1; 
					break;
			}
			scr_text_b(names[pos-1]);
			scr_cuts_load(obj_ram.cuts_airplane);
			scr_item_delete(item);
			scr_cuts_warp(tmp_dest, tmp_pt);
			room_goto(rm_room);
			break;
		case "sleep":
			var lvl = john.lvl;
			var explode = false;
			switch (pos)
			{
				case 1: explode = (lvl > 10); break;
				case 2: explode = (lvl > 16); break;
				case 3: explode = (lvl > 24); break;
			}
			if (explode)
			{
				with (obj_ram)
				{
					save_room = last_room;
					last_room = room;
					explode_char = liz;
					scr_cuts_load(cuts_explode_hotel);
				}
			}
			else
			{
				with (obj_ram)
				{
					save_room = last_room;
					last_room = room;
					scr_cuts_load(cuts_hotel);
				}
			}
			room_goto(rm_room);
			break;
		case "eat":
			var lvl = john.lvl;
			var explode = false;
			switch (pos)
			{
				case 1: explode = (lvl > 10); break;
				case 2: explode = (lvl > 16); break;
				case 3: explode = (lvl > 24); break;
			}
			if (explode)
			{
				with (obj_ram)
				{
					save_room = last_room;
					last_room = room;
					explode_char = ely;
					scr_cuts_load(cuts_explode_food);
					room_goto(rm_room);
				}
			}
			else
			{
				scr_destress();
				if (foods[pos-1] == food_Tomatoes) 
				and (scr_item_has(item_WhitePaint)) 
				{
					scr_item_delete(item_WhitePaint);
					scr_cuts_load(obj_ram.cuts_tomatoes);
				}
				else {scr_cuts_load(obj_ram.cuts_food);}
				room_goto(rm_room);
			}
			break;
	}
}
else if (scr_check_yesno())
{
	switch (cmd)
	{
		case "buy_paint":
			reading = true;
			cmd = "exit";
			if (obj_ram.yesno)
			{
				if (item == 1) and (scr_item_has(item_Banana))
				{
					var tmp_money = obj_ram.money;
					var tmp_price = obj_ram.prices[price_Paint];
					if (tmp_money < tmp_price)
					{
						scr_msg_sys_talk(105);
					}
					else
					{
						obj_ram.money += -tmp_price;
						hud_dsp_money.update = true;
						scr_item_delete(item_Banana);
						scr_msg_sys_talk(106);
					}
				}
				else
				{
					scr_text_a(materials[item]);
					scr_msg_sys_talk(107);
				}
			}
			else
			{
				scr_msg(bye_msg);
			}
			break;
		case "buy_item":
			if (obj_ram.yesno)
			{
				cmd = "shop_again";
				if (slot == -1)
				{
					cmd = "exit";
					scr_msg_sys_talk(108);
					reading = true;
				}
				else
				if (obj_ram.money < cost)
				{
					cmd = "equip_again";
					scr_msg_sys_talk(109);
					reading = true;
				}
				else
				{
					cmd = "shop_again";
					scr_item_add(item);
					obj_ram.money += -cost;
					hud_dsp_money.update = true;
					scr_msg_sys_talk(110);
					yesnoing = true;
				}
			}
			else
			{
				close_shop = true;
			}
			break;
		case "buy_equip":
			if (obj_ram.yesno)
			{
				type = obj_ram.equips[item][0];
				current = john.equip[type];
				if (obj_ram.money < cost)
				{
					cmd = "equip_again";
					scr_msg_sys_talk(109);
					reading = true;
				}
				else if (item == current)
				{
					cmd = "equip_again";
					scr_msg_sys_talk(111);
					reading = true;
				}
				else if (item < current)
				{
					cmd = "equip_again";
					scr_msg_sys_talk(112);
					reading = true;
				}
				else
				{
					cmd = "equip_again";
					john.equip[type] = item;
					obj_ram.money += -cost;
					hud_dsp_money.update = true;
					scr_msg_sys_talk(113);
					reading = true;
				}
			}
			else
			{
				close_shop = true;
			}
			break;
		case "buy_food":
			if (obj_ram.yesno)
			{
				if (obj_ram.money < cost)
				{
					cmd = "exit";
					scr_msg_sys_talk(114);
					reading = true;
				}
				else
				{
					cmd = "eat";
					obj_ram.money += -cost;
					hud_dsp_money.update = true;
					scr_msg_sys_talk(115);
					reading = true;
				}
			}
			else
			{
				close_shop = true;
			}
			break;
		case "buy_room":
			if (obj_ram.yesno)
			{
				if (cost > obj_ram.money)
				{
					cmd = "exit";
					scr_msg_sys_talk(114);
					reading = true;
					
				}
				else
				{
					scr_msg_sys_talk(116);	
					obj_ram.money += -cost;
					hud_dsp_money.update = true;
					reading = true;
					cmd = "sleep";
				}
			}
			else
			{
				close_shop = true;
			}
			break;
		case "shop_again":
			if (obj_ram.yesno)
			{
				held = false;
				pos = 0;
				scr_msg_sys_talk(117);
			}
			else
			{
				close_shop = true;
			}
			break;
		case "after_sleep":
			scr_msg_sys_talk(118);
			reading = true;
			cmd = "exit";
			break;
	}
}

if (close_shop)
{
	held = true;
	if (jpn) {scr_msg("[" + bye_msg + "]");}
	else {scr_msg(bye_msg);}
	cmd = "exit";
	reading = true;
	//obj_text.display = false;
	close_shop = false;	
}