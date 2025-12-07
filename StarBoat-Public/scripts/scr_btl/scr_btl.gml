function scr_btl()
{
	with (obj_ram)
	{
		dest = rm_btl;
		scr_set_respawn();
		scr_open(obj_warp_btl);
	}
}