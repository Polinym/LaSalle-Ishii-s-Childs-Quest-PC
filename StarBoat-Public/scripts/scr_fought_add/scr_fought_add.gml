function scr_fought_add(arg_enemy)
{
	with (obj_ram) 
	{
		fought[fought_count] = arg_enemy;
		fought_count++;
	}
}