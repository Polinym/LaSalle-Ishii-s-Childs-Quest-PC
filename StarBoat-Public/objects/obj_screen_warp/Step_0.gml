if (ani_count < ani_wait) {ani_count++;}
else
{
	image_index = not image_index;
	ani_count = 0;
}


//if (wait_count < wait_wait) {wait_count++;}
//else
if (active)
{
	if (not audio_is_playing(obj_ram.bgm))
	{
		scr_warp(obj_ram.dest);
		wait_count = 0;	
		active = false;
	}
}