function scr_dmg_enm(arg_atk, arg_def)
{
	
	var dmg = ceil(((arg_atk*2)-arg_def) / 4);
	dmg = (dmg >> 1);
	if (dmg < 1) {dmg = 0;}
	if (john.guarding) {dmg = dmg >> 1;}
	dmg += (dmg & scr_rng(0, 0xff));
	if (curse and (dmg > 0)) {dmg = dmg * 2;}
	
	return dmg;
}