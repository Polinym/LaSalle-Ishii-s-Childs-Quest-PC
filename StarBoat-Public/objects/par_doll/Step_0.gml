switch (orders)
{
	case "wait": ani = ANI_WAIT; break;
	case "win": ani = ANI_FLAP; break;
	case "spin": ani = ANI_SPIN; break;
	case "free":
		if (wait_count < wait_wait) {wait_count++;}
		else
		{
			ani = scr_rng(ANI_WAIT, ANI_SPIN);
			wait_count = 0;
			ani_count = ani_wait;
			ani_frame = 0;
		}
		break;
}
if (ani_count < ani_wait) {ani_count++;}
else
{
	switch (ani)
	{
		case ANI_WAIT: image_index = 0; break;
		case ANI_FLAP:
			if (image_index == 1) {image_index = 0;}
			else
			{
				image_index = 1;	
			}
			break;
		case ANI_SWOOSH:
			switch (ani_frame)
			{
				case 0: image_index = 2; break;	
				case 1: image_index = 0; break;	
				case 2: image_index = 3; break;	
				case 3: image_index = 0; break;	
			}
			if (ani_frame < 3) {ani_frame++;}
			else
			{
				ani_frame = 0;	
			}
			break;
		case ANI_WAIT_R: image_index = 4; break;
		case ANI_WAIT_L: image_index = 8; break;
		case ANI_WALK_R:
			image_index = 5+ani_frame;
			ani_frame = not ani_frame;
			break;
		case ANI_WALK_L:
			image_index = 9+ani_frame;
			ani_frame = not ani_frame;
			break;
		case  ANI_SPIN:
			switch (ani_frame)
			{
				case 0: image_index = 0; break;	
				case 1: image_index = 4; break;	
				case 2: image_index = 7; break;	
				case 3: image_index = 8; break;	
			}
			if (ani_frame < 3) {ani_frame++;}
			else
			{
				ani_frame = 0;
			}
			break;
	}
	ani_count = 0;
}