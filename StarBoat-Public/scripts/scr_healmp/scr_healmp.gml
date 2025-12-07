function scr_healmp(arg_amt)
{
	with (obj_ram.john)
	{
		mp += arg_amt;
		if (mp > max_mp) {mp = max_mp;}
	}
}