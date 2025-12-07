function scr_new_John()
{
	scr_new_Defaults();
	enemy = false;
	var i = 0;
	name = "John";
	base_spr = spr_john;
	spr = spr_john;
	costume = 0;
	suit = -1;
	
	female = false;
	atk_snd = "~&1";
	
	lvl = 1;
	hp = 12; max_hp = hp;
	mp = 0; max_mp = mp;
	
	pp = 0;
	
	talk = 2;
	bear = 3;
	
	equip = [mic_None, dress_Casual, shoes_Barefoot, makeup_None];
	
	
	
}