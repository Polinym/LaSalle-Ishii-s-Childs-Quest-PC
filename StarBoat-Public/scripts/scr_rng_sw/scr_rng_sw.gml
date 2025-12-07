function scr_rng_sw()
{
	/*
	with (obj_ram)
	{
		rng_b = ASL( (ASL(rng_b) ^ rng_a) ^ 0x80);
		rng_a = (rng_a << 1);
		rng_b = (rng_b << 1);
		var tmp_val = ASL(ASL(rng_c)) - rng_c;
		rng_c = tmp_val;
		return ((tmp_val ^ rng_a) ^ rng_b);
	}
	*/
}