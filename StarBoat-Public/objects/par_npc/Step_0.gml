if (not obj_ram.paused)
{
	if (ani_count < ani_wait) {ani_count++;}
	else
	{
		ani_frame = not ani_frame;
		image_index = (dir*2)+ani_frame;
		ani_count = 0;	
	}
}