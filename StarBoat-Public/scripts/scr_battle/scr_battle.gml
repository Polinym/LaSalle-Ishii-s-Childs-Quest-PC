function scr_battle(arg_enemy)
{
	obj_ram.enemy = arg_enemy;
	if (ie(obj_text)) {obj_text.state = 255;}
	scr_btl();
}