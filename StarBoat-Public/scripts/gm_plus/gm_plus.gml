function destroy_if_exists(argument0) 
{
	if (instance_exists(argument0)) {with (argument0) {instance_destroy();}}
}

function die(argument0)
{
	destroy_if_exists(argument0);	
}

function get_int(arg_str)
{
	return real(string_digits(get_string(arg_str, "")));
}

function ie(argument0)
{
	return instance_exists(argument0);	
}

function icd(arg_x, arg_y, arg_depth, arg_inst)
{
	return instance_create_depth(arg_x, arg_y, arg_depth, arg_inst);
}

function kcp(arg_key)
{
	return keyboard_check_pressed(arg_key);	
}

function kc(arg_key)
{
	return keyboard_check(arg_key);	
}

function get_str(arg_str)
{
	return get_string(arg_str, "");	
}

function vgh(arg_str)
{
	return variable_get_hash(arg_str);
}

function get_asset(arg_name)
{
	return asset_get_index(get_str(arg_name));	
}

function instance_create(arg_x, arg_y, arg_obj)
{
	return icd(arg_x, arg_y, -1, arg_obj);	
}

function string_set(arg_string, arg_char, arg_pos)
{
	var tmp_str = string_delete(arg_string, arg_pos, 1);
	return string_insert(arg_char, tmp_str, arg_pos);
}

function get_tile(arg_l, arg_x, arg_y)
{
	return tile_get_index(tilemap_get(arg_l, arg_x/16, arg_y/16));	
}

function new_array(arg_size, arg_fill)
{
	var tmp;
	tmp[arg_size-1] = arg_fill;
	for (var i = 0; i < arg_fill; i++)
	{
		tmp[i] = arg_fill;
	}
	return tmp;
}

function draw_txt(arg_x, arg_y, arg_txt)
{
	draw_text(arg_x, arg_y, string_hash_to_newline(arg_txt));	
}

function draw_rect(arg_x, arg_y, arg_x2, arg_y2)
{
	draw_rectangle(arg_x, arg_y, arg_x2, arg_y2, false);
}

function string_contains(arg_str, arg_sub)
{
	return (string_count(arg_sub, arg_str) > 0);	
}

function ASL(arg_val)
{
	//return ((arg_val | (arg_val << 1))) & 0xff;
	return (arg_val << 1) & 0xff;
}

function SBC(arg_val, arg_amt)
{
	arg_val += -arg_amt;
	if (arg_val < 0)
	{
		arg_val = 256 + arg_val;	
	}
	return arg_val;
}

function ROR(arg_val)
{
	return ((arg_val >> 1) | (arg_val << 7)) & 0xFF
}

function print_val(arg_val, arg_name)
{
	show_message(arg_name + ": " + string(arg_val));	
}

function show_message_int(arg_val)
{
	show_message(string(arg_val));
}

function instance_open(arg_obj)
{
	return icd(0, 0, -1, arg_obj);
}