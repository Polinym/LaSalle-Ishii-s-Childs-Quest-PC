if (not scr_flag(flag_ActiveTurtle)) {instance_destroy();}
else
{
	x += (obj_ram.turtle_x*16);
	y += (obj_ram.turtle_y*16);
	ani_count = 0; ani_wait = 15;
	ani_frame = 0;
}