function scr_btl_win_stress()
{
	var tmp_pp = enemy.pop;
	var tmp_money = enemy.money;
	scr_bgm_once(bgm_VictoryIsOurs);
	if (scottish)
	{
		var tmp_msg = 74;
	}
	else
	{
		scr_text_a(string(tmp_pp));
		scr_text_b(string(tmp_money));
		var tmp_msg = 77;
	}
	john.pp += tmp_pp;
	obj_ram.money += tmp_money;
	scr_check_levelup();
	scr_msg_sys(tmp_msg);
	running = false;
	reading = true;
}