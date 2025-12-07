function scr_town_unlock(arg_town)
{
	obj_ram.towns[arg_town][3] = true;
}