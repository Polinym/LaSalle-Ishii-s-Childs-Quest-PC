function scr_warp2(arg_dest)
{
	with (obj_ram)
	{
		warped = true;
		enc_steps_to = -1;
		dest = arg_dest;
		icd(view_xview, view_yview, -999, obj_warp);
	}
}