function scr_hud_look()
{
	var tmp_x = obj_player.x;
	var tmp_y = obj_player.y;
	var tmp_line = obj_script_menu.line;
	var tmp_msg = tmp_line[83];
	var tmp_secret = scr_player_on(tmp_x, tmp_y, obj_secret);
	if (tmp_secret != -1)
	{
		var tmp_type = tmp_secret.type;
		switch (tmp_type)
		{
			case SECRET_PAINT:
				obj_ram.paints[paint_Indigo] = true;
				tmp_msg += tmp_line[84];
				break;
			case SECRET_FIELD:
				tmp_msg += tmp_line[85];
				break;
			case SECRET_SUIT:
				var tmp_suit = obj_ram.suits[tmp_secret.item];
				tmp_suit[2] = true;
				scr_text_a(tmp_suit[0]);
				scr_text_b(tmp_suit[1]);
				if (obj_ram.bonus)
				{
					tmp_suit[2] = true;
					tmp_msg += tmp_line[130];
				}
				else
				{
					tmp_msg += tmp_line[86];
				}
				break;
			case SECRET_ITEM:
				var tmp_item = tmp_secret.item;
				var tmp_slot = scr_item_freeslot();
				scr_text_a(obj_ram.item_names[tmp_item]);
				if (tmp_slot > -1)
				{
					tmp_msg += tmp_line[87];
					scr_item_add(tmp_item);
				}
				else
				{
					tmp_msg += tmp_line[88];
				}
				break;
			case SECRET_EQUIP:
				var tmp_item = tmp_secret.item;
				var tmp_equip = obj_ram.equips[tmp_item];
				tmp_msg += tmp_line[89];
				//john.equip[tmp_equip[0]] = tmp_equip[tmp_item]
				break;
			case SECRET_MONEY:
				var tmp_money = tmp_secret.money;
				//if (obj_ram.bonus) {tmp_money = scr_exchange(tmp_money);}
				obj_ram.money += tmp_money;
				scr_text_a(string(tmp_money));
				tmp_msg += tmp_line[125];
				break;
		}
		if (not tmp_secret.infinite)
		{
			scr_secret_add(tmp_secret.hash);
			with (tmp_secret) {instance_destroy();}
		}
		
	}
	else if (scr_player_on(tmp_x, tmp_y, obj_turtle_ow))
	{
		tmp_msg += tmp_line[90];
	}
	else if (scr_player_on(tmp_x, tmp_y, obj_bottle))
	{
		scr_flag_unset(flag_BottleActive);
		scr_set_respawn();
		tmp_msg += tmp_line[91];
	}
	else
	{
		if (scr_suit(suit_Banana) and (scr_item_freeslot(obj_ram.john) != -1))
		{
			scr_item_add(item_YummyBanana);
			tmp_msg += tmp_line[131];
		}
		else
		{
			tmp_msg += tmp_line[92];
		}
	}
	scr_msg(tmp_msg);
	reading = true;
}