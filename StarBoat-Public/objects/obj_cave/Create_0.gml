event_inherited();
scr_gate_set(rm_hands, 1, DOWN);
if (not bonus) 
{
	icd(x, y, depth, obj_blocker);
	instance_destroy();
}
image_alpha = 0;