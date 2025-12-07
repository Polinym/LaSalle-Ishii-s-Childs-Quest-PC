function scr_secret_add(arg_hash)
{
	with (obj_ram)
	{
		secrets[secret_count] = arg_hash;
		secret_count++;
	}
}