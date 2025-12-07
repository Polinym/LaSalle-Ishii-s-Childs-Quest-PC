function scr_set_explode()
{
	with (obj_ram)
	{
		menu_slot = clamp(scr_rng(0, ceil(john.lvl/2)), 0, 15);
	}
}