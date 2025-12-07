/// @description scr_state_input()
function scr_state_input() 
{
	var down_press = keyboard_check(vk_down);
	var up_press = keyboard_check(vk_up);
	var right_press = keyboard_check(vk_right);
	var left_press = keyboard_check(vk_left);
	var shift_press = keyboard_check(vk_shift);
	var space_pressed = keyboard_check_pressed(vk_space);
	var z_pressed = keyboard_check_pressed(ord("Z"));
	var x_pressed = keyboard_check_pressed(ord("X"));
	sprinting = false;
	movespeed = walk_movespeed;

	next_x = x; next_y = y;
	try_move = false;
	if (down_press)
	{
	    next_y = next_y + 16;
	    dir = "down";
	    try_move = true;
	} else
	if (up_press)
	{
	    next_y = next_y - 16;
	    dir = "up";
	    try_move = true;
	} else
	if (right_press)
	{
	    next_x = next_x + 16;
	    dir = "right";
	    try_move = true;
	} else
	if (left_press)
	{
	    next_x = next_x - 16;
	    dir = "left";
	    try_move = true;
	}

	if (shift_press)
	{
	    sprinting = true;
	    movespeed = sprint_movespeed;
	}

	if (try_move)
	{
		if (place_meeting(next_x, next_y, obj_border))
		{
			scr_msg(obj_ram.line_blocked);
			state = "talk";
		}
		else
		if (scr_freespace(next_x, next_y)) 
		{
		    state = "move";
			scr_dir_step(movespeed);
			scr_friends_move();
			var tmp_friend;
			for (var i = 0; i < 4; i++)
			{
				tmp_friend = friends[i];
				if (tmp_friend != -1) {with (tmp_friend) {scr_dir_step(movespeed);}}
			}
		}
	}
}
