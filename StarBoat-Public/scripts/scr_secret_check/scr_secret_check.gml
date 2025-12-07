function scr_secret_check(arg_hash)
{
	with (obj_ram) {return scr_hash_check(arg_hash, secrets, secret_count);}
}