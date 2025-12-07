if (animating)
{
	y += -1;
	if (ani_count < ani_wait) {ani_count++;}
	else {ani_count = 0; image_index = not image_index;}
}