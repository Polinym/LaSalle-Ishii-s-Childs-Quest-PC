function scr_port(arg_port)
{
	if (jpn)
	{
		switch (arg_port)
		{
			case spr_port_meg: 
			case spr_port_meg_happy:
				arg_port = spr_port_kiriko_red; 
				break;	
			case spr_port_meg_angry: 
			case spr_port_meg_sad: 
				arg_port = spr_port_kiriko_red_angry; 
				break;	
				
			case spr_port_liz: 
			case spr_port_liz_happy:
				arg_port = spr_port_rin_red; 
				break;	
			case spr_port_liz_angry: 
			case spr_port_liz_sad: 
				arg_port = spr_port_rin_red_angry; 
				break;	
			
			case spr_port_ely: 
			case spr_port_ely_happy:
				arg_port = spr_port_yuko_red; 
				break;	
			case spr_port_ely_angry: 
			case spr_port_ely_sad: 
				arg_port = spr_port_yuko_red_angry; 
				break;
			case spr_port_irish:
				arg_port = spr_port_irish_jpn;
				break;
			case spr_port_scottish:
				arg_port = spr_port_scottish_jpn;
				break;
		}
	}
	if (arg_port == -1)
	{
		with (obj_port) {instance_destroy();}
	}
	else
	{
		obj_ram.menu_port = arg_port;
		if (not ie(obj_port))
		{
			scr_open(obj_port);
		}
		else
		{
			obj_port.sprite_index = arg_port;	
		}
	}
}