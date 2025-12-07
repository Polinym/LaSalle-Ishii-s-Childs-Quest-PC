function scr_btl_plr_move()
{
	var tmp_msg = "";
	switch (john.btl_move)
	{
		case 0:
			var tmp_result;
			if (scr_suit(suit_Fire)) 
			{
				tmp_result = scr_pchance(1, 4);
				with (john)
				{
					hp += round(max_hp*0.05);
					if (hp < 1) {hp = 1;}
				}
			}
			else {tmp_result = scr_pchance(1, 10);}
			if (scr_suit(suit_Ice)) {tmp_result = false;}

			if (tmp_result)
			{
				tmp_msg = 52;
				crit = true;
			}
			else
			{
				scr_text_a(attalk_lines[scr_rng(0, clamp(john.lvl+1, 0, 15))]);
				tmp_msg = 53;
			}
			break;
		case 1:
			john.guarding = true; state++;
			tmp_msg = 54;
			break;
		case 2:
			var result = false;
			switch (enemy_index)
			{
				case enm_Scottish:
				case enm_SquiddyBar1:
				case enm_SquiddyBar2:
				case enm_SquiddyBar3:
				case enm_SquiddyBar4:
				case enm_SquiddyBar5:
				case enm_SquiddyBar6:
				case enm_SquiddyBar7:
					break;
				default:
					var flee_chance = 0x8;
					if ((enemy.atk >> 2) < john.talk) {flee_chance = 0x40;}
					var tmp_nmb = obj_ram.random_number;
					if (tmp_nmb < flee_chance) {result = true;}
					if (turn > 3)
					{
						result = ((tmp_nmb & 0x1) == 0)
					}
					break;
			}
			if (scr_suit(suit_Bird)) {result = true;}
			else if (scr_suit(suit_Steel)) {result = false;}
			if (result)
			{
				tmp_msg = 55;
				state = 9;
			}
			else
			{
				tmp_msg = 56;
				state++;
			}
			break;
		case 3:
			switch (john.btl_arg)
			{
				case mng_BLJ:
					scr_snd(bgm_IMessedUp);
					tmp_msg = 57;
					state = 2;
					break;
				case mng_Nyce:
				case mng_Nycamore:
					tmp_msg = 58;
					break;
				case mng_Ease:
					scr_text_a("~h2");
					tmp_msg = 78;
					state = 2;
					break;
				case mng_Easamore:
					scr_text_a("~h3");
					tmp_msg = 78;
					state = 2;
					break;
				case mng_Easaramost:
					scr_text_a("~h4");
					tmp_msg = 78;
					state = 2;
					break;
				case mng_Relaxanos:
					tmp_msg = 82;
					state = 2;
					break;
				case mng_Acwaranos:
					tmp_msg = 80;
					state = 2;
					break;
			}
			break;
		case 4: tmp_msg = 59; break;
		case 5: tmp_msg = 60; break;
		case 6: tmp_msg = 61; break;
	}
	scr_msg_sys(tmp_msg);
	running = false;
	reading = true;
}