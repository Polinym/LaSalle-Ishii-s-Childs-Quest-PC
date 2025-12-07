function scr_check_weak()
{
	with (obj_ram)
	{
		weak = (john.hp < floor(john.max_hp*0.3));
	}
}