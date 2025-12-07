if (ani_count < ani_wait) {ani_count++;}
else
{
	if (ani_frame < 3) {ani_frame++;}
	else
	{
		ani_frame = 0;
	}
	image_index = (ani_frame*2);
	ani_count = 0;	
}