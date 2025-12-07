function scr_dmg_mng(arg_amt, arg_def)
{
	//Nyce is base 0x70
	//Nycamore is base 0xf0
	var dmg = ceil(((arg_amt * 2) - arg_def) / 4);
	if (dmg > obj_ram.max_damage) {return obj_ram.max_damage;}
	var dmg2 = (dmg >> 2);
	if (dmg < 1) {dmg = 0;}
	dmg += (scr_rng(0, 0xff) & (dmg >> 2)) + (obj_ram.random_number & 0x1);
	return dmg;
	
}