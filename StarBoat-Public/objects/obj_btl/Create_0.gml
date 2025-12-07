thracia = obj_ram.thracia;
john = obj_ram.party[0];
name = john.name;
font = obj_ram.font;
bonus = obj_ram.bonus;
turn = 0;

attalk_lines = obj_ram.attalk_lines;
arrude_lines = obj_ram.arrude_lines;
line_managic = obj_ram.line_managic;

enemy_index = obj_ram.enemy;
data = obj_ram.enemies[enemy_index];
enemy = icd(112, 88, depth-1, obj_btl_enemy);
enemy.name = data[ENM_NAME];
enemy.hp = data[ENM_HP];
enemy.sprite_index = data[ENM_SPRITE];
enemy.atk = data[ENM_ATK];
enemy.def = data[ENM_DEF];
enemy.pop = data[ENM_PP];
enemy.money = data[ENM_MONEY];
if (thracia) {enemy.money = 0;}
enemy_move = 0;
enemy_targ = -1;

if (scr_item_has(item_EasyRing)) 
{with (enemy) {pop = pop * 2;}}

scottish = false;
curse = false;
foreign = false;
rosetta = false;

crit = false;

var tmp_stress = 0;
switch (data[ENM_STRESS])
{
	case 0: tmp_stress = scr_rng(1, 7); break;
	case 1: tmp_stress = scr_rng(4, 9); break;
	case 2: tmp_stress = scr_rng(7, 10); break;
	case 3: tmp_stress = scr_rng(11, 14); break;
	case 4: tmp_stress = scr_rng(15, 18); break;
	case 5: tmp_stress = scr_rng(24, 26); break;
	case 6: tmp_stress = 250; break;
}

//var tmp_stress = (data[ENM_STRESS] & 0xf) + 
/*var tmp_stress = (data[ENM_STRESS] & 0xf);
if (tmp_stress != 0xc)
{
	tmp_stress += 2 + (obj_ram.random_number & 0x7);
}
*/
enemy.stress = tmp_stress;
enemy.ecchi = data[ENM_ECCHI];
//enemy.ecchi = (data[ENM_STRESS] & 0xf0); 
enemy.hex = data[ENM_HEX];

var tmp_bck = bck_ow;
if (obj_ram.btl_bck != -1)
{
	tmp_bck = obj_ram.btl_bck;
	obj_ram.btl_bck = -1;
}
else
{
	switch (obj_ram.last_room)
	{
		case rm_city: tmp_bck = bck_city; break;
		case rm_tunnel: tmp_bck = bck_tunnel; break;
		case rm_building: 
		case rm_tower: 
		case rm_club: 
		case rm_sky: 
			tmp_bck = bck_building; 
			break;
		case rm_room:
			tmp_bck = -1;
			break;
	}
}
obj_btl_bck.sprite_index = tmp_bck;

scr_open(hud_dsp_stress);
scr_open(hud_dsp_card);

var tmp_msg = "";
state = 0;
scr_text_a(enemy.name);
switch (enemy_index)
{
	case enm_Scottish:
		if (obj_ram.bonus)
		{
			scr_bgm(music_DarkManagic);	
		}
		scottish = true;
		curse = true;
		enemy.visible = false;
		scr_open(obj_btl_scottish);
	case enm_SquiddyBar1:
	case enm_SquiddyBar2:
	case enm_SquiddyBar3:
	case enm_SquiddyBar4:
	case enm_SquiddyBar5:
	case enm_SquiddyBar6:
	case enm_SquiddyBar7:
		tmp_msg = 49;
		break;
	default:
		if (enemy_index == enm_Frenchie)
		or (enemy_index == enm_German)
		{
			foreign = true;
		}
		if (scr_pchance(1, 10))
		{
			state = 3;
			tmp_msg = 50;
		}
		else
		{
			tmp_msg = 51;
		}
		break;
}
scr_msg_sys(tmp_msg);
running = false;
reading = true;
dbg_x = obj_btl_bck.x;
dbg_y = obj_btl_bck.y+68;
shake = 0; shake_step = 0;
shaking = false;

learn = -1;
scr_check_weak();