function scr_screenshot()
{
	if (keyboard_check_pressed(vk_f12))
	{
	    for (var i = 0; i < 1024; i++)
	    {
			if (jpn) {var fname = "screenies/cq_" + string(i) + ".png";}
			else {var fname = "screenies/sw_" + string(i) + ".png";}
	    if (not file_exists(fname)) {screen_save(fname); break;}
	    }
	}
}