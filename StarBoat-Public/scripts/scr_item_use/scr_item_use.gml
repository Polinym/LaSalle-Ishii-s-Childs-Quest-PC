function scr_item_use()
{
	var tmp_msg = "";
	var tmp_item = item;
	if (prompt_pos == 0)
	{
		var tmp_char = obj_ram.party[0];
		var tmp_name = scr_item_use_name(ref_item_names[tmp_item]);
		scr_text_a(tmp_name);
		switch (tmp_item)
		{
			case item_Jewels:
				tmp_msg = 36;
				break;
			case item_Grace:
				if (in_btl)
				{
					tmp_msg = 37
					obj_btl.curse = false;
				}
				else
				{
					tmp_msg = 33;
				}
				break;
			case item_MagicPaint:
				tmp_msg = 38;
				break;
			case item_WaterBottle:
				prompt_mode = false;
				to_mode = true;
				//last_row = " TO?  MEG  LIZ  ELY";
				last_row = " TO?  ";
				var tmp_char;
				var tmp_icon = scr_icon("water");
				for (var i = 1; i < 4; i++)
				{
					tmp_char = obj_ram.party[i];
					last_row += string_upper(tmp_char.name);
					if (tmp_char.water)
					{
						last_row += tmp_icon + " ";
					}
					else
					{
						last_row += "  ";
					}
				}
				break;
			case item_YummyBanana:
				scr_text_b("~h4");
				tmp_msg = 39;
				scr_item_remove(slot);
				break;
			case item_DoubleBurger:
				scr_text_b("~h1");
				tmp_msg = 39;
				scr_item_remove(slot);
				break;
			case item_Candy:
				if (in_btl)
				{
					john.btl_move = 4;
					close_for_move = true;
				}
				else
				{
					scr_text_b("~h0");
					tmp_msg = 39;
				}
				scr_item_remove(slot);
				break;
			case item_Burger:
			case item_Banana:
				scr_text_b("~h0");
				tmp_msg = 39;
				scr_item_remove(slot);
				break;
			case item_WarpRing:
				tmp_msg = 40;
				scr_item_remove(slot); 
				break;
			case item_Nicesword:
				if (in_btl)
				{
					john.btl_move = 5;
					close_for_move = true;
				}
				else
				{
					tmp_msg = 41;
				}
				break;
			case item_ButterSword:
				if (in_btl)
				{
					john.btl_move = 6;
					close_for_move = true;
				}
				else
				{
					tmp_msg = 42;
				}
				break;
			case item_SCape:
				if (in_btl)
				{
					tmp_msg = 43;
					scr_item_remove(slot);
				}
				else
				{
					tmp_msg = 44;
					if (not obj_ram.bonus)
					{
						scr_item_remove(slot);
					}
				}
				break;
			case item_RosettaStone:
			case item_WhitePaint:
				tmp_msg = 44;
				if (not obj_ram.bonus)
				{
					scr_item_remove(slot);
				}
				break;
			case item_HealthyDrink:
				if (scr_suit(suit_Cursed))
				{
					tmp_msg = 132;
				}
				else
				{
					if (tmp_char.hex)
					{
						tmp_char.hex = false;
						tmp_msg = 45;
					}
					else
					{
						if (obj_ram.bonus)
						{
							tmp_msg = 126;
						}
						else
						{
							tmp_msg = 46;
						}
					}
					scr_item_remove(slot);
				}
				break;
			case item_SecretLens:
				if (obj_ram.secret_lens)
				{
					tmp_msg = 48;
				}
				else
				{
					tmp_msg = 47;
				}
				break;
			case item_CheeseSmoothie:
				tmp_msg = 127;
				scr_item_remove(slot);
				break;
			default:
				scr_text_a(scr_name_split(tmp_name, 13));
				tmp_msg = 33;
				break;
		}
	}
	else
	{
		if (not obj_ram.item_toss[tmp_item])
		{
			tmp_msg = 34
		}
		else
		{
			scr_text_a(ref_item_names[tmp_item]);
			tmp_msg = 35;
			scr_item_remove(slot);
		}
	}
	if (tmp_msg != "")
	{
		state = 2;
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
		}
		depth += 200;
		var tmp_msg2 = string_replace_all(obj_script_menu.line[tmp_msg], ">", "/p|/r");
		scr_msg(tmp_msg2 + "/p");
		held = true;
	}
}