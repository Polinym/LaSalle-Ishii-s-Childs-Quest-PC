function scr_heal(arg_amt)
{
	with (obj_ram.john)
	{
		hp = clamp(hp+arg_amt, 0, max_hp);
	}
	if (room == rm_btl) {scr_check_weak();}
	if (ie(hud_cmds_ow)) {hud_cmds_ow.update = true;}
}