function scr_dmg_plr(arg_atk, arg_def)
{
	var dmg = floor( ((arg_atk*2) - arg_def) / 4 );
	if (dmg < 1) {dmg = 0;}
	var tmp_rnd = (obj_ram.random_number & 0x1);
	dmg += ((dmg >> 2) & scr_rng(0, 0xff)) + tmp_rnd;
	if (dmg > obj_ram.max_damage)
	{
		dmg = obj_ram.max_damage;	
	}
	return dmg;
}