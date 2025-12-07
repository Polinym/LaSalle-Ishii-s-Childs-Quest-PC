if (update)
{
    if (char != -1)
    {
    sprite_index = char.spr;
    visible = true;
    }
    update = false;
}
if (char != -1)
{
	if (char.stress > 89)
	{
		stress = not stress;	
	} else {stress = false;}
}


if (step_pause) {step_pause = false;}
else
{
switch (state)
{
    case "idle":
        ani_wait = 15;
        if (idle_animate) 
		{
			if (not obj_ram.paused)
			{
				//scr_plr_animate();
			}
		}
        break;
    case "move":
        if (sprinting) {ani_wait = 7;}
        else {ani_wait = 15;}
		//scr_plr_animate();
        if (x != next_x) || (y != next_y)
        {
            scr_dir_step(movespeed);
        }
        else
        {
            state = "idle";
        }
        break; 
    case "scoot":
        if (scoot_count < scoot_amount) 
        {
        scoot_count++;
        switch (scoot_dir)
        {
            case "down": y += 1; break;
            case "right": x += 1; break;
            case "up": y += -1; break;
            case "left": x += -1; break;
        }
        } else {state = "idle";}
        break;
}
}

