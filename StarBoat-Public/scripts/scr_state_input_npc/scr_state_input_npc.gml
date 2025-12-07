/// @description scr_state_input_npc()
function scr_state_input_npc() 
{
	move = false;
	if (update_wait)
	{
	    wait_count = 0;
	    wait_wait = wait_times[scr_rng(0, 3)];
	    update_wait = false;
	}
	if (wait_count < wait_wait) {wait_count++;}
	else
	{
	    if !(patrols)
	    {
	        dir = dirs[scr_rng(0, 3)];
	        scr_dir_update();
	        next_x = x; next_y = y;
	        switch (dir)
	        {
	        case "up": next_y += -16; break;
	        case "down": next_y += 16; break;
	        case "right": next_x += 16; break;
	        case "left": next_x += -16; break;
	        }
	        if (moves)
	        {
	        move = true;
	        update_wait = true;
	        }
	    }
	    wait_count = 0;
	}
	sprinting = false;
	movespeed = walk_movespeed;
	if (sprinting)
	{movespeed = sprint_movespeed;}

	if (move) {if (scr_freespace(next_x, next_y)) {state = "move";}}



}
