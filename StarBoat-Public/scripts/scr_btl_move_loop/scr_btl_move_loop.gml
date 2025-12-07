function scr_btl_move_loop()
{
	var tmp_msg = 0;
	turn++;
	john.guarding = false;
	var explode = false;
	var tmp_char = -1;
	for (var i = 1; i < 4; i++)
	{
		tmp_char = obj_ram.party[i];
		if (tmp_char.stress > 99) {explode = true; break;}
	}
	if (john.hp < 1)
	{
		scr_bgm_once(bgm_IGiveUp);
		obj_ram.dead = true;
		tmp_msg = 71;
		state = 12;
	}
	else if (explode)
	{
		scr_bgm_once(bgm_IGiveUp);
		obj_ram.dead = true;
		enemy_targ = tmp_char;
		scr_text_a(tmp_char.name);
		tmp_msg = 72;
		state = 10;
	}
	else if (turn >= enemy.stress)
	{
		tmp_msg = 73;
		state = 7;
	}
	else
	{
		state = -1;
	}
	if (tmp_msg != 0)
	{
		scr_msg_sys(tmp_msg);
		running = false;
		reading = true;
	}
}