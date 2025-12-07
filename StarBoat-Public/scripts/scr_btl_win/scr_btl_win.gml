function scr_btl_win()
{
	enemy.visible = false;
	var tmp_pp = enemy.pop;
	var tmp_money = enemy.money;
	if (scr_suit(suit_Master)) 
	{
		tmp_pp = round(tmp_pp*0.25);
		tmp_money = round(tmp_money/2);
	}
	else if (scr_suit(suit_Bird))
	{
		tmp_pp = round(tmp_pp*3);
		tmp_money = round(tmp_money*2);
	}
	
	
	var tmp_msg;
	scr_bgm_once(bgm_VictoryIsOurs);
	if (tmp_pp < 1)
	{
		tmp_msg = 74;
		state = 9;
	}
	else
	{
		if (john.lvl >= obj_ram.max_level)
		{
			scr_text_a(string(tmp_money));
			tmp_msg = 75;
			obj_ram.money += tmp_money;
			state = 9;
		}
		else
		{
			scr_text_a(string(tmp_pp));
			scr_text_b(string(tmp_money));
			tmp_msg = 76;
			obj_ram.money += tmp_money;
			john.pp += tmp_pp;
			state = 9;
		}
		scr_check_levelup();
	}
	scr_msg_sys(tmp_msg);
	reading = true;
	running = false;
}