event_inherited();
image_speed = 0.1;
warp = true;
if ((not bonus) or (not scr_flag(flag_MetDon))) {instance_destroy();}
else
{
	scr_gate_load(81);
}