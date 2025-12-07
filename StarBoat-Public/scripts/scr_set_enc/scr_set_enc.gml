function scr_set_enc(arg_index, arg_e1, arg_e2, arg_e3, arg_e4)
{
	with (obj_ram)
	{
		enc[arg_index] = [arg_e1, arg_e2, arg_e3, arg_e4];
	}
}