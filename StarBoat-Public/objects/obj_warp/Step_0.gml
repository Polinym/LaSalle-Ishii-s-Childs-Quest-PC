switch (state)
{
	case 0:
		if (image_alpha < 1) {image_alpha += fade_speed;}
		else 
		{
			scr_warp_unlock();
			room_goto(obj_ram.dest); state = 1;
			instance_destroy();
		}
		break;
	case 1:
		if (image_alpha > 0) {image_alpha += -fade_speed;}
		else {instance_destroy();}
		break;
}